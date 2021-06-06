import 'package:get_it/get_it.dart';
import 'package:hornet_node/configure_dependencies.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies(String env) async =>
    $initGetIt(getIt, environment: env);
