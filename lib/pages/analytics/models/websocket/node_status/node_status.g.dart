// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'node_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_NodeStatus _$_$_NodeStatusFromJson(Map<String, dynamic> json) {
  return _$_NodeStatus(
    version: json['version'] as String,
    latestVersion: json['latest_version'] as String,
    uptime: (json['uptime'] as num).toDouble(),
    nodeId: json['node_id'] as String,
    nodeAlias: json['node_alias'] as String,
    bech32Hrp: json['bech32_hrp'] as String,
    connectedPeersCount: (json['connected_peers_count'] as num).toDouble(),
    currentRequestedMs: (json['current_requested_ms'] as num).toDouble(),
    requestQueueQueued: (json['request_queue_queued'] as num).toDouble(),
    requestQueuePending: (json['request_queue_pending'] as num).toDouble(),
    requestQueueProcessing:
        (json['request_queue_processing'] as num).toDouble(),
    requestQueueAvgLatency:
        (json['request_queue_avg_latency'] as num).toDouble(),
    serverMetrics:
        ServerMetrics.fromJson(json['server_metrics'] as Map<String, dynamic>),
    mem: Mem.fromJson(json['mem'] as Map<String, dynamic>),
    caches: Caches.fromJson(json['caches'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_NodeStatusToJson(_$_NodeStatus instance) =>
    <String, dynamic>{
      'version': instance.version,
      'latest_version': instance.latestVersion,
      'uptime': instance.uptime,
      'node_id': instance.nodeId,
      'node_alias': instance.nodeAlias,
      'bech32_hrp': instance.bech32Hrp,
      'connected_peers_count': instance.connectedPeersCount,
      'current_requested_ms': instance.currentRequestedMs,
      'request_queue_queued': instance.requestQueueQueued,
      'request_queue_pending': instance.requestQueuePending,
      'request_queue_processing': instance.requestQueueProcessing,
      'request_queue_avg_latency': instance.requestQueueAvgLatency,
      'server_metrics': instance.serverMetrics,
      'mem': instance.mem,
      'caches': instance.caches,
    };
