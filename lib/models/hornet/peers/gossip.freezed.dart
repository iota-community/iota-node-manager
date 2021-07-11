// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'gossip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Gossip _$GossipFromJson(Map<String, dynamic> json) {
  return _Gossip.fromJson(json);
}

/// @nodoc
class _$GossipTearOff {
  const _$GossipTearOff();

  _Gossip call(
      {@JsonKey(name: 'heartbeat') required Heartbeat heartbeat,
      @JsonKey(name: 'metrics') required Metrics metrics}) {
    return _Gossip(
      heartbeat: heartbeat,
      metrics: metrics,
    );
  }

  Gossip fromJson(Map<String, Object> json) {
    return Gossip.fromJson(json);
  }
}

/// @nodoc
const $Gossip = _$GossipTearOff();

/// @nodoc
mixin _$Gossip {
  @JsonKey(name: 'heartbeat')
  Heartbeat get heartbeat => throw _privateConstructorUsedError;
  @JsonKey(name: 'metrics')
  Metrics get metrics => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GossipCopyWith<Gossip> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GossipCopyWith<$Res> {
  factory $GossipCopyWith(Gossip value, $Res Function(Gossip) then) =
      _$GossipCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'heartbeat') Heartbeat heartbeat,
      @JsonKey(name: 'metrics') Metrics metrics});

  $HeartbeatCopyWith<$Res> get heartbeat;
  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class _$GossipCopyWithImpl<$Res> implements $GossipCopyWith<$Res> {
  _$GossipCopyWithImpl(this._value, this._then);

  final Gossip _value;
  // ignore: unused_field
  final $Res Function(Gossip) _then;

  @override
  $Res call({
    Object? heartbeat = freezed,
    Object? metrics = freezed,
  }) {
    return _then(_value.copyWith(
      heartbeat: heartbeat == freezed
          ? _value.heartbeat
          : heartbeat // ignore: cast_nullable_to_non_nullable
              as Heartbeat,
      metrics: metrics == freezed
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ));
  }

  @override
  $HeartbeatCopyWith<$Res> get heartbeat {
    return $HeartbeatCopyWith<$Res>(_value.heartbeat, (value) {
      return _then(_value.copyWith(heartbeat: value));
    });
  }

  @override
  $MetricsCopyWith<$Res> get metrics {
    return $MetricsCopyWith<$Res>(_value.metrics, (value) {
      return _then(_value.copyWith(metrics: value));
    });
  }
}

/// @nodoc
abstract class _$GossipCopyWith<$Res> implements $GossipCopyWith<$Res> {
  factory _$GossipCopyWith(_Gossip value, $Res Function(_Gossip) then) =
      __$GossipCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'heartbeat') Heartbeat heartbeat,
      @JsonKey(name: 'metrics') Metrics metrics});

  @override
  $HeartbeatCopyWith<$Res> get heartbeat;
  @override
  $MetricsCopyWith<$Res> get metrics;
}

/// @nodoc
class __$GossipCopyWithImpl<$Res> extends _$GossipCopyWithImpl<$Res>
    implements _$GossipCopyWith<$Res> {
  __$GossipCopyWithImpl(_Gossip _value, $Res Function(_Gossip) _then)
      : super(_value, (v) => _then(v as _Gossip));

  @override
  _Gossip get _value => super._value as _Gossip;

  @override
  $Res call({
    Object? heartbeat = freezed,
    Object? metrics = freezed,
  }) {
    return _then(_Gossip(
      heartbeat: heartbeat == freezed
          ? _value.heartbeat
          : heartbeat // ignore: cast_nullable_to_non_nullable
              as Heartbeat,
      metrics: metrics == freezed
          ? _value.metrics
          : metrics // ignore: cast_nullable_to_non_nullable
              as Metrics,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Gossip implements _Gossip {
  _$_Gossip(
      {@JsonKey(name: 'heartbeat') required this.heartbeat,
      @JsonKey(name: 'metrics') required this.metrics});

  factory _$_Gossip.fromJson(Map<String, dynamic> json) =>
      _$_$_GossipFromJson(json);

  @override
  @JsonKey(name: 'heartbeat')
  final Heartbeat heartbeat;
  @override
  @JsonKey(name: 'metrics')
  final Metrics metrics;

  @override
  String toString() {
    return 'Gossip(heartbeat: $heartbeat, metrics: $metrics)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Gossip &&
            (identical(other.heartbeat, heartbeat) ||
                const DeepCollectionEquality()
                    .equals(other.heartbeat, heartbeat)) &&
            (identical(other.metrics, metrics) ||
                const DeepCollectionEquality().equals(other.metrics, metrics)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(heartbeat) ^
      const DeepCollectionEquality().hash(metrics);

  @JsonKey(ignore: true)
  @override
  _$GossipCopyWith<_Gossip> get copyWith =>
      __$GossipCopyWithImpl<_Gossip>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_GossipToJson(this);
  }
}

abstract class _Gossip implements Gossip {
  factory _Gossip(
      {@JsonKey(name: 'heartbeat') required Heartbeat heartbeat,
      @JsonKey(name: 'metrics') required Metrics metrics}) = _$_Gossip;

  factory _Gossip.fromJson(Map<String, dynamic> json) = _$_Gossip.fromJson;

  @override
  @JsonKey(name: 'heartbeat')
  Heartbeat get heartbeat => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'metrics')
  Metrics get metrics => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$GossipCopyWith<_Gossip> get copyWith => throw _privateConstructorUsedError;
}
