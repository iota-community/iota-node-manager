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
import 'package:hornet_node/utils/widgets/error_card_widget.dart';
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
                orElse: () => <void>{},
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
                  loadFailure: (error) {
                    return ErrorCardWidget(
                      errorCode: error.failure,
                      child: ElevatedButton(
                        key: const Key('addNodeForm_continue_raisedButton'),
                        style: ElevatedButton.styleFrom(
                          primary: Theme.of(context).accentColor,
                        ),
                        onPressed: () {
                          BlocProvider.of<DetailPeerCubit>(context)
                              .peer(widget.peerId);
                        },
                        child: SizedBox(
                          width: double.infinity,
                          child: Center(
                            child: Text(
                              'Reload',
                              style: TextStyle(
                                  color: ThemeHelper.of(context).blackOrWhite),
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
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
    var heartbeat = peer.gossip?.heartbeat;
    return HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            const HomeCardIconWidget(
                backgroundColor: Color(0xff16e1d5),
                iconColor: Color(0xFF078C83),
                icon: Icons.flag),
            const SizedBox(
              width: 20,
            ),
            _MetricsTextItemWidget(
                label: 'SMI / LMI',
                value:
                    '${heartbeat?.solidMilestoneIndex ?? '-'} / ${heartbeat?.latestMilestoneIndex ?? '-'}'),
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
            const HomeCardIconWidget(
              backgroundColor: Color(0xFFFF9F7A),
              iconColor: Color(0xFFFE672C),
              icon: Icons.delete_forever,
            ),
            const SizedBox(
              width: 20,
            ),
            _MetricsTextItemWidget(
                label: 'PRUNING INDEX',
                value: '${peer.gossip?.heartbeat.prunedMilestoneIndex ?? '-'}'),
          ],
        ),
      ),
    );
  }
}

class HomeCardIconWidget extends StatelessWidget {
  const HomeCardIconWidget({
    Key? key,
    required this.iconColor,
    required this.backgroundColor,
    required this.icon,
  }) : super(key: key);

  final Color iconColor;
  final Color backgroundColor;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 60,
        width: 60,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0), color: backgroundColor),
        child: Icon(
          icon,
          color: iconColor,
          size: 50,
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
    var heartbeat = peer.gossip?.heartbeat;
    return HomeCardWidget(
      height: 100.0,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            const HomeCardIconWidget(
                backgroundColor: Color(0xFF92CAFC),
                iconColor: Color(0xFF1071C6),
                icon: Icons.account_tree_outlined),
            const SizedBox(
              width: 20,
            ),
            _MetricsTextItemWidget(
                label: 'SYNCED PEERS',
                value:
                    '${heartbeat?.syncedNeighbors ?? '-'} / ${heartbeat?.connectedNeighbors ?? '-'}')
          ],
        ),
      ),
    );
  }
}

class _MetricsTextItemWidget extends StatelessWidget {
  const _MetricsTextItemWidget({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            label,
            style: Theme.of(context).textTheme.caption,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5.0),
            child: Text(
              value,
              style: Theme.of(context).textTheme.headline6,
            ),
          ),
        ],
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
                _MetricRowItem(
                    label: 'Known messages',
                    value: peer.gossip?.metrics.knownMessages.toString()),
                _MetricRowItem(
                    label: 'New messages',
                    value: peer.gossip?.metrics.newMessages.toString()),
              ],
            ),
            Row(
              children: [
                _MetricRowItem(
                    label: 'Received messages',
                    value: peer.gossip?.metrics.receivedMessages.toString()),
                _MetricRowItem(
                    label: 'Sent messages',
                    value: peer.gossip?.metrics.sentMessages.toString()),
              ],
            ),
            Row(
              children: [
                _MetricRowItem(
                    label: 'Received message requests',
                    value: peer.gossip?.metrics.receivedMessageRequests
                        .toString()),
                _MetricRowItem(
                    label: 'Sent message requests',
                    value: peer.gossip?.metrics.sentMessageRequests.toString()),
              ],
            ),
            Row(
              children: [
                _MetricRowItem(
                    label: 'Received heartbeats',
                    value: peer.gossip?.metrics.receivedHeartbeats.toString()),
                _MetricRowItem(
                    label: 'Sent heartbeats',
                    value: peer.gossip?.metrics.sentHeartbeats.toString()),
              ],
            ),
            Row(
              children: [
                _MetricRowItem(
                    label: 'Received milestone requests',
                    value: peer.gossip?.metrics.receivedMilestoneRequests
                        .toString()),
                _MetricRowItem(
                    label: 'Sent milestone requests',
                    value:
                        peer.gossip?.metrics.sentMilestoneRequests.toString()),
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

class _MetricRowItem extends StatelessWidget {
  const _MetricRowItem({
    Key? key,
    required this.label,
    required this.value,
  }) : super(key: key);

  final String label;
  final String? value;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              label,
              style: Theme.of(context).textTheme.caption,
            ),
            Text(value ?? '-', style: Theme.of(context).textTheme.headline6),
          ],
        ),
      ),
    );
  }
}
