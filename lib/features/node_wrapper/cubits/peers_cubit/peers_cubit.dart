import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/models/hornet/peers/add_peer/add_peer_body.dart';
import 'package:hornet_node/models/hornet/peers/peers.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:hornet_node/utils/error/dio_helpers.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dio/dio.dart';

part 'peers_state.dart';
part 'peers_cubit.freezed.dart';

enum FailureStatusEnum {
  nodeNotAvailable,
  unauthorized,
  milestoneNotFound,
  untrustedCertificate,
  invalidNodeUrl,
  other
}

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
    } on DioError catch (e) {
      await Sentry.captureException(
        e,
        stackTrace: e.stackTrace,
      );
      var failureCode = retrieveFailureCode(e);
      emit(PeersState.loadFailure(failureCode));
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
    await _hornetNodeRestClient
        .removePeer(
            selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}', peerId)
        .catchError((Object obj) async {
      switch (obj.runtimeType) {
        case DioError:
          final error = (obj as DioError);
          await Sentry.captureException(
            error,
            stackTrace: error.stackTrace,
          );
          break;
        default:
      }
    });
  }

  Future _addPeer(Node selectedNode, String? name, String address) async {
    await _hornetNodeRestClient
        .addPeer(selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}',
            AddPeerBody(multiAddress: address, alias: name ?? ''))
        .catchError((Object obj) async {
      switch (obj.runtimeType) {
        case DioError:
          final error = (obj as DioError);
          await Sentry.captureException(
            error,
            stackTrace: error.stackTrace,
          );
          break;
        default:
      }
    });
  }

  Future<Peers> _loadPeers(Node selectedNode) async {
    return await _hornetNodeRestClient.peers(
        selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}');
    //     .catchError((Object obj) async {
    //   switch (obj.runtimeType) {
    //     case DioError:
    //       final error = (obj as DioError);
    //       await Sentry.captureException(
    //         error,
    //         stackTrace: error.stackTrace,
    //       );
    //       throw error;
    //     default:
    //   }
    // });
  }
}
