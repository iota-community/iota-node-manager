import 'package:get_it/get_it.dart';
import 'package:hornet_node/configureDependencies.config.dart';
import 'package:injectable/injectable.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
void configureDependencies(String env) => $initGetIt(getIt, environment: env);
