// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'mps_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MpsMetrics _$MpsMetricsFromJson(Map<String, dynamic> json) {
  return _MpsMetrics.fromJson(json);
}

/// @nodoc
class _$MpsMetricsTearOff {
  const _$MpsMetricsTearOff();

  _MpsMetrics call(
      {@JsonKey(name: 'incoming') required double incomingMps,
      @JsonKey(name: 'new') required double newMps,
      @JsonKey(name: 'outgoing') required double outgoingMps}) {
    return _MpsMetrics(
      incomingMps: incomingMps,
      newMps: newMps,
      outgoingMps: outgoingMps,
    );
  }

  MpsMetrics fromJson(Map<String, Object> json) {
    return MpsMetrics.fromJson(json);
  }
}

/// @nodoc
const $MpsMetrics = _$MpsMetricsTearOff();

/// @nodoc
mixin _$MpsMetrics {
  @JsonKey(name: 'incoming')
  double get incomingMps => throw _privateConstructorUsedError;
  @JsonKey(name: 'new')
  double get newMps => throw _privateConstructorUsedError;
  @JsonKey(name: 'outgoing')
  double get outgoingMps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MpsMetricsCopyWith<MpsMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MpsMetricsCopyWith<$Res> {
  factory $MpsMetricsCopyWith(
          MpsMetrics value, $Res Function(MpsMetrics) then) =
      _$MpsMetricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'incoming') double incomingMps,
      @JsonKey(name: 'new') double newMps,
      @JsonKey(name: 'outgoing') double outgoingMps});
}

/// @nodoc
class _$MpsMetricsCopyWithImpl<$Res> implements $MpsMetricsCopyWith<$Res> {
  _$MpsMetricsCopyWithImpl(this._value, this._then);

  final MpsMetrics _value;
  // ignore: unused_field
  final $Res Function(MpsMetrics) _then;

  @override
  $Res call({
    Object? incomingMps = freezed,
    Object? newMps = freezed,
    Object? outgoingMps = freezed,
  }) {
    return _then(_value.copyWith(
      incomingMps: incomingMps == freezed
          ? _value.incomingMps
          : incomingMps // ignore: cast_nullable_to_non_nullable
              as double,
      newMps: newMps == freezed
          ? _value.newMps
          : newMps // ignore: cast_nullable_to_non_nullable
              as double,
      outgoingMps: outgoingMps == freezed
          ? _value.outgoingMps
          : outgoingMps // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MpsMetricsCopyWith<$Res> implements $MpsMetricsCopyWith<$Res> {
  factory _$MpsMetricsCopyWith(
          _MpsMetrics value, $Res Function(_MpsMetrics) then) =
      __$MpsMetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'incoming') double incomingMps,
      @JsonKey(name: 'new') double newMps,
      @JsonKey(name: 'outgoing') double outgoingMps});
}

/// @nodoc
class __$MpsMetricsCopyWithImpl<$Res> extends _$MpsMetricsCopyWithImpl<$Res>
    implements _$MpsMetricsCopyWith<$Res> {
  __$MpsMetricsCopyWithImpl(
      _MpsMetrics _value, $Res Function(_MpsMetrics) _then)
      : super(_value, (v) => _then(v as _MpsMetrics));

  @override
  _MpsMetrics get _value => super._value as _MpsMetrics;

  @override
  $Res call({
    Object? incomingMps = freezed,
    Object? newMps = freezed,
    Object? outgoingMps = freezed,
  }) {
    return _then(_MpsMetrics(
      incomingMps: incomingMps == freezed
          ? _value.incomingMps
          : incomingMps // ignore: cast_nullable_to_non_nullable
              as double,
      newMps: newMps == freezed
          ? _value.newMps
          : newMps // ignore: cast_nullable_to_non_nullable
              as double,
      outgoingMps: outgoingMps == freezed
          ? _value.outgoingMps
          : outgoingMps // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MpsMetrics implements _MpsMetrics {
  _$_MpsMetrics(
      {@JsonKey(name: 'incoming') required this.incomingMps,
      @JsonKey(name: 'new') required this.newMps,
      @JsonKey(name: 'outgoing') required this.outgoingMps});

  factory _$_MpsMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_MpsMetricsFromJson(json);

  @override
  @JsonKey(name: 'incoming')
  final double incomingMps;
  @override
  @JsonKey(name: 'new')
  final double newMps;
  @override
  @JsonKey(name: 'outgoing')
  final double outgoingMps;

  @override
  String toString() {
    return 'MpsMetrics(incomingMps: $incomingMps, newMps: $newMps, outgoingMps: $outgoingMps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MpsMetrics &&
            (identical(other.incomingMps, incomingMps) ||
                const DeepCollectionEquality()
                    .equals(other.incomingMps, incomingMps)) &&
            (identical(other.newMps, newMps) ||
                const DeepCollectionEquality().equals(other.newMps, newMps)) &&
            (identical(other.outgoingMps, outgoingMps) ||
                const DeepCollectionEquality()
                    .equals(other.outgoingMps, outgoingMps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(incomingMps) ^
      const DeepCollectionEquality().hash(newMps) ^
      const DeepCollectionEquality().hash(outgoingMps);

  @JsonKey(ignore: true)
  @override
  _$MpsMetricsCopyWith<_MpsMetrics> get copyWith =>
      __$MpsMetricsCopyWithImpl<_MpsMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MpsMetricsToJson(this);
  }
}

abstract class _MpsMetrics implements MpsMetrics {
  factory _MpsMetrics(
      {@JsonKey(name: 'incoming') required double incomingMps,
      @JsonKey(name: 'new') required double newMps,
      @JsonKey(name: 'outgoing') required double outgoingMps}) = _$_MpsMetrics;

  factory _MpsMetrics.fromJson(Map<String, dynamic> json) =
      _$_MpsMetrics.fromJson;

  @override
  @JsonKey(name: 'incoming')
  double get incomingMps => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'new')
  double get newMps => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'outgoing')
  double get outgoingMps => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MpsMetricsCopyWith<_MpsMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
