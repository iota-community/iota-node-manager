part of 'node_cubit.dart';

@freezed
class NodeState with _$NodeState {
  const factory NodeState({
    required HornetNode selectedNode,
    required List<HornetNode> nodes,
  }) = _NodeState;

  factory NodeState.initial() {
    final nodesBox = Hive.box<List>(HiveBoxConstants.nodesBox);
    final selectedNodeBox =
        Hive.box<HornetNode>(HiveBoxConstants.selectedNodeBox);
    final nodes = nodesBox.get('nodes', defaultValue: [])!.cast<HornetNode>();
    final selectedNode = selectedNodeBox.get('selectedNode');

    return NodeState(
      selectedNode: selectedNode!,
      nodes: nodes,
    );
  }
}
