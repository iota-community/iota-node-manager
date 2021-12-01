import 'dart:async';

import 'package:background_fetch/background_fetch.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:uuid/uuid.dart';

final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
    FlutterLocalNotificationsPlugin();

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox(HiveBoxConstants.appBox);
  //await configureScheduledTasks();

  await initNotification();
  await initPlatformState();

  await BackgroundFetch.registerHeadlessTask(backgroundFetchHeadlessTask);
}

SentryEvent beforeSend(SentryEvent event, {dynamic hint}) {
  event = event.copyWith(serverName: null);
  return event;
}

Future<void> configureScheduledTasks() async {
  await BackgroundFetch.configure(
      BackgroundFetchConfig(
        minimumFetchInterval: 15,
        stopOnTerminate: false,
        startOnBoot: true,
        enableHeadless: true,
      ), (String taskId) async {
    await nodeHealthCheck();
    BackgroundFetch.finish(taskId);
  }, (String taskId) async {
    await Sentry.captureMessage('[BackgroundFetch] - TIMEOUT taskId: $taskId');
    BackgroundFetch.finish(taskId);
  });

  await BackgroundFetch.scheduleTask(
    TaskConfig(
        taskId: 'com.transistorsoft.checkHealth',
        delay: 5000,
        periodic: true,
        enableHeadless: true),
  );
}

void backgroundFetchHeadlessTask(HeadlessTask task) async {
  var taskId = task.taskId;
  var timeout = task.timeout;
  if (timeout) {
    await Sentry.captureMessage(
        '[BackgroundFetch] Headless task timed-out: $taskId');
    BackgroundFetch.finish(taskId);
    return;
  }
  await nodeHealthCheck();
  BackgroundFetch.finish(taskId);
}

Future<void> initNotification() async {
  var flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  const initializationSettingsAndroid =
      AndroidInitializationSettings('app_icon');
  const initializationSettingsIOS = IOSInitializationSettings();
  const initializationSettingsMacOS = MacOSInitializationSettings();
  const initializationSettings = InitializationSettings(
      android: initializationSettingsAndroid,
      iOS: initializationSettingsIOS,
      macOS: initializationSettingsMacOS);
  await flutterLocalNotificationsPlugin.initialize(initializationSettings,
      onSelectNotification: selectNotification);
}

Future selectNotification(String? payload) async {
  if (payload != null) {
    debugPrint('notification payload: $payload');
  }
  //TODO navigate to problematic node
}

Future<void> initPlatformState() async {
  try {
    await BackgroundFetch.configure(
        BackgroundFetchConfig(
          minimumFetchInterval: 15,
          forceAlarmManager: false,
          stopOnTerminate: false,
          startOnBoot: true,
          enableHeadless: true,
          requiresBatteryNotLow: false,
          requiresCharging: false,
          requiresStorageNotLow: false,
          requiresDeviceIdle: false,
          requiredNetworkType: NetworkType.ANY,
        ),
        _onBackgroundFetch,
        _onBackgroundFetchTimeout);
  } catch (e) {
    await Sentry.captureException(
      e,
      stackTrace: e,
    );
  }
}

void _onBackgroundFetch(String taskId) async {
  await nodeHealthCheck();
  BackgroundFetch.finish(taskId);
}

void _onBackgroundFetchTimeout(String taskId) async {
  await Sentry.captureMessage('[BackgroundFetch] TIMEOUT: $taskId');
  BackgroundFetch.finish(taskId);
}

Future<void> showNotification(String text) async {
  var androidPlatformChannelSpecifics = AndroidNotificationDetails(
      const Uuid().v4(),
      'node_notifier',
      'Notifies the user if something is wrong with his nodes',
      importance: Importance.max,
      priority: Priority.high);
  var platformChannelSpecifics =
      NotificationDetails(android: androidPlatformChannelSpecifics);
  await flutterLocalNotificationsPlugin.show(
      0, 'Your node seems to be unhealthy...', text, platformChannelSpecifics);
}

Future<void> nodeHealthCheck() async {
  var nodeRepository = getIt<NodeRepository>();
  var nodes = await nodeRepository.getNodes();
  for (var node in nodes) {
    if (!await isNodeHealthy(node)) {
      await notifyUserIfNodeIsUnhealthy(node);
    }
  }
}

Future<bool> isNodeHealthy(Node node) async {
  try {
    var response = await getIt<HornetNodeRestClient>()
        .health(node.url, 'Bearer ${node.jwtToken ?? ''}');
    if (response.response.statusCode != 200) {
      return false;
    } else {
      return true;
    }
  } catch (e) {
    return false;
  }
}

Future<void> notifyUserIfNodeIsUnhealthy(Node node) async {
  await showNotification(node.name);
}
