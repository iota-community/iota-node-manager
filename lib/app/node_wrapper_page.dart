import 'package:auto_route/auto_route.dart' hide AutoBackButton;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/app/cubit/node_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

class NodeWrapperPage extends StatelessWidget {
  const NodeWrapperPage({Key? key}) : super(key: key);

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
      ],
      child: AutoTabsScaffold(
        appBarBuilder: (context, tabsRouter) {
          return AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                // const Padding(
                //   padding: EdgeInsets.all(8.0),
                //   child: Text(
                //     'Node:',
                //     style: TextStyle(fontSize: 17),
                //   ),
                // ),
                BlocBuilder<NodeCubit, NodeState>(
                  buildWhen: (previous, current) =>
                      previous.selectedNode.uuid != current.selectedNode.uuid,
                  builder: (context, state) {
                    return DropdownButton(
                      value: state.selectedNode.uuid,
                      items: buildDropdownMenuItems(state.nodes),
                      underline: const SizedBox(
                        height: 0,
                      ),
                      onChanged: (uuid) async {
                        var selectedNodeUuid = uuid as String;
                        var currentlySelectedNode =
                            BlocProvider.of<NodeCubit>(context)
                                .state
                                .selectedNode;
                        if (currentlySelectedNode.uuid != selectedNodeUuid) {
                          await BlocProvider.of<NodeCubit>(context)
                              .selectedNodeChanged(selectedNodeUuid);
                          await BlocProvider.of<HealthCubit>(context).health();
                          await BlocProvider.of<InfoCubit>(context).info();
                        }
                      },
                    );
                  },
                ),
              ],
            ),
            actions: [
              const _HealthIndicator(),
            ],
            leading: const AutoBackButton(),
          );
        },
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                ),
                child: SvgPicture.asset(
                  'assets/svg/hornet_banner.svg',
                  semanticsLabel: 'Hornet Banner',
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.white
                      : Colors.black,
                  fit: BoxFit.fitHeight,
                ),
              ),
              ListTile(
                title: const Text('Manage Nodes'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
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

  List<DropdownMenuItem<String>> buildDropdownMenuItems(
      List<HornetNode> nodes) {
    var items = <DropdownMenuItem<String>>[];
    for (var node in nodes) {
      items.add(
        DropdownMenuItem(
          value: node.uuid,
          child: SizedBox(
            width: 150,
            child: Text(
              node.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
              ),
              textAlign: TextAlign.center,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
      );
    }
    return items;
  }
}

class _HealthIndicator extends StatelessWidget {
  const _HealthIndicator({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HealthCubit, HealthState>(
      builder: (context, state) {
        return AnimatedSwitcher(
          duration: const Duration(milliseconds: 350),
          child: state.map(
            initial: (_) {
              BlocProvider.of<HealthCubit>(context).health();
              return const SizedBox();
            },
            loadInProgress: (_) => const Center(
              child: Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: CircularProgressIndicator(),
              ),
            ),
            loadSuccess: (value) =>
                _CircleIndicator(healthy: value.statusCode == 200),
            loadFailure: (_) => const _CircleIndicator(healthy: false),
          ),
        );
      },
    );
  }
}

class _CircleIndicator extends StatelessWidget {
  const _CircleIndicator({Key? key, required this.healthy}) : super(key: key);

  final bool healthy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10.0),
      child: Container(
        width: 20,
        height: 20,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color:
              healthy ? Colors.green.withAlpha(100) : Colors.red.withAlpha(100),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: healthy ? const Color(0xFF50B86C) : Colors.red,
            ),
          ),
        ),
      ),
    );
  }
}

class AutoBackButton extends StatefulWidget {
  const AutoBackButton({Key? key, this.color}) : super(key: key);

  final Color? color;

  @override
  _AutoBackButtonState createState() => _AutoBackButtonState();
}

class _AutoBackButtonState extends State<AutoBackButton> {
  @override
  Widget build(BuildContext context) {
    final scope = RouterScope.of(context);
    if (scope.controller.canPopSelfOrChildren) {
      return BackButton(
        color: widget.color,
        onPressed: scope.controller.popTop,
      );
    }
    return IconButton(
        icon: Icon(
          Icons.list,
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
        onPressed: () => Scaffold.of(context).openDrawer());
  }
}
