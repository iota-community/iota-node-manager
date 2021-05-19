import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/l10n/l10n.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

class AppWrapperPage extends StatelessWidget {
  const AppWrapperPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HealthCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<InfoCubit>(),
        ),
      ],
      child: AutoTabsScaffold(
        appBarBuilder: (context, tabsRouter) {
          return AppBar(
            title: Text(context.topRoute.name),
            leading: const AutoBackButton(),
          );
        },
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
