// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'db_size_metric.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DbSizeMetric _$DbSizeMetricFromJson(Map<String, dynamic> json) {
  return _DbSizeMetric.fromJson(json);
}

/// @nodoc
class _$DbSizeMetricTearOff {
  const _$DbSizeMetricTearOff();

  _DbSizeMetric call(
      {@JsonKey(name: 'total') required double total,
      @JsonKey(name: 'ts') required double ts}) {
    return _DbSizeMetric(
      total: total,
      ts: ts,
    );
  }

  DbSizeMetric fromJson(Map<String, Object> json) {
    return DbSizeMetric.fromJson(json);
  }
}

/// @nodoc
const $DbSizeMetric = _$DbSizeMetricTearOff();

/// @nodoc
mixin _$DbSizeMetric {
  @JsonKey(name: 'total')
  double get total => throw _privateConstructorUsedError;
  @JsonKey(name: 'ts')
  double get ts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DbSizeMetricCopyWith<DbSizeMetric> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbSizeMetricCopyWith<$Res> {
  factory $DbSizeMetricCopyWith(
          DbSizeMetric value, $Res Function(DbSizeMetric) then) =
      _$DbSizeMetricCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'total') double total, @JsonKey(name: 'ts') double ts});
}

/// @nodoc
class _$DbSizeMetricCopyWithImpl<$Res> implements $DbSizeMetricCopyWith<$Res> {
  _$DbSizeMetricCopyWithImpl(this._value, this._then);

  final DbSizeMetric _value;
  // ignore: unused_field
  final $Res Function(DbSizeMetric) _then;

  @override
  $Res call({
    Object? total = freezed,
    Object? ts = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DbSizeMetricCopyWith<$Res>
    implements $DbSizeMetricCopyWith<$Res> {
  factory _$DbSizeMetricCopyWith(
          _DbSizeMetric value, $Res Function(_DbSizeMetric) then) =
      __$DbSizeMetricCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'total') double total, @JsonKey(name: 'ts') double ts});
}

/// @nodoc
class __$DbSizeMetricCopyWithImpl<$Res> extends _$DbSizeMetricCopyWithImpl<$Res>
    implements _$DbSizeMetricCopyWith<$Res> {
  __$DbSizeMetricCopyWithImpl(
      _DbSizeMetric _value, $Res Function(_DbSizeMetric) _then)
      : super(_value, (v) => _then(v as _DbSizeMetric));

  @override
  _DbSizeMetric get _value => super._value as _DbSizeMetric;

  @override
  $Res call({
    Object? total = freezed,
    Object? ts = freezed,
  }) {
    return _then(_DbSizeMetric(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
      ts: ts == freezed
          ? _value.ts
          : ts // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DbSizeMetric implements _DbSizeMetric {
  _$_DbSizeMetric(
      {@JsonKey(name: 'total') required this.total,
      @JsonKey(name: 'ts') required this.ts});

  factory _$_DbSizeMetric.fromJson(Map<String, dynamic> json) =>
      _$_$_DbSizeMetricFromJson(json);

  @override
  @JsonKey(name: 'total')
  final double total;
  @override
  @JsonKey(name: 'ts')
  final double ts;

  @override
  String toString() {
    return 'DbSizeMetric(total: $total, ts: $ts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DbSizeMetric &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)) &&
            (identical(other.ts, ts) ||
                const DeepCollectionEquality().equals(other.ts, ts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(total) ^
      const DeepCollectionEquality().hash(ts);

  @JsonKey(ignore: true)
  @override
  _$DbSizeMetricCopyWith<_DbSizeMetric> get copyWith =>
      __$DbSizeMetricCopyWithImpl<_DbSizeMetric>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DbSizeMetricToJson(this);
  }
}

abstract class _DbSizeMetric implements DbSizeMetric {
  factory _DbSizeMetric(
      {@JsonKey(name: 'total') required double total,
      @JsonKey(name: 'ts') required double ts}) = _$_DbSizeMetric;

  factory _DbSizeMetric.fromJson(Map<String, dynamic> json) =
      _$_DbSizeMetric.fromJson;

  @override
  @JsonKey(name: 'total')
  double get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'ts')
  double get ts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DbSizeMetricCopyWith<_DbSizeMetric> get copyWith =>
      throw _privateConstructorUsedError;
}
