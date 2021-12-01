import 'package:hornet_node/app/app.dart';
import 'package:hornet_node/bootstrap.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/main_common.dart';

import 'main_common.dart';

void main() async {
  await mainCommon();
  await configureDependencies('dev');

  await bootstrap(() => const App(), 'development');
}
