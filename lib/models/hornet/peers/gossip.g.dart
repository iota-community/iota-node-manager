// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'gossip.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Gossip _$_$_GossipFromJson(Map<String, dynamic> json) {
  return _$_Gossip(
    heartbeat: Heartbeat.fromJson(json['heartbeat'] as Map<String, dynamic>),
    metrics: Metrics.fromJson(json['metrics'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_GossipToJson(_$_Gossip instance) => <String, dynamic>{
      'heartbeat': instance.heartbeat,
      'metrics': instance.metrics,
    };
