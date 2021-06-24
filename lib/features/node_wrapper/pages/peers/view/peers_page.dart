import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:hornet_node/features/node_wrapper/widgets/circle_indicator.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/widgets/hornet_card.dart';

class PeersPage extends StatefulWidget {
  const PeersPage({Key? key}) : super(key: key);

  @override
  _PeersPageState createState() => _PeersPageState();
}

class _PeersPageState extends State<PeersPage> {
  late Completer<void> _refreshCompleter;

  @override
  void initState() {
    super.initState();
    _refreshCompleter = Completer<void>();
  }

  @override
  Widget build(BuildContext context) {
    var _nodeRepository = getIt<NodeRepository>();

    return StreamBuilder<Node?>(
        stream: _nodeRepository.getSelectedNodeStream(),
        builder: (context, AsyncSnapshot<Node?> snapshot) {
          context.read<PeersCubit>().peers();
          return BlocBuilder<PeersCubit, PeersState>(
            builder: (context, state) {
              return AnimatedSwitcher(
                duration: const Duration(milliseconds: 350),
                child: state.maybeMap(
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
                                                    fontWeight:
                                                        FontWeight.bold),
                                              ),
                                              Container(
                                                width: 60,
                                                alignment: Alignment.center,
                                                margin: const EdgeInsets.all(3),
                                                padding:
                                                    const EdgeInsets.all(3),
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          8.0),
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
                                            style:
                                                const TextStyle(fontSize: 10),
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
                                                      .primaryColor,
                                                ),
                                                onPressed: null,
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
                                                      .primaryColor,
                                                ),
                                                onPressed: null,
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
                                                onPressed: () {},
                                                child: SizedBox(
                                                  width: 70,
                                                  child: Center(
                                                      child: Text(
                                                    'Delete',
                                                    style: TextStyle(
                                                        color: ThemeHelper.of(
                                                                context)
                                                            .blackOrWhite),
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
                    BlocProvider.of<PeersCubit>(context).peers();
                    return const Center(
                      child: CircularProgressIndicator(),
                    );
                  },
                  orElse: () => const Center(
                    child: CircularProgressIndicator(),
                  ),
                ),
              );
            },
          );
        });
  }
}
