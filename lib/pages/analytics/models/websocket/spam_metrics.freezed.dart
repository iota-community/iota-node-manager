// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'spam_metrics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SpamMetrics _$SpamMetricsFromJson(Map<String, dynamic> json) {
  return _SpamMetrics.fromJson(json);
}

/// @nodoc
class _$SpamMetricsTearOff {
  const _$SpamMetricsTearOff();

  _SpamMetrics call(
      {@JsonKey(name: 'tipselect') required double tipSelect,
      @JsonKey(name: 'pow') required double pow}) {
    return _SpamMetrics(
      tipSelect: tipSelect,
      pow: pow,
    );
  }

  SpamMetrics fromJson(Map<String, Object> json) {
    return SpamMetrics.fromJson(json);
  }
}

/// @nodoc
const $SpamMetrics = _$SpamMetricsTearOff();

/// @nodoc
mixin _$SpamMetrics {
  @JsonKey(name: 'tipselect')
  double get tipSelect => throw _privateConstructorUsedError;
  @JsonKey(name: 'pow')
  double get pow => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SpamMetricsCopyWith<SpamMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SpamMetricsCopyWith<$Res> {
  factory $SpamMetricsCopyWith(
          SpamMetrics value, $Res Function(SpamMetrics) then) =
      _$SpamMetricsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'tipselect') double tipSelect,
      @JsonKey(name: 'pow') double pow});
}

/// @nodoc
class _$SpamMetricsCopyWithImpl<$Res> implements $SpamMetricsCopyWith<$Res> {
  _$SpamMetricsCopyWithImpl(this._value, this._then);

  final SpamMetrics _value;
  // ignore: unused_field
  final $Res Function(SpamMetrics) _then;

  @override
  $Res call({
    Object? tipSelect = freezed,
    Object? pow = freezed,
  }) {
    return _then(_value.copyWith(
      tipSelect: tipSelect == freezed
          ? _value.tipSelect
          : tipSelect // ignore: cast_nullable_to_non_nullable
              as double,
      pow: pow == freezed
          ? _value.pow
          : pow // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SpamMetricsCopyWith<$Res>
    implements $SpamMetricsCopyWith<$Res> {
  factory _$SpamMetricsCopyWith(
          _SpamMetrics value, $Res Function(_SpamMetrics) then) =
      __$SpamMetricsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'tipselect') double tipSelect,
      @JsonKey(name: 'pow') double pow});
}

/// @nodoc
class __$SpamMetricsCopyWithImpl<$Res> extends _$SpamMetricsCopyWithImpl<$Res>
    implements _$SpamMetricsCopyWith<$Res> {
  __$SpamMetricsCopyWithImpl(
      _SpamMetrics _value, $Res Function(_SpamMetrics) _then)
      : super(_value, (v) => _then(v as _SpamMetrics));

  @override
  _SpamMetrics get _value => super._value as _SpamMetrics;

  @override
  $Res call({
    Object? tipSelect = freezed,
    Object? pow = freezed,
  }) {
    return _then(_SpamMetrics(
      tipSelect: tipSelect == freezed
          ? _value.tipSelect
          : tipSelect // ignore: cast_nullable_to_non_nullable
              as double,
      pow: pow == freezed
          ? _value.pow
          : pow // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SpamMetrics implements _SpamMetrics {
  _$_SpamMetrics(
      {@JsonKey(name: 'tipselect') required this.tipSelect,
      @JsonKey(name: 'pow') required this.pow});

  factory _$_SpamMetrics.fromJson(Map<String, dynamic> json) =>
      _$_$_SpamMetricsFromJson(json);

  @override
  @JsonKey(name: 'tipselect')
  final double tipSelect;
  @override
  @JsonKey(name: 'pow')
  final double pow;

  @override
  String toString() {
    return 'SpamMetrics(tipSelect: $tipSelect, pow: $pow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpamMetrics &&
            (identical(other.tipSelect, tipSelect) ||
                const DeepCollectionEquality()
                    .equals(other.tipSelect, tipSelect)) &&
            (identical(other.pow, pow) ||
                const DeepCollectionEquality().equals(other.pow, pow)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tipSelect) ^
      const DeepCollectionEquality().hash(pow);

  @JsonKey(ignore: true)
  @override
  _$SpamMetricsCopyWith<_SpamMetrics> get copyWith =>
      __$SpamMetricsCopyWithImpl<_SpamMetrics>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SpamMetricsToJson(this);
  }
}

abstract class _SpamMetrics implements SpamMetrics {
  factory _SpamMetrics(
      {@JsonKey(name: 'tipselect') required double tipSelect,
      @JsonKey(name: 'pow') required double pow}) = _$_SpamMetrics;

  factory _SpamMetrics.fromJson(Map<String, dynamic> json) =
      _$_SpamMetrics.fromJson;

  @override
  @JsonKey(name: 'tipselect')
  double get tipSelect => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'pow')
  double get pow => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SpamMetricsCopyWith<_SpamMetrics> get copyWith =>
      throw _privateConstructorUsedError;
}
