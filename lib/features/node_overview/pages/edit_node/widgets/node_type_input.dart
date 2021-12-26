part of '../view/edit_node_page.dart';

class _NodeTypeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<EditNodeCubit, EditNodeState>(
      buildWhen: (previous, current) => previous.type != current.type,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: NodeTypeToggleFormField(
            key: const Key('editNodeForm_nodeTypeInput_toggleField'),
            initialValue: state.type.value?.index ?? 0,
            onChanged: (type) =>
                context.read<EditNodeCubit>().typeChanged(type),
          ),
        );
      },
    );
  }
}

class NodeTypeToggleFormField extends FormField<int> {
  NodeTypeToggleFormField({
    Key? key,
    FormFieldSetter<int>? onSaved,
    FormFieldValidator<int>? validator,
    ValueChanged<NodeTypes>? onChanged,
    int initialValue = 0,
    AutovalidateMode autoValidateMode = AutovalidateMode.disabled,
  }) : super(
            key: key,
            onSaved: onSaved,
            validator: validator,
            initialValue: initialValue,
            autovalidateMode: autoValidateMode,
            builder: (FormFieldState<int> state) {
              return Column(
                children: <Widget>[
                  const Text(
                    'Choose your node type',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      ToggleSwitch(
                        initialLabelIndex: state.value,
                        totalSwitches: 2,
                        activeBgColor: [CustomTheme.darkTheme.primaryColor],
                        activeFgColor: Colors.white,
                        inactiveFgColor: Colors.black,
                        inactiveBgColor: CustomTheme.lightTheme.cardColor,
                        labels: const ['Hornet', 'Bee'],
                        onToggle: (index) {
                          onChanged!(NodeTypes.values[index]);
                          state.didChange(index);
                        },
                      ),
                    ],
                  ),
                  if (state.hasError)
                    Text(
                      state.errorText!,
                      style: const TextStyle(
                        color: Colors.red,
                      ),
                    )
                  else
                    Container()
                ],
              );
            });
}
