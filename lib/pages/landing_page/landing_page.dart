import 'package:flutter/material.dart';
import 'package:hornet_node/app/initial_node/initial_node.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: InitialNodePage(),
    );
  }
}
