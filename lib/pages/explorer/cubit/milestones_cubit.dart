import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/milestone/milestone.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';

part 'milestones_state.dart';
part 'milestones_cubit.freezed.dart';

@injectable
class MilestonesCubit extends Cubit<MilestonesState> {
  MilestonesCubit(this._hornetNodeRestClient, this._nodeRepository)
      : super(const MilestonesState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;
  final NodeRepository _nodeRepository;

  Future<void> milestones(int index) async {
    emit(const MilestonesState.loadInProgress());
    try {
      var selectedNode = _nodeRepository.getSelectedNode();
      if (selectedNode != null) {
        var milestones = <Milestone>[
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 1),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 2),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 3),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 4),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 5),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 6),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 7),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 8),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 9),
          await _hornetNodeRestClient.milestone(selectedNode.url, index - 10),
        ];

        emit(MilestonesState.loadSuccess(milestones));
      }
    } on Exception catch (_) {
      emit(const MilestonesState.loadFailure());
    }
  }
}
