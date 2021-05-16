part of 'hornet_cubit.dart';

@freezed
class HornetState with _$HornetState {
  const factory HornetState.initial() = _Initial;
  const factory HornetState.healthy() = _Healthy;
  const factory HornetState.unhealthy() = _Unhealthy;
}
