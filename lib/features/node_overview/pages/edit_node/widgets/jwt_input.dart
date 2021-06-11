part of '../view/edit_node_page.dart';

class _JwtInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.jwt != current.jwt,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30.0, right: 30.0, top: 10),
          child: TextFormField(
            minLines: 3,
            maxLines: 5,
            key: const Key('editNodeForm_JwtInput_textField'),
            initialValue: state.jwt.value,
            onChanged: (name) => context.read<EditNodeCubit>().jwtChanged(name),
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              labelText: 'JWT Token',
              helperText: '',
              errorText: state.name.invalid ? 'invalid JWT token' : null,
            ),
          ),
        );
      },
    );
  }
}
