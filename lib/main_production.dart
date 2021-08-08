import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:hornet_node/app/app.dart';
import 'package:hornet_node/app/app_bloc_observer.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/env.dart';
import 'package:hornet_node/main_common.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

import 'main_common.dart';

void main() async {
  await mainCommon();
  await configureDependencies('prod');

  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  await SentryFlutter.init(
    (options) {
      options
        ..dsn = Env.sentryDns
        ..debug = false
        ..beforeSend = beforeSend
        ..environment = 'production';
    },
    appRunner: () => runZonedGuarded(
      () => runApp(
        const App(),
      ),
      (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
    ),
  );
}
