// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'db_cleanup.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DbCleanup _$DbCleanupFromJson(Map<String, dynamic> json) {
  return _DbCleanup.fromJson(json);
}

/// @nodoc
class _$DbCleanupTearOff {
  const _$DbCleanupTearOff();

  _DbCleanup call(
      {@JsonKey(name: 'start') required double start,
      @JsonKey(name: 'end') required double end}) {
    return _DbCleanup(
      start: start,
      end: end,
    );
  }

  DbCleanup fromJson(Map<String, Object> json) {
    return DbCleanup.fromJson(json);
  }
}

/// @nodoc
const $DbCleanup = _$DbCleanupTearOff();

/// @nodoc
mixin _$DbCleanup {
  @JsonKey(name: 'start')
  double get start => throw _privateConstructorUsedError;
  @JsonKey(name: 'end')
  double get end => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DbCleanupCopyWith<DbCleanup> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DbCleanupCopyWith<$Res> {
  factory $DbCleanupCopyWith(DbCleanup value, $Res Function(DbCleanup) then) =
      _$DbCleanupCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'start') double start, @JsonKey(name: 'end') double end});
}

/// @nodoc
class _$DbCleanupCopyWithImpl<$Res> implements $DbCleanupCopyWith<$Res> {
  _$DbCleanupCopyWithImpl(this._value, this._then);

  final DbCleanup _value;
  // ignore: unused_field
  final $Res Function(DbCleanup) _then;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_value.copyWith(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$DbCleanupCopyWith<$Res> implements $DbCleanupCopyWith<$Res> {
  factory _$DbCleanupCopyWith(
          _DbCleanup value, $Res Function(_DbCleanup) then) =
      __$DbCleanupCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'start') double start, @JsonKey(name: 'end') double end});
}

/// @nodoc
class __$DbCleanupCopyWithImpl<$Res> extends _$DbCleanupCopyWithImpl<$Res>
    implements _$DbCleanupCopyWith<$Res> {
  __$DbCleanupCopyWithImpl(_DbCleanup _value, $Res Function(_DbCleanup) _then)
      : super(_value, (v) => _then(v as _DbCleanup));

  @override
  _DbCleanup get _value => super._value as _DbCleanup;

  @override
  $Res call({
    Object? start = freezed,
    Object? end = freezed,
  }) {
    return _then(_DbCleanup(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DbCleanup implements _DbCleanup {
  _$_DbCleanup(
      {@JsonKey(name: 'start') required this.start,
      @JsonKey(name: 'end') required this.end});

  factory _$_DbCleanup.fromJson(Map<String, dynamic> json) =>
      _$_$_DbCleanupFromJson(json);

  @override
  @JsonKey(name: 'start')
  final double start;
  @override
  @JsonKey(name: 'end')
  final double end;

  @override
  String toString() {
    return 'DbCleanup(start: $start, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DbCleanup &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end);

  @JsonKey(ignore: true)
  @override
  _$DbCleanupCopyWith<_DbCleanup> get copyWith =>
      __$DbCleanupCopyWithImpl<_DbCleanup>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_DbCleanupToJson(this);
  }
}

abstract class _DbCleanup implements DbCleanup {
  factory _DbCleanup(
      {@JsonKey(name: 'start') required double start,
      @JsonKey(name: 'end') required double end}) = _$_DbCleanup;

  factory _DbCleanup.fromJson(Map<String, dynamic> json) =
      _$_DbCleanup.fromJson;

  @override
  @JsonKey(name: 'start')
  double get start => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'end')
  double get end => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$DbCleanupCopyWith<_DbCleanup> get copyWith =>
      throw _privateConstructorUsedError;
}
