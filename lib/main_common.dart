import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/configureDependencies.dart';

const darkModeBox = 'darkMode';

Future<void> mainCommon() async {
  await Hive.initFlutter();
  await Hive.openBox(darkModeBox);

  configureDependencies('dev');
}
