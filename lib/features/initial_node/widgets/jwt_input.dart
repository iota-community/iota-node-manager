part of '../view/initial_node_page.dart';

class _JwtInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.jwt != current.jwt,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
          child: TextField(
            key: const Key('addNodeForm_JwtInput_textField'),
            onChanged: (name) =>
                context.read<InitialNodeCubit>().jwtChanged(name),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: l10n.addInitialNodeJwtLabel,
              helperText: '',
              errorText:
                  state.name.invalid ? l10n.addInitialNodeJwtError : null,
            ),
          ),
        );
      },
    );
  }
}
