import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/features/node_wrapper/cubits/peers_cubit/peers_cubit.dart';
import 'package:hornet_node/models/hornet/info/info.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/error/dio_helpers.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dio/dio.dart';

part 'info_cubit.freezed.dart';

part 'info_state.dart';

@injectable
class InfoCubit extends Cubit<InfoState> {
  InfoCubit(this._hornetNodeRestClient, this._nodeRepository)
      : super(const InfoState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;
  final NodeRepository _nodeRepository;

  Future<Info?> info() async {
    emit(const InfoState.loadInProgress());
    try {
      var selectedNode = await _nodeRepository.getSelectedNode();
      if (selectedNode != null) {
        var response = await _hornetNodeRestClient.info(
            selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}');
        emit(InfoState.loadSuccess(response));
        return response;
      }
    } on DioError catch (e) {
      await Sentry.captureException(
        e,
        stackTrace: e.stackTrace,
      );
      var failureCode = retrieveFailureCode(e);
      emit(InfoState.loadFailure(failureCode));
    }
  }
}
