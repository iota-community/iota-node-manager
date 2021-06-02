import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubit/node_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/node_wrapper/widgets/app_bar.dart';
import 'package:hornet_node/app/node_wrapper/widgets/bottom_navigation_bar.dart';
import 'package:hornet_node/app/node_wrapper/widgets/drawer.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/pages/explorer/cubit/milestones_cubit.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';
import 'package:responsive_builder/responsive_builder.dart';

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
          create: (context) => getIt<NodeCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<HealthCubit>()..health(),
        ),
        BlocProvider(
          create: (context) => getIt<InfoCubit>()..info(),
        ),
        BlocProvider(
          create: (context) => getIt<MilestonesCubit>(),
        ),
      ],
      child: ResponsiveBuilder(builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
          return OrientationLayoutBuilder(
            portrait: (context) => Container(color: Colors.green),
            landscape: (context) => const _MobilePortraitWidget(),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
          return OrientationLayoutBuilder(
            portrait: (context) => Container(color: Colors.red),
            landscape: (context) => Container(color: Colors.pink),
          );
        }

        if (sizingInformation.deviceScreenType == DeviceScreenType.watch) {
          return OrientationLayoutBuilder(
            portrait: (context) => Container(color: Colors.yellow),
            landscape: (context) => Container(color: Colors.pink),
          );
        }
        return OrientationLayoutBuilder(
          portrait: (context) => const _MobilePortraitWidget(),
          landscape: (context) => Container(color: Colors.pink),
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
    return AutoTabsScaffold(
      appBarBuilder: (context, tabsRouter) {
        return CustomAppBar(
          tabsRouter: tabsRouter,
        );
      },
      drawer: const CustomDrawer(),
      routes: [
        const HomeRouter(),
        const AnalyticsRouter(),
        const PeersRouter(),
        const ExplorerRouter(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) {
        return CustomBottomNavigationBar(
          tabsRouter: tabsRouter,
        );
      },
    );
  }
}
