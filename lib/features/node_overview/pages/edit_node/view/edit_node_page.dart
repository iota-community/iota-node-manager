import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';

import '../edit_node.dart';

part '../widgets/save_button.dart';
part '../widgets/url_input.dart';
part '../widgets/name_input.dart';

class EditNodePage extends StatefulWidget {
  const EditNodePage({
    Key? key,
    @PathParam('id') this.id,
  }) : super(key: key);

  final int? id;

  @override
  _EditNodePageState createState() => _EditNodePageState();
}

class _EditNodePageState extends State<EditNodePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _nodeRepository = getIt<NodeRepository>();
    return Scaffold(
      appBar: AppBar(),
      drawerEnableOpenDragGesture: false,
      body: BlocProvider(
        create: (context) => getIt<EditNodeCubit>(),
        child: BlocListener<EditNodeCubit, EditNodeState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isSubmissionFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('Failure while saving..')),
                );
            } else if (state.status.isSubmissionSuccess) {
              AutoRouter.of(context).pop();
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                      duration: const Duration(seconds: 2),
                      content: Text(widget.id != null
                          ? 'Successfully updated'
                          : 'Successfully added')),
                );
            }
          },
          child: widget.id != null
              ? StreamBuilder(
                  stream: _nodeRepository.getNodeStream(widget.id!),
                  builder: (context, AsyncSnapshot<Node?> snapshot) {
                    if (snapshot.hasData) {
                      context
                          .read<EditNodeCubit>()
                          .setInitialValues(snapshot.data!);
                      return buildPage(context);
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                )
              : buildPage(context),
        ),
      ),
    );
  }

  Widget buildPage(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Align(
        alignment: Alignment.topCenter,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                widget.id != null
                    ? 'Edit your hornet node'
                    : 'Add a new hornet node',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              _NameInput(),
              const SizedBox(height: 8.0),
              _UrlInput(),
              const SizedBox(height: 8.0),
              _SaveButton(id: widget.id),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
