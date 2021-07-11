part of '../view/edit_node_page.dart';

class _JwtInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.jwt != current.jwt,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
          child: TextFormField(
            minLines: 1,
            maxLines: 7,
            key: const Key('editNodeForm_JwtInput_textField'),
            initialValue: state.jwt.value,
            onChanged: (name) => context.read<EditNodeCubit>().jwtChanged(name),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: l10n.addInitialNodeJwtLabel,
              helperText: '',
              errorText: state.name.invalid ? 'invalid JWT token' : null,
            ),
          ),
        );
      },
    );
  }
}
