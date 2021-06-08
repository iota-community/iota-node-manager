part of '../view/initial_node_page.dart';

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
