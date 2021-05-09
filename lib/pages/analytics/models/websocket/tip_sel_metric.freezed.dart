// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tip_sel_metric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipSelMetric _$TipSelMetricFromJson(Map<String, dynamic> json) {
  return _TipSelMetric.fromJson(json);
}

/// @nodoc
class _$TipSelMetricTearOff {
  const _$TipSelMetricTearOff();

  _TipSelMetric call({@JsonKey(name: 'duration') required double duration}) {
    return _TipSelMetric(
      duration: duration,
    );
  }

  TipSelMetric fromJson(Map<String, Object> json) {
    return TipSelMetric.fromJson(json);
  }
}

/// @nodoc
const $TipSelMetric = _$TipSelMetricTearOff();

/// @nodoc
mixin _$TipSelMetric {
  @JsonKey(name: 'duration')
  double get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipSelMetricCopyWith<TipSelMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipSelMetricCopyWith<$Res> {
  factory $TipSelMetricCopyWith(
          TipSelMetric value, $Res Function(TipSelMetric) then) =
      _$TipSelMetricCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'duration') double duration});
}

/// @nodoc
class _$TipSelMetricCopyWithImpl<$Res> implements $TipSelMetricCopyWith<$Res> {
  _$TipSelMetricCopyWithImpl(this._value, this._then);

  final TipSelMetric _value;
  // ignore: unused_field
  final $Res Function(TipSelMetric) _then;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$TipSelMetricCopyWith<$Res>
    implements $TipSelMetricCopyWith<$Res> {
  factory _$TipSelMetricCopyWith(
          _TipSelMetric value, $Res Function(_TipSelMetric) then) =
      __$TipSelMetricCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'duration') double duration});
}

/// @nodoc
class __$TipSelMetricCopyWithImpl<$Res> extends _$TipSelMetricCopyWithImpl<$Res>
    implements _$TipSelMetricCopyWith<$Res> {
  __$TipSelMetricCopyWithImpl(
      _TipSelMetric _value, $Res Function(_TipSelMetric) _then)
      : super(_value, (v) => _then(v as _TipSelMetric));

  @override
  _TipSelMetric get _value => super._value as _TipSelMetric;

  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_TipSelMetric(
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TipSelMetric implements _TipSelMetric {
  _$_TipSelMetric({@JsonKey(name: 'duration') required this.duration});

  factory _$_TipSelMetric.fromJson(Map<String, dynamic> json) =>
      _$_$_TipSelMetricFromJson(json);

  @override
  @JsonKey(name: 'duration')
  final double duration;

  @override
  String toString() {
    return 'TipSelMetric(duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TipSelMetric &&
            (identical(other.duration, duration) ||
                const DeepCollectionEquality()
                    .equals(other.duration, duration)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(duration);

  @JsonKey(ignore: true)
  @override
  _$TipSelMetricCopyWith<_TipSelMetric> get copyWith =>
      __$TipSelMetricCopyWithImpl<_TipSelMetric>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TipSelMetricToJson(this);
  }
}

abstract class _TipSelMetric implements TipSelMetric {
  factory _TipSelMetric({@JsonKey(name: 'duration') required double duration}) =
      _$_TipSelMetric;

  factory _TipSelMetric.fromJson(Map<String, dynamic> json) =
      _$_TipSelMetric.fromJson;

  @override
  @JsonKey(name: 'duration')
  double get duration => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TipSelMetricCopyWith<_TipSelMetric> get copyWith =>
      throw _privateConstructorUsedError;
}
