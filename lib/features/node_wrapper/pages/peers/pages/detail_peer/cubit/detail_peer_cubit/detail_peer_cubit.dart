import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/peers/peer_detail.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dio/dio.dart';
part 'detail_peer_cubit.freezed.dart';

part 'detail_peer_state.dart';

@injectable
class DetailPeerCubit extends Cubit<DetailPeerState> {
  DetailPeerCubit(this._hornetNodeRestClient, this._nodeRepository)
      : super(const DetailPeerState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;
  final NodeRepository _nodeRepository;

  Future<PeerDetail?> peer(String peerId) async {
    emit(const DetailPeerState.loadInProgress());
    try {
      var selectedNode = await _nodeRepository.getSelectedNode();
      if (selectedNode != null) {
        var response = await _hornetNodeRestClient.peer(
            selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}', peerId);
        emit(DetailPeerState.loadSuccess(response));
        return response;
      }
    } on DioError catch (e) {
      await Sentry.captureException(
        e,
        stackTrace: e.stackTrace,
      );
      emit(const DetailPeerState.loadFailure());
    }
  }
}
