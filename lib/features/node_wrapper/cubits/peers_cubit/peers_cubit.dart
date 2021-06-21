import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/peers/peers.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';

part 'peers_state.dart';
part 'peers_cubit.freezed.dart';

@injectable
class PeersCubit extends Cubit<PeersState> {
  PeersCubit(this._hornetNodeRestClient, this._nodeRepository)
      : super(const PeersState.initial());

  final HornetNodeRestClient _hornetNodeRestClient;
  final NodeRepository _nodeRepository;

  Future<Peers?> peers() async {
    emit(const PeersState.loadInProgress());
    try {
      var selectedNode = await _nodeRepository.getSelectedNode();
      if (selectedNode != null) {
        if (selectedNode.jwtToken == null || selectedNode.jwtToken!.isEmpty) {
          emit(const PeersState.jwtMissing());
          return null;
        }
        var response = await _hornetNodeRestClient.peers(
            selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}');
        emit(PeersState.loadSuccess(response));
        return response;
      }
    } on Exception catch (_) {
      emit(const PeersState.loadFailure());
    }
  }
}
