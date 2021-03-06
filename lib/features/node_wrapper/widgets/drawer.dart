import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/app/cubits/app_cubit/app_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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
              'assets/svg/manager_banner.svg',
              semanticsLabel: 'Manager Banner',
              color: ThemeHelper.of(context).blackOrWhite,
              fit: BoxFit.fitWidth,
            ),
          ),
          ListTile(
            title: const Text('Add new node'),
            onTap: () {
              AutoRouter.of(context).push(
                EditNodeRoute(),
              );
              Scaffold.of(context).openEndDrawer();
            },
          ),
          const Divider(
            height: 10,
          ),
          ListTile(
            title: const Text('Manage nodes'),
            onTap: () {
              AutoRouter.of(context).push(
                const NodeOverviewRoute(),
              );
              Scaffold.of(context).openEndDrawer();
            },
          ),
          const Divider(
            height: 10,
          ),
          ListTile(
            title: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Row(
                  children: [
                    const Text('Dark theme'),
                    Switch(
                      value: state.darkTheme,
                      onChanged: (val) {
                        BlocProvider.of<AppCubit>(context).themeChanged();
                      },
                    ),
                  ],
                );
              },
            ),
          ),
          ListTile(
            title: const Text('Help'),
            onTap: () async {
              const _url =
                  'https://github.com/pauli2406/iota_hornet_mobile_app#hornet-node-mobile-app';
              await canLaunch(_url)
                  ? await launch(_url)
                  : await Sentry.captureMessage('Could not open help Url');
              Scaffold.of(context).openEndDrawer();
            },
          ),
        ],
      ),
    );
  }
}
