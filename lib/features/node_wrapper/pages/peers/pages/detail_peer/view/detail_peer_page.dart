import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/detail_peer/cubit/detail_peer_cubit/detail_peer_cubit.dart';
import 'package:hornet_node/features/node_wrapper/widgets/circle_indicator.dart';
import 'package:hornet_node/models/hornet/peers/peer.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/widgets/home_card_widget.dart';

class PeerDetailPage extends StatefulWidget {
  const PeerDetailPage({Key? key, @PathParam('peerId') required this.peerId})
      : super(key: key);

  final String peerId;

  @override
  _PeerDetailPageState createState() => _PeerDetailPageState();
}

class _PeerDetailPageState extends State<PeerDetailPage> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawerEnableOpenDragGesture: false,
      body: BlocListener<NodeCubit, NodeState>(
        listenWhen: (previous, current) =>
            previous.selectedNode != current.selectedNode,
        listener: (context, state) {
          AutoRouter.of(context).pop();
        },
        child: BlocProvider(
          create: (context) => DetailPeerCubit(
              getIt<HornetNodeRestClient>(), getIt<NodeRepository>())
            ..peer(widget.peerId),
          child: BlocConsumer<DetailPeerCubit, DetailPeerState>(
            listener: (context, state) {
              state.maybeMap(
                loadSuccess: (_) {
                  _refreshCompleter.complete();
                  _refreshCompleter = Completer();
                },
                orElse: () => {},
              );
            },
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                child: state.maybeMap(
                  loadSuccess: (value) {
                    var peer = value.peer.data;
                    return RefreshIndicator(
                      color: ThemeHelper.of(context).blackOrWhite,
                      onRefresh: () {
                        BlocProvider.of<DetailPeerCubit>(context)
                            .peer(widget.peerId);
                        return _refreshCompleter.future;
                      },
                      child: ListView(
                        children: [
                          Column(
                            children: [
                              BasicInformationWidget(peer: peer),
                              MilestoneWidget(peer: peer),
                              PruningCard(peer: peer),
                              SyncedPeersWidget(peer: peer),
                              MetricsWidget(peer: peer),
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                  loadInProgress: (_) =>
                      const Center(child: CircularProgressIndicator()),
                  orElse: () =>
                      const Center(child: CircularProgressIndicator()),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

class BasicInformationWidget extends StatelessWidget {
  const BasicInformationWidget({
    Key? key,
    required this.peer,
  }) : super(key: key);

  final Peer peer;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Flexible(
              child: CircleIndicator(healthy: peer.connected),
            ),
            Expanded(
              flex: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        peer.alias ?? '',
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Container(
                        width: 60,
                        alignment: Alignment.center,
                        margin: const EdgeInsets.all(3),
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: peer.relation == 'known'
                              ? Colors.green
                              : Colors.orange,
                        ),
                        child: Text(
                          peer.relation == 'known' ? 'Known' : 'Unknown',
                          style: const TextStyle(
                              color: Colors.white, fontSize: 10),
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MilestoneWidget extends StatelessWidget {
  const MilestoneWidget({
    Key? key,
    required this.peer,
  }) : super(key: key);

  final Peer peer;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xff16e1d5)),
                child: const Icon(
                  Icons.flag,
                  color: Color(0xFF078C83),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'SMI / LMI',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${peer.gossip?.heartbeat.solidMilestoneIndex ?? '-'} / ${peer.gossip?.heartbeat.latestMilestoneIndex ?? '-'}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class PruningCard extends StatelessWidget {
  const PruningCard({Key? key, required this.peer}) : super(key: key);

  final Peer peer;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFFFF9F7A)),
                child: const Icon(
                  Icons.delete_forever,
                  color: Color(0xFFFE672C),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'PRUNING INDEX',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${peer.gossip?.heartbeat.prunedMilestoneIndex ?? '-'}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SyncedPeersWidget extends StatelessWidget {
  const SyncedPeersWidget({
    Key? key,
    required this.peer,
  }) : super(key: key);

  final Peer peer;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            Expanded(
              child: Container(
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: const Color(0xFF92CAFC)),
                child: const Icon(
                  Icons.account_tree_outlined,
                  color: Color(0xFF1071C6),
                  size: 50,
                ),
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            Expanded(
              flex: 2,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Synced Peers',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 5.0),
                    child: Text(
                      '${peer.gossip?.heartbeat.syncedNeighbors ?? '-'} / ${peer.gossip?.heartbeat.connectedNeighbors ?? '-'}',
                      style: Theme.of(context).textTheme.headline6,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MetricsWidget extends StatelessWidget {
  const MetricsWidget({
    Key? key,
    required this.peer,
  }) : super(key: key);

  final Peer peer;

  @override
  Widget build(BuildContext context) {
    return HomeCardWidget(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Text(
                'Metrics',
                style: Theme.of(context).textTheme.headline6,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Known messages',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.knownMessages.toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'New messages',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(peer.gossip?.metrics.newMessages.toString() ?? '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Received messages',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.receivedMessages.toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sent messages',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.sentMessages.toString() ?? '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Received message requests',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.receivedMessageRequests
                                    .toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sent message requests',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.sentMessageRequests
                                    .toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Received heartbeats',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.receivedHeartbeats
                                    .toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sent heartbeats',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.sentHeartbeats.toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Received milestone requests',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.receivedMilestoneRequests
                                    .toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(14),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Sent milestone requests',
                          style: Theme.of(context).textTheme.caption,
                        ),
                        Text(
                            peer.gossip?.metrics.sentMilestoneRequests
                                    .toString() ??
                                '-',
                            style: Theme.of(context).textTheme.headline6),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dropped packages',
                    style: Theme.of(context).textTheme.caption,
                  ),
                  Text(peer.gossip?.metrics.droppedPackets.toString() ?? '-',
                      style: Theme.of(context).textTheme.headline6),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
