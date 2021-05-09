import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/l10n/l10n.dart';

class AppWrapperPage extends StatelessWidget {
  const AppWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(title: Text(l10n.counterAppBarTitle)),
      body: AutoTabsScaffold(
        routes: [
          const HomeRouter(),
          const AnalyticsRouter(),
          const PeersRouter(),
          const ExplorerRouter(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: [
              const BottomNavigationBarItem(
                icon: Icon(
                  Icons.home_outlined,
                ),
                label: 'Home',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.analytics_outlined),
                label: 'Analytics',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.account_tree_outlined),
                label: 'Peers',
              ),
              const BottomNavigationBarItem(
                icon: Icon(Icons.explore_outlined),
                label: 'Explorer',
              ),
            ],
          );
        },
      ),
    );
  }
}
