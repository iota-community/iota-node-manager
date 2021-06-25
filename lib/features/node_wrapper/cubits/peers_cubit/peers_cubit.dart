import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/peers/add_peer/add_peer_body.dart';
import 'package:hornet_node/models/hornet/peers/peers.dart';
import 'package:hornet_node/repository/moor/database.dart';
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
        var response = await _loadPeers(selectedNode);
        emit(PeersState.loadSuccess(response));
        return response;
      }
    } on Exception catch (_) {
      emit(const PeersState.loadFailure());
    }
  }

  Future peerRemoved(String peerId) async {
    var selectedNode = await _nodeRepository.getSelectedNode();
    await _removePeer(selectedNode!, peerId);
    var response = await _loadPeers(selectedNode);

    emit(PeersState.loadSuccess(response));
  }

  Future peerUpdated(String peerId, String? name, String address) async {
    var selectedNode = await _nodeRepository.getSelectedNode();
    await _removePeer(selectedNode!, peerId);
    await _addPeer(selectedNode, name, address);
    var response = await _loadPeers(selectedNode);

    emit(PeersState.loadSuccess(response));
  }

  Future peerAdded(String peerId, String? name, String address) async {
    var selectedNode = await _nodeRepository.getSelectedNode();
    await _addPeer(selectedNode!, name, address);
    var response = await _loadPeers(selectedNode);
    emit(PeersState.loadSuccess(response));
  }

  Future _removePeer(Node selectedNode, String peerId) async {
    await _hornetNodeRestClient.removePeer(
        selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}', peerId);
  }

  Future _addPeer(Node selectedNode, String? name, String address) async {
    await _hornetNodeRestClient.addPeer(
        selectedNode.url,
        'Bearer ${selectedNode.jwtToken ?? ''}',
        AddPeerBody(multiAddress: address, alias: name ?? ''));
  }

  Future<Peers> _loadPeers(Node selectedNode) async {
    return await _hornetNodeRestClient.peers(
        selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}');
  }
}
