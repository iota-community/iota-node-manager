part of 'info_cubit.dart';

@freezed
class InfoState with _$InfoState {
  const factory InfoState.initial() = _Initial;
  const factory InfoState.loadInProgress() = _LoadInProgress;
  const factory InfoState.loadSuccess(Info info) = _LoadSuccess;
  const factory InfoState.loadFailure(FailureStatusEnum failure) = _LoadFailure;
}
