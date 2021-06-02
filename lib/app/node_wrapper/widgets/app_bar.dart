import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubit/node_cubit.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/pages/explorer/cubit/milestones_cubit.dart';
import 'package:hornet_node/pages/home/cubit/health_cubit.dart';
import 'package:hornet_node/pages/home/cubit/info_cubit.dart';

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
                      BlocProvider.of<NodeCubit>(context).state.selectedNode;
                  if (currentlySelectedNode.uuid != selectedNodeUuid) {
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
      actions: [
        const HealthIndicator(),
      ],
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
