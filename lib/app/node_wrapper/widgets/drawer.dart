import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Theme.of(context).accentColor,
            ),
            child: SvgPicture.asset(
              'assets/svg/hornet_banner.svg',
              semanticsLabel: 'Hornet Banner',
              color: ThemeHelper.of(context).blackOrWhite,
              fit: BoxFit.fitHeight,
            ),
          ),
          ListTile(
            title: const Text('Add new node'),
            onTap: () {
              AutoRouter.of(context).push(
                EditNodeRoute(),
              );
            },
          ),
          const Divider(
            height: 10,
          ),
          ListTile(
            title: const Text('Manage nodes'),
            onTap: () {
              AutoRouter.of(context).push(
                const NodesRoute(),
              );
            },
          ),
          const Divider(
            height: 10,
          ),
          ListTile(
            title: ValueListenableBuilder(
              valueListenable:
                  Hive.box(HiveBoxConstants.darkModeBox).listenable(),
              builder: (BuildContext context, Box box, Widget? child) {
                bool darkMode = box.get('darkMode', defaultValue: false);
                return Row(
                  children: [
                    const Text('Dark theme'),
                    Switch(
                      value: darkMode,
                      onChanged: (val) {
                        box.put('darkMode', !darkMode);
                      },
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
