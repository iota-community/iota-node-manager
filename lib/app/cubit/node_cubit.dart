import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';

part 'node_state.dart';
part 'node_cubit.freezed.dart';

@injectable
class NodeCubit extends Cubit<NodeState> {
  NodeCubit(this._nodeRepository) : super(NodeState.initial());

  final NodeRepository _nodeRepository;
  late StreamSubscription<List<Node>> _nodeStream;
  late StreamSubscription<Node> _selectedNodeStream;

  Future<void> initState() async {
    var selectedNode = await _nodeRepository.getSelectedNode();
    var nodes = await _nodeRepository.getNodes();
    NodeStatusEnum status;
    if (nodes.isEmpty) {
      status = NodeStatusEnum.noNodeAdded;
    } else if (selectedNode == null) {
      status = NodeStatusEnum.noNodeSelected;
    } else {
      status = NodeStatusEnum.nodeSelected;
    }
    emit(state.copyWith(
      selectedNode: await _nodeRepository.getSelectedNode(),
      nodes: await _nodeRepository.getNodes(),
      status: status,
    ));
    subscribeToNodes();
    subscribeToSelectedNode();
  }

  void subscribeToNodes() {
    _nodeStream = _nodeRepository.getNodesStream().listen((nodes) {
      emit(state.copyWith(
        nodes: nodes,
      ));
    });
  }

  void subscribeToSelectedNode() {
    _selectedNodeStream =
        _nodeRepository.getSelectedNodeStream().listen((node) {
      emit(state.copyWith(
        selectedNode: node,
      ));
    });
  }

  Future<void> selectedNodeChanged(int id) async {
    await _nodeRepository.setSelectedNode(id);
    emit(
      state.copyWith(selectedNode: await _nodeRepository.getSelectedNode()),
    );
  }

  Future<void> nodeAdded(Node node) async {
    var result = await _nodeRepository.addNode(node.name, node.url);
    await _nodeRepository.setSelectedNode(result.id);
    emit(
      state.copyWith(
          nodes: await _nodeRepository.getNodes(),
          status: NodeStatusEnum.nodeSelected),
    );
  }

  Future<void> nodeRemoved(Node node) async {
    await _nodeRepository.removeNode(node.id);
    var nodes = await _nodeRepository.getNodes();
    if (nodes.isNotEmpty) {
      emit(
        state.copyWith(nodes: nodes),
      );
    } else {
      emit(
        state.copyWith(nodes: nodes, status: NodeStatusEnum.noNodeAdded),
      );
    }
  }

  void updateStatus(NodeStatusEnum status) {
    emit(
      state.copyWith(status: status),
    );
  }

  @override
  Future<void> close() async {
    await _nodeStream.cancel();
    await _selectedNodeStream.cancel();
    return super.close();
  }
}
