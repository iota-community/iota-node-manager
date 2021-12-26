import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:hornet_node/features/node_wrapper/widgets/circle_indicator.dart';
import 'package:hornet_node/repository/moor/constants/node_types.dart';
import 'package:hornet_node/utils/widgets/error_card_widget.dart';
import 'package:hornet_node/utils/widgets/hornet_card.dart';

class PeersPage extends StatefulWidget {
  const PeersPage({Key? key}) : super(key: key);

  @override
  PeersPageState createState() => PeersPageState();
}

class PeersPageState extends State<PeersPage> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NodeCubit, NodeState>(
      listenWhen: (previous, current) =>
          previous.selectedNode != current.selectedNode,
      listener: (context, state) {
        context.read<PeersCubit>().peers();
      },
      builder: (context, state) {
        if (state.selectedNode!.type == NodeTypes.bee.index) {
          return const Padding(
            padding: EdgeInsets.all(20),
            child: Text(
              'Bee does not support loading Peers yet. It will be implemented when JWT Tokens are possible.',
            ),
          );
        }
        return BlocBuilder<PeersCubit, PeersState>(
          builder: (context, state) {
            return AnimatedSwitcher(
              duration: const Duration(milliseconds: 350),
              child: state.map(
                jwtMissing: (_) {
                  return const Text('JWT is missing!');
                },
                loadSuccess: (value) {
                  var peers = value.peers;
                  peers.data.sort((a, b) {
                    if (b.relation == 'unknown') {
                      return -1;
                    }
                    if (b.connected) {
                      return 1;
                    }
                    return -2;
                  });
                  return Column(
                    children: [
                      Expanded(
                        child: RefreshIndicator(
                          color: ThemeHelper.of(context).blackOrWhite,
                          onRefresh: () {
                            BlocProvider.of<PeersCubit>(context).peers();
                            return _refreshCompleter.future;
                          },
                          child: ListView.builder(
                            itemCount: peers.data.length,
                            itemBuilder: (context, index) {
                              var peer = peers.data[index];
                              var known = peer.relation == 'known';
                              return HornetCard(
                                  child: Row(
                                children: [
                                  Flexible(
                                    child: CircleIndicator(
                                        healthy: peer.connected),
                                  ),
                                  Expanded(
                                    flex: 10,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              peer.alias ?? '',
                                              style: const TextStyle(
                                                  fontWeight: FontWeight.bold),
                                            ),
                                            Container(
                                              width: 60,
                                              alignment: Alignment.center,
                                              margin: const EdgeInsets.all(3),
                                              padding: const EdgeInsets.all(3),
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                color: known
                                                    ? Colors.green
                                                    : Colors.orange,
                                              ),
                                              child: Text(
                                                known ? 'Known' : 'Unknown',
                                                style: const TextStyle(
                                                    color: Colors.white,
                                                    fontSize: 10),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(
                                          peer.id,
                                          style: const TextStyle(fontSize: 10),
                                        ),
                                        const SizedBox(
                                          height: 5,
                                        ),
                                        Text(peer.multiAddresses.first),
                                        const SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          children: [
                                            ElevatedButton(
                                              key: const Key(
                                                  'peers_edit_raisedButton'),
                                              style: ElevatedButton.styleFrom(
                                                primary: Theme.of(context)
                                                    .accentColor,
                                              ),
                                              onPressed: () =>
                                                  AutoRouter.of(context).push(
                                                      EditPeerRoute(
                                                          id: peer.id)),
                                              child: SizedBox(
                                                width: 70,
                                                child: Center(
                                                    child: Text(
                                                  'Edit',
                                                  style: TextStyle(
                                                      color: ThemeHelper.of(
                                                              context)
                                                          .blackOrWhite),
                                                )),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            ElevatedButton(
                                              key: const Key(
                                                  'peers_details_raisedButton'),
                                              style: ElevatedButton.styleFrom(
                                                primary: Theme.of(context)
                                                    .accentColor,
                                              ),
                                              onPressed: () =>
                                                  AutoRouter.of(context).push(
                                                      PeerDetailRoute(
                                                          peerId: peer.id)),
                                              child: SizedBox(
                                                width: 70,
                                                child: Center(
                                                    child: Text(
                                                  'Details',
                                                  style: TextStyle(
                                                      color: ThemeHelper.of(
                                                              context)
                                                          .blackOrWhite),
                                                )),
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 15,
                                            ),
                                            ElevatedButton(
                                              key: const Key(
                                                  'peers_remove_raisedButton'),
                                              style: ElevatedButton.styleFrom(
                                                primary: const Color.fromARGB(
                                                    160, 220, 53, 69),
                                              ),
                                              onPressed: () => context
                                                  .read<PeersCubit>()
                                                  .peerRemoved(peer.id),
                                              child: const SizedBox(
                                                width: 70,
                                                child: Center(
                                                    child: Text(
                                                  'Delete',
                                                  style: TextStyle(
                                                      color: Colors.white),
                                                )),
                                              ),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                ],
                              ));
                            },
                          ),
                        ),
                      ),
                    ],
                  );
                },
                initial: (_) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                },
                loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
                loadFailure: (error) {
                  return ErrorCardWidget(
                    errorCode: error.failure,
                    child: ElevatedButton(
                      key: const Key('addNodeForm_continue_raisedButton'),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).accentColor,
                      ),
                      onPressed: () {
                        BlocProvider.of<PeersCubit>(context).peers();
                      },
                      child: SizedBox(
                        width: double.infinity,
                        child: Center(
                          child: Text(
                            'Reload',
                            style: TextStyle(
                              color: ThemeHelper.of(context).blackOrWhite,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            );
          },
        );
      },
    );
  }
}
