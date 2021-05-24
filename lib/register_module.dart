import 'package:hive/hive.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:injectable/injectable.dart';
import 'package:dio/dio.dart';

@module
abstract class RegisterModule {
  @lazySingleton
  Dio dio() => Dio();
}

@module
abstract class HiveModule {
  @Named(HiveBoxConstants.nodesBox)
  @lazySingleton
  Box<List> get nodesBox => Hive.box<List>(HiveBoxConstants.nodesBox);

  @Named(HiveBoxConstants.selectedNodeBox)
  @lazySingleton
  Box<HornetNode> get selectedNodeBox =>
      Hive.box<HornetNode>(HiveBoxConstants.selectedNodeBox);

  @Named(HiveBoxConstants.darkModeBox)
  @lazySingleton
  Box get darkModeBox => Hive.box(HiveBoxConstants.darkModeBox);
}
