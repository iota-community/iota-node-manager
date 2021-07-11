// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'heartbeat.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Heartbeat _$_$_HeartbeatFromJson(Map<String, dynamic> json) {
  return _$_Heartbeat(
    solidMilestoneIndex: json['solidMilestoneIndex'] as int,
    prunedMilestoneIndex: json['prunedMilestoneIndex'] as int,
    latestMilestoneIndex: json['latestMilestoneIndex'] as int,
    connectedNeighbors: json['connectedNeighbors'] as int,
    syncedNeighbors: json['syncedNeighbors'] as int,
  );
}

Map<String, dynamic> _$_$_HeartbeatToJson(_$_Heartbeat instance) =>
    <String, dynamic>{
      'solidMilestoneIndex': instance.solidMilestoneIndex,
      'prunedMilestoneIndex': instance.prunedMilestoneIndex,
      'latestMilestoneIndex': instance.latestMilestoneIndex,
      'connectedNeighbors': instance.connectedNeighbors,
      'syncedNeighbors': instance.syncedNeighbors,
    };
