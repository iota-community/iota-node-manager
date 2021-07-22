import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/message/children/message_children.dart';
import 'package:hornet_node/models/hornet/message/message.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata.dart';
import 'package:flutter/gestures.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/models/hornet/message/children/message_children_data.dart';
import 'package:hornet_node/models/hornet/message/message_data.dart';
import 'package:hornet_node/models/hornet/message/metadata/message_metadata_data.dart';
import 'package:hornet_node/models/hornet/message/payload.dart';
import 'package:hornet_node/utils/widgets/error_card_widget.dart';
import 'package:hornet_node/utils/widgets/hornet_card.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dio/dio.dart';

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

  @override
  void initState() {
    super.initState();
    _hornetNodeRestClient = getIt<HornetNodeRestClient>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NodeCubit, NodeState>(
      listenWhen: (previous, current) =>
          previous.selectedNode != current.selectedNode,
      listener: (context, state) {
        AutoRouter.of(context).popUntil((route) {
          if (route.settings is AutoRoutePage) {
            var name = (route.settings as AutoRoutePage).routeData.name;
            return name == ExplorerRoute.name;
          }
          return false;
        });
      },
      buildWhen: (previous, current) =>
          previous.selectedNode != current.selectedNode,
      builder: (context, state) {
        var selectedNode = state.selectedNode;

        if (selectedNode != null) {
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
                  future: _hornetNodeRestClient.message(
                      selectedNode.url,
                      'Bearer ${selectedNode.jwtToken ?? ''}',
                      widget.messageId),
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
                    } else if (snapshot.hasError) {
                      var error = snapshot.error as DioError;
                      Sentry.captureException(
                        error,
                        stackTrace: error.stackTrace,
                      );
                      return const ErrorCardWidget();
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
                      'Bearer ${selectedNode.jwtToken ?? ''}',
                      widget.messageId),
                  builder: (context, AsyncSnapshot<MessageChildren> snapshot) {
                    if (snapshot.hasData) {
                      var childrenData = snapshot.data!.data;
                      return Column(
                        children: [
                          _ChildMessageWidget(
                            childrenData: childrenData,
                          ),
                        ],
                      );
                    } else if (snapshot.hasError) {
                      var error = snapshot.error as DioError;
                      Sentry.captureException(
                        error,
                        stackTrace: error.stackTrace,
                      );
                      return const ErrorCardWidget();
                    } else {
                      return const SizedBox();
                    }
                  },
                ),
                FutureBuilder(
                  future: _hornetNodeRestClient.messageMetadata(
                      selectedNode.url,
                      'Bearer ${selectedNode.jwtToken ?? ''}',
                      widget.messageId),
                  builder: (context, AsyncSnapshot<MessageMetadata> snapshot) {
                    if (snapshot.hasData) {
                      var metaData = snapshot.data!.data;
                      return Column(
                        children: [
                          _MetadataMessageWidget(
                            metadata: metaData,
                          )
                        ],
                      );
                    } else if (snapshot.hasError) {
                      var error = snapshot.error as DioError;
                      Sentry.captureException(
                        error,
                        stackTrace: error.stackTrace,
                      );
                      return const ErrorCardWidget();
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
      },
    );
  }
}
