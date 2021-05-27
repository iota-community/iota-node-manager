import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';
import 'package:hornet_node/repository/node_repository.dart';

class NodeWrapperPage extends StatefulWidget {
  const NodeWrapperPage({Key? key}) : super(key: key);

  @override
  _NodeWrapperPageState createState() => _NodeWrapperPageState();
}

class _NodeWrapperPageState extends State<NodeWrapperPage> {
  late NodeRepository _nodeRepository;
  late HornetNode _value;
  List<DropdownMenuItem<HornetNode>> items = [];

  @override
  void initState() {
    _nodeRepository = getIt<NodeRepository>();
    var _nodes = _nodeRepository.getNodes();
    var _selectedNode = _nodeRepository.getSelectedNode();

    buildDropdownMenuItems(_nodes);
    _value = _nodes.firstWhere(
        (HornetNode node) => node.uuid == _selectedNode?.uuid,
        orElse: () => _nodes[0]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
            title: Row(
              // mainAxisSize: MainAxisSize.min,
              // mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Node:',
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                DropdownButton(
                  value: _value,
                  items: items,
                  underline: const SizedBox(
                    height: 0,
                  ),
                  onChanged: (value) async {
                    var selectedNode = value as HornetNode;
                    setState(
                      () {
                        _value = selectedNode;
                      },
                    );
                    await _nodeRepository.setSelectedNode(selectedNode);
                    await BlocProvider.of<HealthCubit>(context).health();
                    await BlocProvider.of<InfoCubit>(context).info();
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

  List<DropdownMenuItem<HornetNode>> buildDropdownMenuItems(
      List<HornetNode> nodes) {
    for (var node in nodes) {
      items.add(
        DropdownMenuItem(
          value: node,
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
        return state.map(
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
