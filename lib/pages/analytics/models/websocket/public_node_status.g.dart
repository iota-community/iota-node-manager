// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'public_node_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PublicNodeStatus _$_$_PublicNodeStatusFromJson(Map<String, dynamic> json) {
  return _$_PublicNodeStatus(
    snapshotIndex: (json['snapshot_index'] as num?)?.toDouble(),
    pruningIndex: (json['pruning_index'] as num?)?.toDouble(),
    isHealthy: json['is_healthy'] as bool?,
    isSynced: json['is_synced'] as bool?,
  );
}

Map<String, dynamic> _$_$_PublicNodeStatusToJson(
        _$_PublicNodeStatus instance) =>
    <String, dynamic>{
      'snapshot_index': instance.snapshotIndex,
      'pruning_index': instance.pruningIndex,
      'is_healthy': instance.isHealthy,
      'is_synced': instance.isSynced,
    };
