// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'sync_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SyncStatus _$SyncStatusFromJson(Map<String, dynamic> json) {
  return _SyncStatus.fromJson(json);
}

/// @nodoc
class _$SyncStatusTearOff {
  const _$SyncStatusTearOff();

  _SyncStatus call(
      {@JsonKey(name: 'cmi') required double cmi,
      @JsonKey(name: 'lmi') required double lmi}) {
    return _SyncStatus(
      cmi: cmi,
      lmi: lmi,
    );
  }

  SyncStatus fromJson(Map<String, Object> json) {
    return SyncStatus.fromJson(json);
  }
}

/// @nodoc
const $SyncStatus = _$SyncStatusTearOff();

/// @nodoc
mixin _$SyncStatus {
  @JsonKey(name: 'cmi')
  double get cmi => throw _privateConstructorUsedError;
  @JsonKey(name: 'lmi')
  double get lmi => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SyncStatusCopyWith<SyncStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncStatusCopyWith<$Res> {
  factory $SyncStatusCopyWith(
          SyncStatus value, $Res Function(SyncStatus) then) =
      _$SyncStatusCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'cmi') double cmi, @JsonKey(name: 'lmi') double lmi});
}

/// @nodoc
class _$SyncStatusCopyWithImpl<$Res> implements $SyncStatusCopyWith<$Res> {
  _$SyncStatusCopyWithImpl(this._value, this._then);

  final SyncStatus _value;
  // ignore: unused_field
  final $Res Function(SyncStatus) _then;

  @override
  $Res call({
    Object? cmi = freezed,
    Object? lmi = freezed,
  }) {
    return _then(_value.copyWith(
      cmi: cmi == freezed
          ? _value.cmi
          : cmi // ignore: cast_nullable_to_non_nullable
              as double,
      lmi: lmi == freezed
          ? _value.lmi
          : lmi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$SyncStatusCopyWith<$Res> implements $SyncStatusCopyWith<$Res> {
  factory _$SyncStatusCopyWith(
          _SyncStatus value, $Res Function(_SyncStatus) then) =
      __$SyncStatusCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'cmi') double cmi, @JsonKey(name: 'lmi') double lmi});
}

/// @nodoc
class __$SyncStatusCopyWithImpl<$Res> extends _$SyncStatusCopyWithImpl<$Res>
    implements _$SyncStatusCopyWith<$Res> {
  __$SyncStatusCopyWithImpl(
      _SyncStatus _value, $Res Function(_SyncStatus) _then)
      : super(_value, (v) => _then(v as _SyncStatus));

  @override
  _SyncStatus get _value => super._value as _SyncStatus;

  @override
  $Res call({
    Object? cmi = freezed,
    Object? lmi = freezed,
  }) {
    return _then(_SyncStatus(
      cmi: cmi == freezed
          ? _value.cmi
          : cmi // ignore: cast_nullable_to_non_nullable
              as double,
      lmi: lmi == freezed
          ? _value.lmi
          : lmi // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SyncStatus implements _SyncStatus {
  _$_SyncStatus(
      {@JsonKey(name: 'cmi') required this.cmi,
      @JsonKey(name: 'lmi') required this.lmi});

  factory _$_SyncStatus.fromJson(Map<String, dynamic> json) =>
      _$_$_SyncStatusFromJson(json);

  @override
  @JsonKey(name: 'cmi')
  final double cmi;
  @override
  @JsonKey(name: 'lmi')
  final double lmi;

  @override
  String toString() {
    return 'SyncStatus(cmi: $cmi, lmi: $lmi)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SyncStatus &&
            (identical(other.cmi, cmi) ||
                const DeepCollectionEquality().equals(other.cmi, cmi)) &&
            (identical(other.lmi, lmi) ||
                const DeepCollectionEquality().equals(other.lmi, lmi)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(cmi) ^
      const DeepCollectionEquality().hash(lmi);

  @JsonKey(ignore: true)
  @override
  _$SyncStatusCopyWith<_SyncStatus> get copyWith =>
      __$SyncStatusCopyWithImpl<_SyncStatus>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SyncStatusToJson(this);
  }
}

abstract class _SyncStatus implements SyncStatus {
  factory _SyncStatus(
      {@JsonKey(name: 'cmi') required double cmi,
      @JsonKey(name: 'lmi') required double lmi}) = _$_SyncStatus;

  factory _SyncStatus.fromJson(Map<String, dynamic> json) =
      _$_SyncStatus.fromJson;

  @override
  @JsonKey(name: 'cmi')
  double get cmi => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'lmi')
  double get lmi => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SyncStatusCopyWith<_SyncStatus> get copyWith =>
      throw _privateConstructorUsedError;
}
