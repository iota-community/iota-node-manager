part of 'detail_peer_cubit.dart';

@freezed
class DetailPeerState with _$DetailPeerState {
  const factory DetailPeerState.initial() = _Initial;
  const factory DetailPeerState.loadInProgress() = _LoadInProgress;
  const factory DetailPeerState.loadSuccess(PeerDetail peer) = _LoadSuccess;
  const factory DetailPeerState.loadFailure() = _LoadFailure;
}
