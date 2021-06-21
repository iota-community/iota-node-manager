import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';

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
                                return Text(peer.alias ?? '');
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
