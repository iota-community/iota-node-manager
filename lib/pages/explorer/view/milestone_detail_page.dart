import 'package:auto_route/auto_route.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/message/children/message_children.dart';
import 'package:hornet_node/models/hornet/message/children/message_children_data.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/models/hornet/message/message_data.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata_data.dart';
import 'package:hornet_node/models/hornet/message/payload.dart';
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
    var selectedNode = _nodeRepository.getSelectedNode()!;
    return Scaffold(
      appBar: AppBar(
        leading: AutoBackButton(
          color: ThemeHelper.of(context).blackOrWhite,
        ),
      ),
      body: FutureBuilder(
        future: Future.wait([
          _hornetNodeRestClient.message(selectedNode.url, widget.messageId),
          _hornetNodeRestClient.messageChildren(
              selectedNode.url, widget.messageId),
          _hornetNodeRestClient.messageMetadata(
              selectedNode.url, widget.messageId),
        ]),
        builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
          if (snapshot.hasData) {
            var messageData = (snapshot.data![0] as Message).data;
            var childrenData = (snapshot.data![1] as MessageChildren).data;
            var metaData = (snapshot.data![2] as MessageMetadata).data;
            return ListView(
              shrinkWrap: true,
              children: [
                _MessageWidget(
                    messageId: widget.messageId, messageData: messageData),
                _MilestonePayloadWidget(
                  messageId: widget.messageId,
                  payload: messageData.payload,
                ),
                _ChildMessageWidget(
                  childrenData: childrenData,
                ),
                _MetadataMessageWidget(
                  metadata: metaData,
                )
              ],
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class _MessageWidget extends StatelessWidget {
  const _MessageWidget({
    Key? key,
    required this.messageId,
    required this.messageData,
  }) : super(key: key);

  final String messageId;
  final MessageData messageData;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      title: 'Message',
      children: [
        _ColumTitleTextWidget(
          caption: 'Id',
          text: messageId,
        ),
        ...messageData.parentMessageIds.map(
          (value) {
            var idx = messageData.parentMessageIds.indexOf(value) + 1;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'PARENT MESSAGE $idx',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  RichText(
                    text: TextSpan(
                        text: value,
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // TODO Navigate to nested message page
                          }),
                  ),
                ],
              ),
            );
          },
        ),
        _ColumTitleTextWidget(
          caption: 'NONCE',
          text: messageData.nonce,
        ),
      ],
    );
  }
}

class _MilestonePayloadWidget extends StatelessWidget {
  const _MilestonePayloadWidget({
    Key? key,
    required this.messageId,
    required this.payload,
  }) : super(key: key);

  final String messageId;
  final Payload? payload;

  @override
  Widget build(BuildContext context) {
    if (payload != null) {
      return _MessageCard(
        title: 'Milestone Payload',
        children: [
          _ColumTitleTextWidget(
            caption: 'Id',
            text: payload!.index.toString(),
          ),
          _ColumTitleTextWidget(
            caption: 'Date',
            text: payload!.timestamp.toString(),
          ),
          ...payload!.parentMessageIds.map(
            (value) {
              var idx = payload!.parentMessageIds.indexOf(value) + 1;
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'PARENT MESSAGE $idx',
                      style: Theme.of(context).textTheme.caption,
                    ),
                    const SizedBox(
                      height: 2,
                    ),
                    RichText(
                      text: TextSpan(
                          text: value,
                          style: TextStyle(
                            color: Theme.of(context).highlightColor,
                          ),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // TODO Navigate to nested message page
                            }),
                    ),
                  ],
                ),
              );
            },
          ),
          _ColumTitleTextWidget(
            caption: 'Inclusion merkle proof',
            text: payload!.inclusionMerkleProof,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Public keys',
                  style: Theme.of(context).textTheme.caption,
                ),
                ...payload!.publicKeys.map(
                  (value) => Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      value,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Signatures',
                  style: Theme.of(context).textTheme.caption,
                ),
                ...payload!.signatures.map(
                  (value) => Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Text(
                      value,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    } else {
      return const SizedBox();
    }
  }
}

class _MessageCard extends StatelessWidget {
  const _MessageCard({Key? key, required this.title, required this.children})
      : super(key: key);

  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 15),
      child: Card(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              ...children
            ],
          ),
        ),
      ),
    );
  }
}

class _ColumTitleTextWidget extends StatelessWidget {
  const _ColumTitleTextWidget(
      {Key? key, required this.caption, required this.text})
      : super(key: key);

  final String caption;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            caption,
            style: Theme.of(context).textTheme.caption,
          ),
          Text(
            text,
          ),
        ],
      ),
    );
  }
}

class _ChildMessageWidget extends StatelessWidget {
  const _ChildMessageWidget({
    Key? key,
    required this.childrenData,
  }) : super(key: key);

  final MessageChildrenData childrenData;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      title: 'Child Messages',
      children: [
        ...childrenData.childrenMessageIds.map(
          (value) {
            var idx = childrenData.childrenMessageIds.indexOf(value) + 1;
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'CHILD $idx',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  RichText(
                    text: TextSpan(
                        text: value,
                        style: TextStyle(
                          color: Theme.of(context).highlightColor,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // TODO Navigate to nested message page
                          }),
                  ),
                ],
              ),
            );
          },
        ),
      ],
    );
  }
}

class _MetadataMessageWidget extends StatelessWidget {
  const _MetadataMessageWidget({
    Key? key,
    required this.metadata,
  }) : super(key: key);

  final MessageMetadataData metadata;

  @override
  Widget build(BuildContext context) {
    return _MessageCard(
      title: 'Metadata',
      children: [
        _ColumTitleTextWidget(
          caption: 'Is solid',
          text: metadata.isSolid.toString(),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ledger inclusion',
                style: Theme.of(context).textTheme.caption,
              ),
              getInclusionState(context, metadata.ledgerInclusionState),
            ],
          ),
        ),
      ],
    );
  }

  Widget getInclusionState(BuildContext context, String state) {
    switch (state) {
      case 'undefined':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.grey,
              ),
              child: const Text(
                'NOT INCLUDED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
                child:
                    Text('The message is not yet referenced by a milestone.'))
          ],
        );
      case 'included':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.green,
              ),
              child: const Text(
                'INCLUDED',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Text(
                  'The message is referenced by a milestone, the transaction is included in the ledger.'),
            )
          ],
        );
      case 'conflicting':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Colors.red,
              ),
              child: const Text(
                'CONFLCITING',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 5,
            ),
            const Expanded(
              child: Text(
                  'The message has a conflict and will not be included in the ledger.'),
            )
          ],
        );
      case 'noTransaction':
        return Row(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8.0),
                color: Theme.of(context).highlightColor,
              ),
              child: const Text(
                'NO TRANSACTION',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            const Expanded(
              child: Text('The message is referenced by a milestone,' +
                  'the data is included in the ledger, but there is no value transfer.'),
            )
          ],
        );
      default:
        return const SizedBox();
    }
  }
}
