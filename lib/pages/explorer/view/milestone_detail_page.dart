import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/repository/node_repository.dart';

class MileStoneDetailPage extends StatefulWidget {
  const MileStoneDetailPage({
    Key? key,
    @PathParam('messageId') required this.messageId,
  }) : super(key: key);

  final String messageId;

  @override
  _MileStoneDetailPageState createState() => _MileStoneDetailPageState();
}

class _MileStoneDetailPageState extends State<MileStoneDetailPage> {
  late final HornetNodeRestClient _hornetNodeRestClient;
  late NodeRepository _nodeRepository;

  @override
  void initState() {
    super.initState();
    _hornetNodeRestClient = getIt<HornetNodeRestClient>();
    _nodeRepository = getIt<NodeRepository>();
  }

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
          color: ThemeHelper.of(context).blackOrWhite,
        ),
      ),
      body: Column(
        children: [
          FutureBuilder(
            future: _hornetNodeRestClient.message(
                _nodeRepository.getSelectedNode()!.url, widget.messageId),
            builder: (context, AsyncSnapshot<Message> snapshot) {
              if (snapshot.hasData) {
                var messageData = snapshot.data!.data;
                return Container(
                  padding: const EdgeInsets.all(30),
                  child: Card(
                    child: Column(
                      children: [
                        const Text('Message:'),
                        Text('Id:${widget.messageId}'),
                        ...messageData.parentMessageIds
                            .map((value) => Text(value)),
                        Text('Nonce: ${messageData.nonce}'),
                      ],
                    ),
                  ),
                );
              } else {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
            },
          ),
        ],
      ),
    );
  }
}
