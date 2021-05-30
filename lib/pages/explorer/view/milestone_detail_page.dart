import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

class MileStoneDetailPage extends StatelessWidget {
  const MileStoneDetailPage({
    Key? key,
    @PathParam('messageId') required this.messageId,
  }) : super(key: key);

  final String messageId;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // const Padding(
            //   padding: EdgeInsets.all(8.0),
            //   child: Text(
            //     'Node:',
            //     style: TextStyle(fontSize: 17),
            //   ),
            // ),
            // BlocBuilder<NodeCubit, NodeState>(
            //   buildWhen: (previous, current) =>
            //       previous.selectedNode.uuid != current.selectedNode.uuid,
            //   builder: (context, state) {
            //     return DropdownButton(
            //       value: state.selectedNode.uuid,
            //       items: buildDropdownMenuItems(state.nodes),
            //       underline: const SizedBox(
            //         height: 0,
            //       ),
            //       onChanged: (uuid) async {
            //         var selectedNodeUuid = uuid as String;
            //         var currentlySelectedNode =
            //             BlocProvider.of<NodeCubit>(context).state.selectedNode;
            //         if (currentlySelectedNode.uuid != selectedNodeUuid) {
            //           await BlocProvider.of<NodeCubit>(context)
            //               .selectedNodeChanged(selectedNodeUuid);
            //           await BlocProvider.of<HealthCubit>(context).health();
            //           var info =
            //               await BlocProvider.of<InfoCubit>(context).info();
            //           await BlocProvider.of<MilestonesCubit>(context)
            //               .milestones(info!.data.latestMilestoneIndex);
            //         }
            //       },
            //     );
            //   },
            // ),
          ],
        ),
        leading: AutoBackButton(
          color: Theme.of(context).brightness == Brightness.dark
              ? Colors.white
              : Colors.black,
        ),
      ),
      body: Container(
        child: Text(messageId),
      ),
    );
  }
}
