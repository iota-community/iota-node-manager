import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';

Future<void> mainCommon() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  Hive.registerAdapter(HornetNodeAdapter());

  await Hive.openBox(HiveBoxConstants.darkModeBox);
  await Hive.openBox<List>(HiveBoxConstants.nodesBox);
  await Hive.openBox<HornetNode>(HiveBoxConstants.selectedNodeBox);
}
