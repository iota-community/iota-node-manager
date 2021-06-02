import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/pages/add_node/view/add_node_page.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:auto_route/auto_route.dart';

class AppWrapperPage extends StatefulWidget {
  const AppWrapperPage({Key? key}) : super(key: key);

  @override
  _AppWrapperPageState createState() => _AppWrapperPageState();
}

class _AppWrapperPageState extends State<AppWrapperPage> {
  @override
  void initState() {
    // deleteTestData();

    // fillTestData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final nodeRepository = getIt<NodeRepository>();
    final nodes = nodeRepository.getNodes();
    final selectedNode = nodeRepository.getSelectedNode();

    if (nodes.isEmpty) {
      return const AddNodePage();
    } else {
      if (selectedNode == null || selectedNode.url.isEmpty) {
        return Scaffold(
          body: Container(
            child: const Center(
              child: Text('No Node Selected'),
            ),
          ),
        );
      } else {
        scheduleMicrotask(
            () => context.router.replace(const NodeWrapperRoute()));
        return Container();
      }
    }
  }

  void fillTestData() {
    getIt<NodeRepository>()
      ..addNode(HornetNode(
          'Chikko Node', 'https://iota.mss-solutions.de', '123456789'));
    // _repository.setSelectedNode(HornetNode(
    //     'Chikko Node', 'https://iota.mss-solutions.de', '123456789'));

    // Hive.box<List>(HiveBoxConstants.selectedNodeBox)
    //   ..put('nodes', [HornetNode('Mpoch Node', 'https://iota.devster-hh.de')]);
  }

  void deleteTestData() {
    Hive.box<List>(HiveBoxConstants.nodesBox)..deleteFromDisk();
    // ..deleteAll(['nodes']);

    Hive.box<HornetNode>(HiveBoxConstants.selectedNodeBox)..deleteFromDisk();
    // ..deleteAll(['selectedNode']);
  }
}
