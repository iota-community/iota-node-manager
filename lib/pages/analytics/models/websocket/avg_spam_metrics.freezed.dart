// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'avg_spam_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AvgSpamMetrics _$AvgSpamMetricsFromJson(Map<String, dynamic> json) {
  return _AvgSpamMetrics.fromJson(json);
}

/// @nodoc
class _$AvgSpamMetricsTearOff {
  const _$AvgSpamMetricsTearOff();

  _AvgSpamMetrics call(
      {@JsonKey(name: 'newMsgs') required double newMsgs,
      @JsonKey(name: 'avgMsgs') required double avgMsgs}) {
    return _AvgSpamMetrics(
      newMsgs: newMsgs,
      avgMsgs: avgMsgs,
    );
  }

  AvgSpamMetrics fromJson(Map<String, Object> json) {
    return AvgSpamMetrics.fromJson(json);
  }
}

/// @nodoc
const $AvgSpamMetrics = _$AvgSpamMetricsTearOff();

/// @nodoc
mixin _$AvgSpamMetrics {
  @JsonKey(name: 'newMsgs')
  double get newMsgs => throw _privateConstructorUsedError;
  @JsonKey(name: 'avgMsgs')
  double get avgMsgs => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AvgSpamMetricsCopyWith<AvgSpamMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AvgSpamMetricsCopyWith<$Res> {
  factory $AvgSpamMetricsCopyWith(
          AvgSpamMetrics value, $Res Function(AvgSpamMetrics) then) =
      _$AvgSpamMetricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'newMsgs') double newMsgs,
      @JsonKey(name: 'avgMsgs') double avgMsgs});
}

/// @nodoc
class _$AvgSpamMetricsCopyWithImpl<$Res>
    implements $AvgSpamMetricsCopyWith<$Res> {
  _$AvgSpamMetricsCopyWithImpl(this._value, this._then);

  final AvgSpamMetrics _value;
  // ignore: unused_field
  final $Res Function(AvgSpamMetrics) _then;

  @override
  $Res call({
    Object? newMsgs = freezed,
    Object? avgMsgs = freezed,
  }) {
    return _then(_value.copyWith(
      newMsgs: newMsgs == freezed
          ? _value.newMsgs
          : newMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      avgMsgs: avgMsgs == freezed
          ? _value.avgMsgs
          : avgMsgs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$AvgSpamMetricsCopyWith<$Res>
    implements $AvgSpamMetricsCopyWith<$Res> {
  factory _$AvgSpamMetricsCopyWith(
          _AvgSpamMetrics value, $Res Function(_AvgSpamMetrics) then) =
      __$AvgSpamMetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'newMsgs') double newMsgs,
      @JsonKey(name: 'avgMsgs') double avgMsgs});
}

/// @nodoc
class __$AvgSpamMetricsCopyWithImpl<$Res>
    extends _$AvgSpamMetricsCopyWithImpl<$Res>
    implements _$AvgSpamMetricsCopyWith<$Res> {
  __$AvgSpamMetricsCopyWithImpl(
      _AvgSpamMetrics _value, $Res Function(_AvgSpamMetrics) _then)
      : super(_value, (v) => _then(v as _AvgSpamMetrics));

  @override
  _AvgSpamMetrics get _value => super._value as _AvgSpamMetrics;

  @override
  $Res call({
    Object? newMsgs = freezed,
    Object? avgMsgs = freezed,
  }) {
    return _then(_AvgSpamMetrics(
      newMsgs: newMsgs == freezed
          ? _value.newMsgs
          : newMsgs // ignore: cast_nullable_to_non_nullable
              as double,
      avgMsgs: avgMsgs == freezed
          ? _value.avgMsgs
          : avgMsgs // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AvgSpamMetrics implements _AvgSpamMetrics {
  _$_AvgSpamMetrics(
      {@JsonKey(name: 'newMsgs') required this.newMsgs,
      @JsonKey(name: 'avgMsgs') required this.avgMsgs});

  factory _$_AvgSpamMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_AvgSpamMetricsFromJson(json);

  @override
  @JsonKey(name: 'newMsgs')
  final double newMsgs;
  @override
  @JsonKey(name: 'avgMsgs')
  final double avgMsgs;

  @override
  String toString() {
    return 'AvgSpamMetrics(newMsgs: $newMsgs, avgMsgs: $avgMsgs)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AvgSpamMetrics &&
            (identical(other.newMsgs, newMsgs) ||
                const DeepCollectionEquality()
                    .equals(other.newMsgs, newMsgs)) &&
            (identical(other.avgMsgs, avgMsgs) ||
                const DeepCollectionEquality().equals(other.avgMsgs, avgMsgs)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(newMsgs) ^
      const DeepCollectionEquality().hash(avgMsgs);

  @JsonKey(ignore: true)
  @override
  _$AvgSpamMetricsCopyWith<_AvgSpamMetrics> get copyWith =>
      __$AvgSpamMetricsCopyWithImpl<_AvgSpamMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AvgSpamMetricsToJson(this);
  }
}

abstract class _AvgSpamMetrics implements AvgSpamMetrics {
  factory _AvgSpamMetrics(
      {@JsonKey(name: 'newMsgs') required double newMsgs,
      @JsonKey(name: 'avgMsgs') required double avgMsgs}) = _$_AvgSpamMetrics;

  factory _AvgSpamMetrics.fromJson(Map<String, dynamic> json) =
      _$_AvgSpamMetrics.fromJson;

  @override
  @JsonKey(name: 'newMsgs')
  double get newMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'avgMsgs')
  double get avgMsgs => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AvgSpamMetricsCopyWith<_AvgSpamMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
