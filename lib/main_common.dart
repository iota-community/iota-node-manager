import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  await Hive.openBox(HiveBoxConstants.appBox);
}
