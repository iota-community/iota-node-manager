import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:hornet_node/app/themes/custom_themes.dart';
import 'package:hornet_node/configure_dependencies.dart';
import 'package:formz/formz.dart';
import 'package:hornet_node/features/initial_node/initial_node.dart';
import 'package:hornet_node/app/cubits/node_cubit/node_cubit.dart';
import 'package:hornet_node/l10n/l10n.dart';

part '../widgets/save_button.dart';
part '../widgets/url_input.dart';
part '../widgets/name_input.dart';
part '../widgets/jwt_input.dart';

class InitialNodePage extends StatelessWidget {
  const InitialNodePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

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
                  SnackBar(content: Text(l10n.addInitialNodeSaveError)),
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
                    l10n.addInitialNodeTitle,
                    style: Theme.of(context).primaryTextTheme.headline5,
                  ),
                  _NameInput(),
                  const SizedBox(height: 8.0),
                  _UrlInput(),
                  const SizedBox(height: 8.0),
                  _JwtInput(),
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
