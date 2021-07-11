part of 'peers_cubit.dart';

@freezed
class PeersState with _$PeersState {
  const factory PeersState.initial() = _Initial;
  const factory PeersState.loadInProgress() = _LoadInProgress;
  const factory PeersState.jwtMissing() = _JwtMissing;
  const factory PeersState.loadSuccess(Peers peers) = _LoadSuccess;
  const factory PeersState.loadFailure() = _LoadFailure;
}
