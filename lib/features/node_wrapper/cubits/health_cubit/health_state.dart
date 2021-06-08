part of 'health_cubit.dart';

@freezed
class HealthState with _$HealthState {
  const factory HealthState.initial() = _Initial;
  const factory HealthState.loadInProgress() = _LoadInProgress;
  const factory HealthState.loadSuccess(int? statusCode) = _LoadSuccess;
  const factory HealthState.loadFailure() = _LoadFailure;
}
