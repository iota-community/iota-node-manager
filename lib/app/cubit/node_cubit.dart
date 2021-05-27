import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:hornet_node/models/database/hornet_node.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/constants/hive_box_constants.dart';
import 'package:injectable/injectable.dart';

part 'node_state.dart';
part 'node_cubit.freezed.dart';

@injectable
class NodeCubit extends Cubit<NodeState> {
  NodeCubit(this._nodeRepository) : super(NodeState.initial());

  final NodeRepository _nodeRepository;

  Future<void> selectedNodeChanged(String uuid) async {
    await _nodeRepository.setSelectedNode(uuid);
    emit(
      state.copyWith(selectedNode: _nodeRepository.getSelectedNode()!),
    );
  }

  Future<void> nodeAdded(HornetNode node) async {
    await _nodeRepository.addNode(node);
    emit(
      state.copyWith(nodes: _nodeRepository.getNodes()),
    );
  }

  Future<void> nodeRemoved(HornetNode node) async {
    await _nodeRepository.removeNode(node.uuid);
    emit(
      state.copyWith(nodes: _nodeRepository.getNodes()),
    );
  }
}
