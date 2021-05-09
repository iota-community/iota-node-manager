import 'package:freezed_annotation/freezed_annotation.dart';

import 'caches.dart';
import 'mem.dart';
import 'server_metrics.dart';

part 'node_status.freezed.dart';
part 'node_status.g.dart';

@freezed
class NodeStatus with _$NodeStatus {
  factory NodeStatus({
    @JsonKey(name: 'version') required String version,
    @JsonKey(name: 'latest_version') required String latestVersion,
    @JsonKey(name: 'uptime') required double uptime,
    @JsonKey(name: 'node_id') required String nodeId,
    @JsonKey(name: 'node_alias') required String nodeAlias,
    @JsonKey(name: 'bech32_hrp') required String bech32Hrp,
    @JsonKey(name: 'connected_peers_count') required double connectedPeersCount,
    @JsonKey(name: 'current_requested_ms') required double currentRequestedMs,
    @JsonKey(name: 'request_queue_queued') required double requestQueueQueued,
    @JsonKey(name: 'request_queue_pending') required double requestQueuePending,
    @JsonKey(name: 'request_queue_processing')
        required double requestQueueProcessing,
    @JsonKey(name: 'request_queue_avg_latency')
        required double requestQueueAvgLatency,
    @JsonKey(name: 'server_metrics') required ServerMetrics serverMetrics,
    @JsonKey(name: 'mem') required Mem mem,
    @JsonKey(name: 'caches') required Caches caches,
  }) = _NodeStatus;

  factory NodeStatus.fromJson(Map<String, dynamic> json) =>
      _$NodeStatusFromJson(json);
}
