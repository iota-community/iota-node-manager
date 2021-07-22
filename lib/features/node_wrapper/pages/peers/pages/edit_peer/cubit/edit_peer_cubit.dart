import 'package:bloc/bloc.dart';
import 'package:formz/formz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/endpoints/hornet/hornet_node_rest_client.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/edit_peer/formz/peer_address.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/edit_peer/formz/peer_alias.dart';
import 'package:hornet_node/features/node_wrapper/pages/peers/pages/edit_peer/formz/peer_id.dart';
import 'package:hornet_node/models/hornet/peers/add_peer/add_peer_body.dart';
import 'package:hornet_node/repository/moor/database.dart';
import 'package:hornet_node/repository/node_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:sentry_flutter/sentry_flutter.dart';
import 'package:dio/dio.dart';
part 'edit_peer_state.dart';
part 'edit_peer_cubit.freezed.dart';

@injectable
class EditPeerCubit extends Cubit<EditPeerState> {
  EditPeerCubit(this._nodeRepository, this._hornetNodeRestClient)
      : super(EditPeerState.initial());
  final NodeRepository _nodeRepository;
  final HornetNodeRestClient _hornetNodeRestClient;

  void setInitialValues(String peerId, String peerAddress, String alias) {
    emit(state.copyWith(
      id: PeerId.dirty(value: peerId),
      address: PeerAddress.dirty(value: peerAddress),
      alias: PeerAlias.dirty(value: alias),
      status:
          Formz.validate(<FormzInput>[state.id, state.address, state.alias]),
    ));
  }

  void idChanged(String value) {
    final id = PeerId.dirty(value: value);
    emit(state.copyWith(
      id: PeerId.dirty(value: value),
      status: Formz.validate(<FormzInput>[id, state.address, state.alias]),
    ));
  }

  void addressChanged(String value) {
    final address = PeerAddress.dirty(value: value);
    emit(state.copyWith(
      address: PeerAddress.dirty(value: value),
      status: Formz.validate(<FormzInput>[state.id, address, state.alias]),
    ));
  }

  void aliasChanged(String value) {
    final alias = PeerAlias.dirty(value: value);
    emit(state.copyWith(
      alias: PeerAlias.dirty(value: value),
      status: Formz.validate(<FormzInput>[state.id, state.address, alias]),
    ));
  }

  Future<void> savePeer() async {
    if (!state.status.isValidated) return;
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    var selectedNode = await _nodeRepository.getSelectedNode();
    await _removePeer(selectedNode!, state.id.value);
    await _addPeer(selectedNode, state.alias.value,
        '${state.address.value}/p2p/${state.id.value}');
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }

  Future<void> removePeer(String id) async {
    emit(state.copyWith(status: FormzStatus.submissionInProgress));
    var selectedNode = await _nodeRepository.getSelectedNode();
    await _removePeer(selectedNode!, id);
    emit(state.copyWith(status: FormzStatus.submissionSuccess));
  }

  Future _removePeer(Node selectedNode, String peerId) async {
    try {
      await _hornetNodeRestClient.removePeer(
          selectedNode.url, 'Bearer ${selectedNode.jwtToken ?? ''}', peerId);
    } on DioError catch (e) {
      await Sentry.captureException(
        e,
        stackTrace: e.stackTrace,
      );
    }
  }

  Future _addPeer(Node selectedNode, String? name, String address) async {
    try {
      await _hornetNodeRestClient.addPeer(
          selectedNode.url,
          'Bearer ${selectedNode.jwtToken ?? ''}',
          AddPeerBody(multiAddress: address, alias: name ?? ''));
    } on DioError catch (e) {
      await Sentry.captureException(
        e,
        stackTrace: e.stackTrace,
      );
    }
  }
}
