import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio();
}
