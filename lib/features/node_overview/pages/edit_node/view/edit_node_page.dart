import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';

import '../edit_node.dart';

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
                'Edit your hornet node',
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

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
          child: TextFormField(
            key: const Key('editNodeForm_nameInput_textField'),
            initialValue: state.name.value,
            onChanged: (name) =>
                context.read<EditNodeCubit>().nameChanged(name),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'Name',
              helperText: '',
              errorText: state.name.invalid ? 'invalid name' : null,
            ),
          ),
        );
      },
    );
  }
}

class _UrlInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.url != current.url,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextFormField(
            key: const Key('editNodeForm_urlInput_textField'),
            keyboardType: TextInputType.url,
            initialValue: state.url.value,
            onChanged: (url) => context.read<EditNodeCubit>().urlChanged(url),
            decoration: InputDecoration(
              labelText: 'Url',
              helperText: 'Example: https://iota.node.de',
              errorText: state.url.invalid ? 'invalid url' : null,
            ),
          ),
        );
      },
    );
  }
}

class _SaveButton extends StatelessWidget {
  const _SaveButton({Key? key, required this.id}) : super(key: key);

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  key: const Key('editNodeForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: state.status.isValidated
                      ? () => context.read<EditNodeCubit>().saveNode(id)
                      : null,
                  child: const SizedBox(
                    width: double.infinity,
                    child: Center(child: Text('ADD')),
                  ),
                ),
              );
      },
    );
  }
}
