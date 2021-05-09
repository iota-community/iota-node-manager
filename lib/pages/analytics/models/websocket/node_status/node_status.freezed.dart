// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'node_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

NodeStatus _$NodeStatusFromJson(Map<String, dynamic> json) {
  return _NodeStatus.fromJson(json);
}

/// @nodoc
class _$NodeStatusTearOff {
  const _$NodeStatusTearOff();

  _NodeStatus call(
      {@JsonKey(name: 'version')
          required String version,
      @JsonKey(name: 'latest_version')
          required String latestVersion,
      @JsonKey(name: 'uptime')
          required double uptime,
      @JsonKey(name: 'node_id')
          required String nodeId,
      @JsonKey(name: 'node_alias')
          required String nodeAlias,
      @JsonKey(name: 'bech32_hrp')
          required String bech32Hrp,
      @JsonKey(name: 'connected_peers_count')
          required double connectedPeersCount,
      @JsonKey(name: 'current_requested_ms')
          required double currentRequestedMs,
      @JsonKey(name: 'request_queue_queued')
          required double requestQueueQueued,
      @JsonKey(name: 'request_queue_pending')
          required double requestQueuePending,
      @JsonKey(name: 'request_queue_processing')
          required double requestQueueProcessing,
      @JsonKey(name: 'request_queue_avg_latency')
          required double requestQueueAvgLatency,
      @JsonKey(name: 'server_metrics')
          required ServerMetrics serverMetrics,
      @JsonKey(name: 'mem')
          required Mem mem,
      @JsonKey(name: 'caches')
          required Caches caches}) {
    return _NodeStatus(
      version: version,
      latestVersion: latestVersion,
      uptime: uptime,
      nodeId: nodeId,
      nodeAlias: nodeAlias,
      bech32Hrp: bech32Hrp,
      connectedPeersCount: connectedPeersCount,
      currentRequestedMs: currentRequestedMs,
      requestQueueQueued: requestQueueQueued,
      requestQueuePending: requestQueuePending,
      requestQueueProcessing: requestQueueProcessing,
      requestQueueAvgLatency: requestQueueAvgLatency,
      serverMetrics: serverMetrics,
      mem: mem,
      caches: caches,
    );
  }

  NodeStatus fromJson(Map<String, Object> json) {
    return NodeStatus.fromJson(json);
  }
}

/// @nodoc
const $NodeStatus = _$NodeStatusTearOff();

/// @nodoc
mixin _$NodeStatus {
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @JsonKey(name: 'latest_version')
  String get latestVersion => throw _privateConstructorUsedError;
  @JsonKey(name: 'uptime')
  double get uptime => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'node_alias')
  String get nodeAlias => throw _privateConstructorUsedError;
  @JsonKey(name: 'bech32_hrp')
  String get bech32Hrp => throw _privateConstructorUsedError;
  @JsonKey(name: 'connected_peers_count')
  double get connectedPeersCount => throw _privateConstructorUsedError;
  @JsonKey(name: 'current_requested_ms')
  double get currentRequestedMs => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_queue_queued')
  double get requestQueueQueued => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_queue_pending')
  double get requestQueuePending => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_queue_processing')
  double get requestQueueProcessing => throw _privateConstructorUsedError;
  @JsonKey(name: 'request_queue_avg_latency')
  double get requestQueueAvgLatency => throw _privateConstructorUsedError;
  @JsonKey(name: 'server_metrics')
  ServerMetrics get serverMetrics => throw _privateConstructorUsedError;
  @JsonKey(name: 'mem')
  Mem get mem => throw _privateConstructorUsedError;
  @JsonKey(name: 'caches')
  Caches get caches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeStatusCopyWith<NodeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeStatusCopyWith<$Res> {
  factory $NodeStatusCopyWith(
          NodeStatus value, $Res Function(NodeStatus) then) =
      _$NodeStatusCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'latest_version') String latestVersion,
      @JsonKey(name: 'uptime') double uptime,
      @JsonKey(name: 'node_id') String nodeId,
      @JsonKey(name: 'node_alias') String nodeAlias,
      @JsonKey(name: 'bech32_hrp') String bech32Hrp,
      @JsonKey(name: 'connected_peers_count') double connectedPeersCount,
      @JsonKey(name: 'current_requested_ms') double currentRequestedMs,
      @JsonKey(name: 'request_queue_queued') double requestQueueQueued,
      @JsonKey(name: 'request_queue_pending') double requestQueuePending,
      @JsonKey(name: 'request_queue_processing') double requestQueueProcessing,
      @JsonKey(name: 'request_queue_avg_latency') double requestQueueAvgLatency,
      @JsonKey(name: 'server_metrics') ServerMetrics serverMetrics,
      @JsonKey(name: 'mem') Mem mem,
      @JsonKey(name: 'caches') Caches caches});

  $ServerMetricsCopyWith<$Res> get serverMetrics;
  $MemCopyWith<$Res> get mem;
  $CachesCopyWith<$Res> get caches;
}

/// @nodoc
class _$NodeStatusCopyWithImpl<$Res> implements $NodeStatusCopyWith<$Res> {
  _$NodeStatusCopyWithImpl(this._value, this._then);

  final NodeStatus _value;
  // ignore: unused_field
  final $Res Function(NodeStatus) _then;

  @override
  $Res call({
    Object? version = freezed,
    Object? latestVersion = freezed,
    Object? uptime = freezed,
    Object? nodeId = freezed,
    Object? nodeAlias = freezed,
    Object? bech32Hrp = freezed,
    Object? connectedPeersCount = freezed,
    Object? currentRequestedMs = freezed,
    Object? requestQueueQueued = freezed,
    Object? requestQueuePending = freezed,
    Object? requestQueueProcessing = freezed,
    Object? requestQueueAvgLatency = freezed,
    Object? serverMetrics = freezed,
    Object? mem = freezed,
    Object? caches = freezed,
  }) {
    return _then(_value.copyWith(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersion: latestVersion == freezed
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      uptime: uptime == freezed
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      nodeAlias: nodeAlias == freezed
          ? _value.nodeAlias
          : nodeAlias // ignore: cast_nullable_to_non_nullable
              as String,
      bech32Hrp: bech32Hrp == freezed
          ? _value.bech32Hrp
          : bech32Hrp // ignore: cast_nullable_to_non_nullable
              as String,
      connectedPeersCount: connectedPeersCount == freezed
          ? _value.connectedPeersCount
          : connectedPeersCount // ignore: cast_nullable_to_non_nullable
              as double,
      currentRequestedMs: currentRequestedMs == freezed
          ? _value.currentRequestedMs
          : currentRequestedMs // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueueQueued: requestQueueQueued == freezed
          ? _value.requestQueueQueued
          : requestQueueQueued // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueuePending: requestQueuePending == freezed
          ? _value.requestQueuePending
          : requestQueuePending // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueueProcessing: requestQueueProcessing == freezed
          ? _value.requestQueueProcessing
          : requestQueueProcessing // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueueAvgLatency: requestQueueAvgLatency == freezed
          ? _value.requestQueueAvgLatency
          : requestQueueAvgLatency // ignore: cast_nullable_to_non_nullable
              as double,
      serverMetrics: serverMetrics == freezed
          ? _value.serverMetrics
          : serverMetrics // ignore: cast_nullable_to_non_nullable
              as ServerMetrics,
      mem: mem == freezed
          ? _value.mem
          : mem // ignore: cast_nullable_to_non_nullable
              as Mem,
      caches: caches == freezed
          ? _value.caches
          : caches // ignore: cast_nullable_to_non_nullable
              as Caches,
    ));
  }

  @override
  $ServerMetricsCopyWith<$Res> get serverMetrics {
    return $ServerMetricsCopyWith<$Res>(_value.serverMetrics, (value) {
      return _then(_value.copyWith(serverMetrics: value));
    });
  }

  @override
  $MemCopyWith<$Res> get mem {
    return $MemCopyWith<$Res>(_value.mem, (value) {
      return _then(_value.copyWith(mem: value));
    });
  }

  @override
  $CachesCopyWith<$Res> get caches {
    return $CachesCopyWith<$Res>(_value.caches, (value) {
      return _then(_value.copyWith(caches: value));
    });
  }
}

/// @nodoc
abstract class _$NodeStatusCopyWith<$Res> implements $NodeStatusCopyWith<$Res> {
  factory _$NodeStatusCopyWith(
          _NodeStatus value, $Res Function(_NodeStatus) then) =
      __$NodeStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'version') String version,
      @JsonKey(name: 'latest_version') String latestVersion,
      @JsonKey(name: 'uptime') double uptime,
      @JsonKey(name: 'node_id') String nodeId,
      @JsonKey(name: 'node_alias') String nodeAlias,
      @JsonKey(name: 'bech32_hrp') String bech32Hrp,
      @JsonKey(name: 'connected_peers_count') double connectedPeersCount,
      @JsonKey(name: 'current_requested_ms') double currentRequestedMs,
      @JsonKey(name: 'request_queue_queued') double requestQueueQueued,
      @JsonKey(name: 'request_queue_pending') double requestQueuePending,
      @JsonKey(name: 'request_queue_processing') double requestQueueProcessing,
      @JsonKey(name: 'request_queue_avg_latency') double requestQueueAvgLatency,
      @JsonKey(name: 'server_metrics') ServerMetrics serverMetrics,
      @JsonKey(name: 'mem') Mem mem,
      @JsonKey(name: 'caches') Caches caches});

  @override
  $ServerMetricsCopyWith<$Res> get serverMetrics;
  @override
  $MemCopyWith<$Res> get mem;
  @override
  $CachesCopyWith<$Res> get caches;
}

/// @nodoc
class __$NodeStatusCopyWithImpl<$Res> extends _$NodeStatusCopyWithImpl<$Res>
    implements _$NodeStatusCopyWith<$Res> {
  __$NodeStatusCopyWithImpl(
      _NodeStatus _value, $Res Function(_NodeStatus) _then)
      : super(_value, (v) => _then(v as _NodeStatus));

  @override
  _NodeStatus get _value => super._value as _NodeStatus;

  @override
  $Res call({
    Object? version = freezed,
    Object? latestVersion = freezed,
    Object? uptime = freezed,
    Object? nodeId = freezed,
    Object? nodeAlias = freezed,
    Object? bech32Hrp = freezed,
    Object? connectedPeersCount = freezed,
    Object? currentRequestedMs = freezed,
    Object? requestQueueQueued = freezed,
    Object? requestQueuePending = freezed,
    Object? requestQueueProcessing = freezed,
    Object? requestQueueAvgLatency = freezed,
    Object? serverMetrics = freezed,
    Object? mem = freezed,
    Object? caches = freezed,
  }) {
    return _then(_NodeStatus(
      version: version == freezed
          ? _value.version
          : version // ignore: cast_nullable_to_non_nullable
              as String,
      latestVersion: latestVersion == freezed
          ? _value.latestVersion
          : latestVersion // ignore: cast_nullable_to_non_nullable
              as String,
      uptime: uptime == freezed
          ? _value.uptime
          : uptime // ignore: cast_nullable_to_non_nullable
              as double,
      nodeId: nodeId == freezed
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      nodeAlias: nodeAlias == freezed
          ? _value.nodeAlias
          : nodeAlias // ignore: cast_nullable_to_non_nullable
              as String,
      bech32Hrp: bech32Hrp == freezed
          ? _value.bech32Hrp
          : bech32Hrp // ignore: cast_nullable_to_non_nullable
              as String,
      connectedPeersCount: connectedPeersCount == freezed
          ? _value.connectedPeersCount
          : connectedPeersCount // ignore: cast_nullable_to_non_nullable
              as double,
      currentRequestedMs: currentRequestedMs == freezed
          ? _value.currentRequestedMs
          : currentRequestedMs // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueueQueued: requestQueueQueued == freezed
          ? _value.requestQueueQueued
          : requestQueueQueued // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueuePending: requestQueuePending == freezed
          ? _value.requestQueuePending
          : requestQueuePending // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueueProcessing: requestQueueProcessing == freezed
          ? _value.requestQueueProcessing
          : requestQueueProcessing // ignore: cast_nullable_to_non_nullable
              as double,
      requestQueueAvgLatency: requestQueueAvgLatency == freezed
          ? _value.requestQueueAvgLatency
          : requestQueueAvgLatency // ignore: cast_nullable_to_non_nullable
              as double,
      serverMetrics: serverMetrics == freezed
          ? _value.serverMetrics
          : serverMetrics // ignore: cast_nullable_to_non_nullable
              as ServerMetrics,
      mem: mem == freezed
          ? _value.mem
          : mem // ignore: cast_nullable_to_non_nullable
              as Mem,
      caches: caches == freezed
          ? _value.caches
          : caches // ignore: cast_nullable_to_non_nullable
              as Caches,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NodeStatus implements _NodeStatus {
  _$_NodeStatus(
      {@JsonKey(name: 'version')
          required this.version,
      @JsonKey(name: 'latest_version')
          required this.latestVersion,
      @JsonKey(name: 'uptime')
          required this.uptime,
      @JsonKey(name: 'node_id')
          required this.nodeId,
      @JsonKey(name: 'node_alias')
          required this.nodeAlias,
      @JsonKey(name: 'bech32_hrp')
          required this.bech32Hrp,
      @JsonKey(name: 'connected_peers_count')
          required this.connectedPeersCount,
      @JsonKey(name: 'current_requested_ms')
          required this.currentRequestedMs,
      @JsonKey(name: 'request_queue_queued')
          required this.requestQueueQueued,
      @JsonKey(name: 'request_queue_pending')
          required this.requestQueuePending,
      @JsonKey(name: 'request_queue_processing')
          required this.requestQueueProcessing,
      @JsonKey(name: 'request_queue_avg_latency')
          required this.requestQueueAvgLatency,
      @JsonKey(name: 'server_metrics')
          required this.serverMetrics,
      @JsonKey(name: 'mem')
          required this.mem,
      @JsonKey(name: 'caches')
          required this.caches});

  factory _$_NodeStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_NodeStatusFromJson(json);

  @override
  @JsonKey(name: 'version')
  final String version;
  @override
  @JsonKey(name: 'latest_version')
  final String latestVersion;
  @override
  @JsonKey(name: 'uptime')
  final double uptime;
  @override
  @JsonKey(name: 'node_id')
  final String nodeId;
  @override
  @JsonKey(name: 'node_alias')
  final String nodeAlias;
  @override
  @JsonKey(name: 'bech32_hrp')
  final String bech32Hrp;
  @override
  @JsonKey(name: 'connected_peers_count')
  final double connectedPeersCount;
  @override
  @JsonKey(name: 'current_requested_ms')
  final double currentRequestedMs;
  @override
  @JsonKey(name: 'request_queue_queued')
  final double requestQueueQueued;
  @override
  @JsonKey(name: 'request_queue_pending')
  final double requestQueuePending;
  @override
  @JsonKey(name: 'request_queue_processing')
  final double requestQueueProcessing;
  @override
  @JsonKey(name: 'request_queue_avg_latency')
  final double requestQueueAvgLatency;
  @override
  @JsonKey(name: 'server_metrics')
  final ServerMetrics serverMetrics;
  @override
  @JsonKey(name: 'mem')
  final Mem mem;
  @override
  @JsonKey(name: 'caches')
  final Caches caches;

  @override
  String toString() {
    return 'NodeStatus(version: $version, latestVersion: $latestVersion, uptime: $uptime, nodeId: $nodeId, nodeAlias: $nodeAlias, bech32Hrp: $bech32Hrp, connectedPeersCount: $connectedPeersCount, currentRequestedMs: $currentRequestedMs, requestQueueQueued: $requestQueueQueued, requestQueuePending: $requestQueuePending, requestQueueProcessing: $requestQueueProcessing, requestQueueAvgLatency: $requestQueueAvgLatency, serverMetrics: $serverMetrics, mem: $mem, caches: $caches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _NodeStatus &&
            (identical(other.version, version) ||
                const DeepCollectionEquality()
                    .equals(other.version, version)) &&
            (identical(other.latestVersion, latestVersion) ||
                const DeepCollectionEquality()
                    .equals(other.latestVersion, latestVersion)) &&
            (identical(other.uptime, uptime) ||
                const DeepCollectionEquality().equals(other.uptime, uptime)) &&
            (identical(other.nodeId, nodeId) ||
                const DeepCollectionEquality().equals(other.nodeId, nodeId)) &&
            (identical(other.nodeAlias, nodeAlias) ||
                const DeepCollectionEquality()
                    .equals(other.nodeAlias, nodeAlias)) &&
            (identical(other.bech32Hrp, bech32Hrp) ||
                const DeepCollectionEquality()
                    .equals(other.bech32Hrp, bech32Hrp)) &&
            (identical(other.connectedPeersCount, connectedPeersCount) ||
                const DeepCollectionEquality()
                    .equals(other.connectedPeersCount, connectedPeersCount)) &&
            (identical(other.currentRequestedMs, currentRequestedMs) ||
                const DeepCollectionEquality()
                    .equals(other.currentRequestedMs, currentRequestedMs)) &&
            (identical(other.requestQueueQueued, requestQueueQueued) ||
                const DeepCollectionEquality()
                    .equals(other.requestQueueQueued, requestQueueQueued)) &&
            (identical(other.requestQueuePending, requestQueuePending) ||
                const DeepCollectionEquality()
                    .equals(other.requestQueuePending, requestQueuePending)) &&
            (identical(other.requestQueueProcessing, requestQueueProcessing) ||
                const DeepCollectionEquality().equals(
                    other.requestQueueProcessing, requestQueueProcessing)) &&
            (identical(other.requestQueueAvgLatency, requestQueueAvgLatency) ||
                const DeepCollectionEquality().equals(
                    other.requestQueueAvgLatency, requestQueueAvgLatency)) &&
            (identical(other.serverMetrics, serverMetrics) ||
                const DeepCollectionEquality()
                    .equals(other.serverMetrics, serverMetrics)) &&
            (identical(other.mem, mem) ||
                const DeepCollectionEquality().equals(other.mem, mem)) &&
            (identical(other.caches, caches) ||
                const DeepCollectionEquality().equals(other.caches, caches)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(version) ^
      const DeepCollectionEquality().hash(latestVersion) ^
      const DeepCollectionEquality().hash(uptime) ^
      const DeepCollectionEquality().hash(nodeId) ^
      const DeepCollectionEquality().hash(nodeAlias) ^
      const DeepCollectionEquality().hash(bech32Hrp) ^
      const DeepCollectionEquality().hash(connectedPeersCount) ^
      const DeepCollectionEquality().hash(currentRequestedMs) ^
      const DeepCollectionEquality().hash(requestQueueQueued) ^
      const DeepCollectionEquality().hash(requestQueuePending) ^
      const DeepCollectionEquality().hash(requestQueueProcessing) ^
      const DeepCollectionEquality().hash(requestQueueAvgLatency) ^
      const DeepCollectionEquality().hash(serverMetrics) ^
      const DeepCollectionEquality().hash(mem) ^
      const DeepCollectionEquality().hash(caches);

  @JsonKey(ignore: true)
  @override
  _$NodeStatusCopyWith<_NodeStatus> get copyWith =>
      __$NodeStatusCopyWithImpl<_NodeStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_NodeStatusToJson(this);
  }
}

abstract class _NodeStatus implements NodeStatus {
  factory _NodeStatus(
      {@JsonKey(name: 'version')
          required String version,
      @JsonKey(name: 'latest_version')
          required String latestVersion,
      @JsonKey(name: 'uptime')
          required double uptime,
      @JsonKey(name: 'node_id')
          required String nodeId,
      @JsonKey(name: 'node_alias')
          required String nodeAlias,
      @JsonKey(name: 'bech32_hrp')
          required String bech32Hrp,
      @JsonKey(name: 'connected_peers_count')
          required double connectedPeersCount,
      @JsonKey(name: 'current_requested_ms')
          required double currentRequestedMs,
      @JsonKey(name: 'request_queue_queued')
          required double requestQueueQueued,
      @JsonKey(name: 'request_queue_pending')
          required double requestQueuePending,
      @JsonKey(name: 'request_queue_processing')
          required double requestQueueProcessing,
      @JsonKey(name: 'request_queue_avg_latency')
          required double requestQueueAvgLatency,
      @JsonKey(name: 'server_metrics')
          required ServerMetrics serverMetrics,
      @JsonKey(name: 'mem')
          required Mem mem,
      @JsonKey(name: 'caches')
          required Caches caches}) = _$_NodeStatus;

  factory _NodeStatus.fromJson(Map<String, dynamic> json) =
      _$_NodeStatus.fromJson;

  @override
  @JsonKey(name: 'version')
  String get version => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'latest_version')
  String get latestVersion => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'uptime')
  double get uptime => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'node_id')
  String get nodeId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'node_alias')
  String get nodeAlias => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'bech32_hrp')
  String get bech32Hrp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'connected_peers_count')
  double get connectedPeersCount => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'current_requested_ms')
  double get currentRequestedMs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'request_queue_queued')
  double get requestQueueQueued => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'request_queue_pending')
  double get requestQueuePending => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'request_queue_processing')
  double get requestQueueProcessing => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'request_queue_avg_latency')
  double get requestQueueAvgLatency => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'server_metrics')
  ServerMetrics get serverMetrics => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'mem')
  Mem get mem => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'caches')
  Caches get caches => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$NodeStatusCopyWith<_NodeStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
