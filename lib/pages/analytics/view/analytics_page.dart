import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/main_development.dart';

class AnalyticsPage extends StatelessWidget {
  const AnalyticsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box(darkModeBox).listenable(),
      builder: (BuildContext context, Box box, Widget? child) {
        bool darkMode = box.get('darkMode', defaultValue: false);
        return Center(
          heightFactor: 2,
          child: Switch(
            value: darkMode,
            onChanged: (val) {
              box.put('darkMode', !darkMode);
            },
          ),
        );
      },
    );
  }
}
