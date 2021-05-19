part of 'health_cubit.dart';

@freezed
class HealthState with _$HealthState {
  const factory HealthState.initial() = _Initial;
  const factory HealthState.healthy() = _Healthy;
  const factory HealthState.unhealthy() = _Unhealthy;
}
