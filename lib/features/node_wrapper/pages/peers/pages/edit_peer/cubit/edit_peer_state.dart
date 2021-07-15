part of 'edit_peer_cubit.dart';

@freezed
class EditPeerState with _$EditPeerState {
  const factory EditPeerState({
    required PeerId id,
    required PeerAddress address,
    required PeerAlias alias,
    required FormzStatus status,
  }) = _EditPeerState;

  factory EditPeerState.initial() => const EditPeerState(
        id: PeerId.pure(),
        address: PeerAddress.pure(),
        alias: PeerAlias.pure(),
        status: FormzStatus.pure,
      );
}
