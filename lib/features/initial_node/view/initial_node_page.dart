import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/features/initial_node/initial_node.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';

class InitialNodePage extends StatelessWidget {
  const InitialNodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<InitialNodeCubit>(),
        child: BlocListener<InitialNodeCubit, InitialNodeState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isSubmissionFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('Failure while saving..')),
                );
            } else if (state.status.isSubmissionSuccess) {
              BlocProvider.of<NodeCubit>(context)
                  .updateStatus(NodeStatusEnum.nodeSelected);
            }
          },
          child: Align(
            alignment: const Alignment(0, -1 / 2),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SvgPicture.asset(
                    'assets/svg/hornet.svg',
                    height: 250,
                    semanticsLabel: 'Hornet',
                    color: ThemeHelper.of(context).blackOrWhite,
                    fit: BoxFit.fitHeight,
                  ),
                  const SizedBox(height: 16.0),
                  Text(
                    'Add a new hornet node',
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                  _NameInput(),
                  const SizedBox(height: 8.0),
                  _UrlInput(),
                  const SizedBox(height: 8.0),
                  _SaveButton(),
                  const SizedBox(height: 8.0),
                  // const Divider(),
                  // Text(
                  //   'Or scan a QR code',
                  //   style: Theme.of(context).primaryTextTheme.subtitle1,
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _NameInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
          child: TextField(
            key: const Key('addNodeForm_nameInput_textField'),
            onChanged: (name) =>
                context.read<InitialNodeCubit>().nameChanged(name),
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
    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.url != current.url,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0),
          child: TextField(
            key: const Key('addNodeForm_urlInput_textField'),
            keyboardType: TextInputType.url,
            onChanged: (url) =>
                context.read<InitialNodeCubit>().urlChanged(url),
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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30.0),
                child: ElevatedButton(
                  key: const Key('addNodeForm_continue_raisedButton'),
                  style: ElevatedButton.styleFrom(
                    primary: Theme.of(context).accentColor,
                  ),
                  onPressed: state.status.isValidated
                      ? () => context.read<InitialNodeCubit>().saveNode()
                      : null,
                  child: SizedBox(
                    width: double.infinity,
                    child: Center(
                      child: Text(
                        'ADD',
                        style: TextStyle(
                            color: ThemeHelper.of(context).blackOrWhite),
                      ),
                    ),
                  ),
                ),
              );
      },
    );
  }
}
