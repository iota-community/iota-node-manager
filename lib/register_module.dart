import 'package:dio/dio.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/interceptor/sentry_interceptor.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:rx_shared_preferences/rx_shared_preferences.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio()..interceptors.add(SentryInterceptor());

  @lazySingleton
  RxSharedPreferences get prefs => RxSharedPreferences.getInstance();

  @lazySingleton
  HornetNodeDB get database => HornetNodeDB();
}

@module
abstract class HiveModule {
  @Named(HiveBoxConstants.appBox)
  @lazySingleton
  Box get darkModeBox => Hive.box(HiveBoxConstants.appBox);
}
