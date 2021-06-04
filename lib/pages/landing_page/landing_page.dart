import 'package:flutter/material.dart';
import 'package:hornet_node/pages/add_node/view/add_node_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AddNodePage(),
    );
  }
}
