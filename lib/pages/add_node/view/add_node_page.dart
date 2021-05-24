import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/router/app_router.gr.dart';
import 'package:hornet_node/configureDependencies.dart';
import 'package:hornet_node/pages/add_node/cubit/add_node_cubit.dart';
import 'package:formz/formz.dart';

class AddNodePage extends StatelessWidget {
  const AddNodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (context) => getIt<AddNoteCubit>(),
        child: BlocListener<AddNoteCubit, AddNoteState>(
          listenWhen: (previous, current) => previous.status != current.status,
          listener: (context, state) {
            if (state.status.isSubmissionFailure) {
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  const SnackBar(content: Text('Failure while saving..')),
                );
            } else if (state.status.isSubmissionSuccess) {
              AutoRouter.of(context).replace(const NodeWrapperRoute());
            }
          },
          child: Align(
            alignment: const Alignment(0, -1 / 3),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 16.0),
                  _NameInput(),
                  const SizedBox(height: 8.0),
                  _UrlInput(),
                  const SizedBox(height: 8.0),
                  _SaveButton(),
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
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      buildWhen: (previous, current) => previous.name != current.name,
      builder: (context, state) {
        return TextField(
          key: const Key('addNodeForm_nameInput_textField'),
          onChanged: (name) => context.read<AddNoteCubit>().nameChanged(name),
          keyboardType: TextInputType.text,
          decoration: InputDecoration(
            labelText: 'Name',
            helperText: '',
            errorText: state.name.invalid ? 'invalid name' : null,
          ),
        );
      },
    );
  }
}

class _UrlInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      buildWhen: (previous, current) => previous.url != current.url,
      builder: (context, state) {
        return TextField(
          key: const Key('addNodeForm_urlInput_textField'),
          keyboardType: TextInputType.url,
          onChanged: (url) => context.read<AddNoteCubit>().urlChanged(url),
          decoration: InputDecoration(
            labelText: 'Url',
            helperText: '',
            errorText: state.url.invalid ? 'invalid url' : null,
          ),
        );
      },
    );
  }
}

class _SaveButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddNoteCubit, AddNoteState>(
      buildWhen: (previous, current) => previous.status != current.status,
      builder: (context, state) {
        return state.status.isSubmissionInProgress
            ? const CircularProgressIndicator()
            : ElevatedButton(
                key: const Key('addNodeForm_continue_raisedButton'),
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  primary: const Color(0xFFFFD600),
                ),
                onPressed: state.status.isValidated
                    ? () => context.read<AddNoteCubit>().saveNode()
                    : null,
                child: const Text('SAVE'),
              );
      },
    );
  }
}
