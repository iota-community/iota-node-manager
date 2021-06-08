import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';

part 'health_cubit.freezed.dart';

part 'health_state.dart';

@injectable
class HealthCubit extends Cubit<HealthState> {
  HealthCubit(this._hornetNodeRestClient, this._nodeRepository)
      : super(const HealthState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;
  final NodeRepository _nodeRepository;

  Future<void> health() async {
    emit(const HealthState.loadInProgress());
    try {
      var selectedNode = await _nodeRepository.getSelectedNode();
      if (selectedNode != null) {
        var response = await _hornetNodeRestClient.health(selectedNode.url);
        final statusCode = response.response.statusCode;
        emit(HealthState.loadSuccess(statusCode));
      }
    } on Exception catch (_) {
      emit(const HealthState.loadFailure());
    }
  }
}
