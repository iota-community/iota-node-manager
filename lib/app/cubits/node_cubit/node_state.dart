part of 'node_cubit.dart';

@freezed
class NodeState with _$NodeState {
  const factory NodeState(
      {required Node? selectedNode,
      required List<Node> nodes,
      required NodeStatusEnum status}) = _NodeState;

  factory NodeState.initial() {
    return const NodeState(
        nodes: [], selectedNode: null, status: NodeStatusEnum.initial);
  }
}

enum NodeStatusEnum { initial, noNodeAdded, noNodeSelected, nodeSelected }
