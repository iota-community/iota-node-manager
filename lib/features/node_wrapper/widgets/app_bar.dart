import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/health_cubit/health_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/info_cubit/info_cubit.dart';
import 'package:hornet_node/features/node_wrapper/cubits/milestones_cubit/milestones_cubit.dart';
import 'package:hornet_node/repository/moor/database.dart';

import 'health_indicator.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, required this.tabsRouter}) : super(key: key);

  final TabsRouter tabsRouter;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BlocBuilder<NodeCubit, NodeState>(
            builder: (context, state) {
              return DropdownButton(
                value: state.selectedNode?.id.toString(),
                items: [
                  ...state.nodes.map(
                    (value) => DropdownMenuItem(
                      value: value.id.toString(),
                      child: SizedBox(
                        width: 150,
                        child: Text(
                          value.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 17,
                          ),
                          textAlign: TextAlign.center,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ),
                ],
                underline: const SizedBox(
                  height: 0,
                ),
                onChanged: (id) async {
                  var selectedNodeUuid = int.parse(id as String);
                  var currentlySelectedNode =
                      BlocProvider.of<NodeCubit>(context).state.selectedNode;
                  if (currentlySelectedNode?.id != selectedNodeUuid) {
                    await BlocProvider.of<NodeCubit>(context)
                        .selectedNodeChanged(selectedNodeUuid);
                    await BlocProvider.of<HealthCubit>(context).health();
                    var info = await BlocProvider.of<InfoCubit>(context).info();
                    await BlocProvider.of<MilestonesCubit>(context)
                        .milestones(info!.data.latestMilestoneIndex);
                  }
                },
              );
            },
          ),
        ],
      ),
      actions: const [
        HealthIndicator(),
      ],
    );
  }

  List<DropdownMenuItem<String>> buildDropdownMenuItems(List<Node> nodes) {
    var items = <DropdownMenuItem<String>>[];
    for (var node in nodes) {
      items.add(
        DropdownMenuItem(
          value: node.id.toString(),
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
