import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/message/children/message_children.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:flutter/gestures.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/models/hornet/message/children/message_children_data.dart';
import 'package:hornet_node/models/hornet/message/message_data.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata_data.dart';
import 'package:hornet_node/models/hornet/message/payload.dart';

part 'widgets/child_message_widget.dart';
part 'widgets/column_tile_text_widget.dart';
part 'widgets/message_card_widget.dart';
part 'widgets/message_widget.dart';
part 'widgets/meta_data_message_widget.dart';
part 'widgets/milestone_payload_widget.dart';

class MessagePage extends StatefulWidget {
  const MessagePage({
    Key? key,
    @PathParam('messageId') required this.messageId,
  }) : super(key: key);

  final String messageId;

  @override
  _MessagePageState createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
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
    return StreamBuilder<Node?>(
        stream: _nodeRepository.getSelectedNodeStream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var selectedNode = snapshot.data!;
            return Scaffold(
              appBar: AppBar(
                leading: AutoBackButton(
                  color: ThemeHelper.of(context).blackOrWhite,
                ),
              ),
              body: ListView(
                shrinkWrap: true,
                children: [
                  FutureBuilder(
                    future: _hornetNodeRestClient.message(selectedNode.url,
                        'Bearer ${selectedNode.jwtToken!}', widget.messageId),
                    builder: (context, AsyncSnapshot<Message> snapshot) {
                      if (snapshot.hasData) {
                        var messageData = snapshot.data!.data;
                        return Column(
                          children: [
                            _MessageWidget(
                                messageId: widget.messageId,
                                messageData: messageData),
                            messageData.payload?.type == 1
                                ? _MilestonePayloadWidget(
                                    messageId: widget.messageId,
                                    payload: messageData.payload,
                                  )
                                : const SizedBox(),
                          ],
                        );
                      } else {
                        return const Center(
                          child: CircularProgressIndicator(),
                        );
                      }
                    },
                  ),
                  FutureBuilder(
                    future: _hornetNodeRestClient.messageChildren(
                        selectedNode.url,
                        'Bearer ${selectedNode.jwtToken!}',
                        widget.messageId),
                    builder:
                        (context, AsyncSnapshot<MessageChildren> snapshot) {
                      if (snapshot.hasData) {
                        var childrenData = snapshot.data!.data;
                        return Column(
                          children: [
                            _ChildMessageWidget(
                              childrenData: childrenData,
                            ),
                          ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                  FutureBuilder(
                    future: _hornetNodeRestClient.messageMetadata(
                        selectedNode.url,
                        'Bearer ${selectedNode.jwtToken!}',
                        widget.messageId),
                    builder:
                        (context, AsyncSnapshot<MessageMetadata> snapshot) {
                      if (snapshot.hasData) {
                        var metaData = snapshot.data!.data;
                        return Column(
                          children: [
                            _MetadataMessageWidget(
                              metadata: metaData,
                            )
                          ],
                        );
                      } else {
                        return const SizedBox();
                      }
                    },
                  ),
                ],
              ),
            );
          } else {
            return const Center(
              child: Text('Error no node is selected'),
            );
          }
        });
  }
}
