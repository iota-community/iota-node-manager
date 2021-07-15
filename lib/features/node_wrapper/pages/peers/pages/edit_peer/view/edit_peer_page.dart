import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/edit_peer/cubit/edit_peer_cubit.dart';
import 'package:hornet_node/models/hornet/peers/peer_detail.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/utils/widgets/error_card_widget.dart';

class EditPeerPage extends StatelessWidget {
  const EditPeerPage({Key? key, @PathParam('id') required this.id})
      : super(key: key);
  final String id;

  @override
  Widget build(BuildContext context) {
    var _hornetNodeRestClient = getIt<HornetNodeRestClient>();
    return BlocListener<NodeCubit, NodeState>(
      listenWhen: (previous, current) =>
          previous.selectedNode != current.selectedNode,
      listener: (context, state) {
        AutoRouter.of(context).pop();
      },
      child: Scaffold(
        appBar: AppBar(),
        drawerEnableOpenDragGesture: false,
        body: BlocProvider(
          create: (context) => getIt<EditPeerCubit>(),
          child: BlocListener<EditPeerCubit, EditPeerState>(
            listenWhen: (previous, current) =>
                previous.status != current.status,
            listener: (context, state) {
              if (state.status.isSubmissionFailure) {
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(
                    const SnackBar(
                        key: Key('editNode_saveFailure_snackbar'),
                        content: Text('Failure while saving..')),
                  );
              } else if (state.status.isSubmissionSuccess) {
                AutoRouter.of(context).pop();
                ScaffoldMessenger.of(context)
                  ..hideCurrentSnackBar()
                  ..showSnackBar(const SnackBar(
                    key: Key('editNode_saveSuccess_snackbar'),
                    duration: Duration(seconds: 2),
                    content: Text('Successfully updated'),
                  ));
              }
            },
            child: BlocBuilder<NodeCubit, NodeState>(
              buildWhen: (p, c) => p.selectedNode != c.selectedNode,
              builder: (context, state) {
                var node = state.selectedNode!;
                return FutureBuilder<PeerDetail>(
                  future: _hornetNodeRestClient.peer(
                    node.url,
                    'Bearer ${node.jwtToken ?? ''}',
                    id,
                  ),
                  builder: (context, AsyncSnapshot<PeerDetail> snapshot) {
                    if (snapshot.hasData) {
                      var peer = snapshot.data!.data;
                      context.read<EditPeerCubit>().setInitialValues(
                          peer.id, peer.multiAddresses.first, peer.alias ?? '');
                      return Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: SingleChildScrollView(
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  'Update your peer',
                                  style: Theme.of(context)
                                      .primaryTextTheme
                                      .headline5,
                                ),
                                const PeerIdWidget(),
                                const SizedBox(height: 8.0),
                                const PeerAliasWidget(),
                                const SizedBox(height: 20.0),
                                const PeerAddressWidget(),
                                const SizedBox(height: 8.0),
                                ButtonsWidget(id: id),
                                const SizedBox(height: 8.0),
                              ],
                            ),
                          ),
                        ),
                      );
                    } else if (snapshot.hasError) {
                      return const ErrorCardWidget();
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key, required this.id}) : super(key: key);
  final String id;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPeerCubit, EditPeerState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: Row(
                  children: [
                    ElevatedButton(
                      key: const Key('editNodeForm_save_raisedButton'),
                      style: ElevatedButton.styleFrom(
                        primary: Theme.of(context).primaryColor,
                      ),
                      onPressed: state.status.isValidated
                          ? () async {
                              await context.read<EditPeerCubit>().savePeer();
                              await context.read<PeersCubit>().peers();
                            }
                          : null,
                      child: SizedBox(
                        width: 50,
                        child: Center(
                            child: Text(
                          'SAVE',
                          style: TextStyle(
                              color: ThemeHelper.of(context).blackOrWhite),
                        )),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    ElevatedButton(
                      key: const Key('editNodeForm_remove_raisedButton'),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.red,
                      ),
                      onPressed: () async {
                        await context.read<EditPeerCubit>().removePeer(id);
                        await context.read<PeersCubit>().peers();
                        await AutoRouter.of(context).pop();
                      },
                      child: const SizedBox(
                        child: Center(
                            child: Icon(
                          Icons.delete_forever,
                          color: Colors.white,
                        )),
                      ),
                    )
                  ],
                ),
              );
      },
    );
  }
}

class PeerAddressWidget extends StatelessWidget {
  const PeerAddressWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPeerCubit, EditPeerState>(
      buildWhen: (previous, current) => previous.address != current.address,
      builder: (context, state) => Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
        child: TextFormField(
          key: const Key('editNodeForm_nameInput_textField'),
          initialValue: state.address.value,
          onChanged: (address) =>
              context.read<EditPeerCubit>().addressChanged(address),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Address',
            helperText: 'e.g. /ip4/127.0.0.1/tcp/15600',
            errorText: state.address.invalid ? 'invalid address' : null,
          ),
        ),
      ),
    );
  }
}

class PeerAliasWidget extends StatelessWidget {
  const PeerAliasWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPeerCubit, EditPeerState>(
      buildWhen: (previous, current) => previous.alias != current.alias,
      builder: (context, state) => Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
        child: TextFormField(
          key: const Key('editNodeForm_nameInput_textField'),
          initialValue: state.alias.value,
          onChanged: (alias) =>
              context.read<EditPeerCubit>().aliasChanged(alias),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Alias',
            helperText: 'e.g. My Friends Node',
            errorText: state.alias.invalid ? 'invalid alias' : null,
          ),
        ),
      ),
    );
  }
}

class PeerIdWidget extends StatelessWidget {
  const PeerIdWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditPeerCubit, EditPeerState>(
      buildWhen: (previous, current) => previous.id != current.id,
      builder: (context, state) => Padding(
        padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
        child: TextFormField(
          minLines: 2,
          maxLines: 2,
          key: const Key('editNodeForm_nameInput_textField'),
          initialValue: state.id.value,
          onChanged: (id) => context.read<EditPeerCubit>().idChanged(id),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Id',
            helperText: 'e.g. 12D3KooWC7uE9w3RN4Vh1FJAZa8SbE8yMWR6...',
            errorText: state.id.invalid ? 'invalid id' : null,
          ),
        ),
      ),
    );
  }
}
