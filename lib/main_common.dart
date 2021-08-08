import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox(HiveBoxConstants.appBox);
}

SentryEvent beforeSend(SentryEvent event, {dynamic hint}) {
  event = event.copyWith(serverName: null);
  return event;
}
