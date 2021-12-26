part of '../view/initial_node_page.dart';

class _NodeTypeInput extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<InitialNodeCubit, InitialNodeState>(
      buildWhen: (previous, current) => previous.type != current.type,
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.only(left: 30, right: 30, top: 10),
          child: NodeTypeToggleFormField(
            key: const Key('editNodeForm_nodeTypeInput_toggleField'),
            initialValue: state.type.value?.index ?? 0,
            onChanged: (type) =>
                context.read<InitialNodeCubit>().typeChanged(type),
          ),
        );
      },
    );
  }
}
