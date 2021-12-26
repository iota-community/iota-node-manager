import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';

part 'node_cubit.freezed.dart';
part 'node_state.dart';

@injectable
class NodeCubit extends Cubit<NodeState> {
  NodeCubit(this._nodeRepository) : super(NodeState.initial());

  final NodeRepository _nodeRepository;
  late StreamSubscription<List<Node>> _nodeStream;
  late StreamSubscription<Node?> _selectedNodeStream;

  Future<void> initState() async {
    final selectedNode = await _nodeRepository.getSelectedNode();
    final nodes = await _nodeRepository.getNodes();
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
    _subscribeToNodes();
    _subscribeToSelectedNode();
  }

  void _subscribeToNodes() {
    _nodeStream = _nodeRepository.getNodesStream().listen((nodes) {
      emit(state.copyWith(
        nodes: nodes,
      ));
    });
  }

  void _subscribeToSelectedNode() {
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
    final result = await _nodeRepository.addNode(
      node.name,
      node.url,
      node.jwtToken!,
      node.type,
    );
    await _nodeRepository.setSelectedNode(result.id);
    emit(
      state.copyWith(
          nodes: await _nodeRepository.getNodes(),
          status: NodeStatusEnum.nodeSelected),
    );
  }

  Future<void> nodeRemoved(int id) async {
    var selectedNode = await _nodeRepository.getSelectedNode();
    final nodes = await _nodeRepository.getNodes();

    if (selectedNode?.id == id) {
      selectedNode = nodes.firstWhereOrNull((element) => element.id != id);
      if (selectedNode != null) {
        await _nodeRepository.setSelectedNode(selectedNode.id);
        await _nodeRepository.removeNode(id);
        emit(
          state.copyWith(nodes: nodes, selectedNode: selectedNode),
        );
      } else {
        await _nodeRepository.setSelectedNode(null);
        await _nodeRepository.removeNode(id);
        emit(
          state.copyWith(nodes: nodes, status: NodeStatusEnum.noNodeAdded),
        );
      }
    } else {
      await _nodeRepository.removeNode(id);
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
