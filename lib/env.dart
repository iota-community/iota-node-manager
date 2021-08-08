import 'package:envify/envify.dart';
import 'package:flutter/foundation.dart';

part 'env.g.dart';

@Envify(path: kReleaseMode ? '.env.production' : '.env.development')
abstract class Env {
  static const String title = _Env.title;
  static const String environment = _Env.environment;
  static const String sentryDns = _Env.sentryDns;
}
