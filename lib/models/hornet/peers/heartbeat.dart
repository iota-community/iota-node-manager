import 'package:freezed_annotation/freezed_annotation.dart';

part 'heartbeat.freezed.dart';
part 'heartbeat.g.dart';

@freezed
class Heartbeat with _$Heartbeat {
  factory Heartbeat({
    @JsonKey(name: 'solidMilestoneIndex') required int solidMilestoneIndex,
    @JsonKey(name: 'prunedMilestoneIndex') required int prunedMilestoneIndex,
    @JsonKey(name: 'latestMilestoneIndex') required int latestMilestoneIndex,
    @JsonKey(name: 'connectedNeighbors') required int connectedNeighbors,
    @JsonKey(name: 'syncedNeighbors') required int syncedNeighbors,
  }) = _Heartbeat;

  factory Heartbeat.fromJson(Map<String, dynamic> json) =>
      _$HeartbeatFromJson(json);
}
