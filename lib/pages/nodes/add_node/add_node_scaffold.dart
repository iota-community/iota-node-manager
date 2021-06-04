import 'package:flutter/material.dart';
import 'package:hornet_node/pages/add_node/view/add_node_page.dart';

class AddNodeScaffoldPage extends StatelessWidget {
  const AddNodeScaffoldPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const AddNodePage(),
    );
  }
}
