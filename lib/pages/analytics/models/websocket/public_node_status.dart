import 'package:freezed_annotation/freezed_annotation.dart';

part 'public_node_status.freezed.dart';
part 'public_node_status.g.dart';

@freezed
class PublicNodeStatus with _$PublicNodeStatus {
  factory PublicNodeStatus({
    @JsonKey(name: 'snapshot_index') double? snapshotIndex,
    @JsonKey(name: 'pruning_index') double? pruningIndex,
    @JsonKey(name: 'is_healthy') bool? isHealthy,
    @JsonKey(name: 'is_synced') bool? isSynced,
  }) = _PublicNodeStatus;

  factory PublicNodeStatus.fromJson(Map<String, dynamic> json) =>
      _$PublicNodeStatusFromJson(json);
}
