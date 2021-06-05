import 'dart:async';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:bloc/bloc.dart';
import 'package:hornet_node/app/app.dart';
import 'package:hornet_node/app/app_bloc_observer.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/main_common.dart';

void main() async {
  await mainCommon();
  WidgetsFlutterBinding.ensureInitialized();
  await configureDependencies('int');

  Bloc.observer = AppBlocObserver();
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  runZonedGuarded(
    () => runApp(const App()),
    (error, stackTrace) => log(error.toString(), stackTrace: stackTrace),
  );
}
