import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/info_cubit/info_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/milestones_cubit/milestones_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'widgets/app_bar.dart';
import 'widgets/bottom_navigation_bar.dart';
import 'widgets/drawer.dart';

class NodeWrapperPage extends StatefulWidget {
  const NodeWrapperPage({Key? key}) : super(key: key);

  @override
  _NodeWrapperPageState createState() => _NodeWrapperPageState();
}

class _NodeWrapperPageState extends State<NodeWrapperPage> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<HealthCubit>()..health(),
        ),
        BlocProvider(
          create: (context) => getIt<InfoCubit>()..info(),
        ),
        BlocProvider(
          create: (context) => getIt<MilestonesCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<PeersCubit>()..peers(),
        ),
      ],
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return OrientationLayoutBuilder(
            portrait: (context) => const _MobilePortraitWidget(),
            landscape: (context) => const _MobilePortraitWidget(),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => const _MobilePortraitWidget(),
            landscape: (context) => const _MobilePortraitWidget(),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return OrientationLayoutBuilder(
            portrait: (context) => const _MobilePortraitWidget(),
            landscape: (context) => const _MobilePortraitWidget(),
          );
        }
        return OrientationLayoutBuilder(
          portrait: (context) => const _MobilePortraitWidget(),
          landscape: (context) => const _MobilePortraitWidget(),
        );
      }),
    );
  }
}

class _MobilePortraitWidget extends StatelessWidget {
  const _MobilePortraitWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NodeCubit, NodeState>(
      builder: (context, state) {
        var routes = const [
          HomeRouter(),
          ExplorerRouter(),
          PeersRouter(),
        ];
        return AutoTabsScaffold(
          appBarBuilder: (context, tabsRouter) {
            return CustomAppBar(
              tabsRouter: tabsRouter,
            );
          },
          drawerEnableOpenDragGesture: false,
          drawer: const CustomDrawer(),
          routes: routes,
          bottomNavigationBuilder: (_, tabsRouter) {
            return CustomBottomNavigationBar(
              tabsRouter: tabsRouter,
            );
          },
        );
      },
    );
  }
}
