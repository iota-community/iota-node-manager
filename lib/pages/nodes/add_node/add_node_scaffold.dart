import 'package:flutter/material.dart';
import 'package:hornet_node/app/initial_node/initial_node.dart';

class AddNodeScaffoldPage extends StatelessWidget {
  const AddNodeScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const InitialNodePage(),
    );
  }
}
