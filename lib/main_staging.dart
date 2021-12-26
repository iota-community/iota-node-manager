
import 'package:hornet_node/app/app.dart';
import 'package:hornet_node/bootstrap.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/main_common.dart';

void main() async {
  await mainCommon();
  await configureDependencies('int');
  await bootstrap(() => const App(), 'staging');
}
