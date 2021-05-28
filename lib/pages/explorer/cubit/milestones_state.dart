part of 'milestones_cubit.dart';

@freezed
class MilestonesState with _$MilestonesState {
  const factory MilestonesState.initial() = _Initial;
  const factory MilestonesState.loadInProgress() = _LoadInProgress;
  const factory MilestonesState.loadSuccess(List<Milestone> milestones) =
      _LoadSuccess;
  const factory MilestonesState.loadFailure() = _LoadFailure;
}
