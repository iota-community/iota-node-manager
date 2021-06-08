part of '../view/edit_node_page.dart';

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
