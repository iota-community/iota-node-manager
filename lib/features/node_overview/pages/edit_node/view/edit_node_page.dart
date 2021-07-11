import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/l10n/l10n.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';

import '../edit_node.dart';

part '../widgets/save_button.dart';
part '../widgets/url_input.dart';
part '../widgets/name_input.dart';
part '../widgets/jwt_input.dart';

class EditNodePage extends StatelessWidget {
  const EditNodePage({
    Key? key,
    @PathParam('id') this.id,
  }) : super(key: key);

  final int? id;

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
                  const SnackBar(
                      key: Key('editNode_saveFailure_snackbar'),
                      content: Text('Failure while saving..')),
                );
            } else if (state.status.isSubmissionSuccess) {
              AutoRouter.of(context).pop();
              ScaffoldMessenger.of(context)
                ..hideCurrentSnackBar()
                ..showSnackBar(
                  SnackBar(
                      key: const Key('editNode_saveSuccess_snackbar'),
                      duration: const Duration(seconds: 2),
                      content: Text(id != null
                          ? 'Successfully updated'
                          : 'Successfully added')),
                );
            }
          },
          child: id != null
              ? FutureBuilder<Node?>(
                  future: _nodeRepository.getNode(id!),
                  builder: (context, snapshot) {
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
                id != null ? 'Edit your hornet node' : 'Add a new hornet node',
                style: Theme.of(context).primaryTextTheme.headline5,
              ),
              _NameInput(),
              const SizedBox(height: 8.0),
              _UrlInput(),
              const SizedBox(height: 20.0),
              Text(
                'Optional',
                style: Theme.of(context).textTheme.subtitle1,
              ),
              _JwtInput(),
              const SizedBox(height: 8.0),
              _Buttons(id: id),
              const SizedBox(height: 8.0),
            ],
          ),
        ),
      ),
    );
  }
}
