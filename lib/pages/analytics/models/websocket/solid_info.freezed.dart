// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'solid_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SolidInfo _$SolidInfoFromJson(Map<String, dynamic> json) {
  return _SolidInfo.fromJson(json);
}

/// @nodoc
class _$SolidInfoTearOff {
  const _$SolidInfoTearOff();

  _SolidInfo call({@JsonKey(name: 'id') required String id}) {
    return _SolidInfo(
      id: id,
    );
  }

  SolidInfo fromJson(Map<String, Object> json) {
    return SolidInfo.fromJson(json);
  }
}

/// @nodoc
const $SolidInfo = _$SolidInfoTearOff();

/// @nodoc
mixin _$SolidInfo {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SolidInfoCopyWith<SolidInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SolidInfoCopyWith<$Res> {
  factory $SolidInfoCopyWith(SolidInfo value, $Res Function(SolidInfo) then) =
      _$SolidInfoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class _$SolidInfoCopyWithImpl<$Res> implements $SolidInfoCopyWith<$Res> {
  _$SolidInfoCopyWithImpl(this._value, this._then);

  final SolidInfo _value;
  // ignore: unused_field
  final $Res Function(SolidInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$SolidInfoCopyWith<$Res> implements $SolidInfoCopyWith<$Res> {
  factory _$SolidInfoCopyWith(
          _SolidInfo value, $Res Function(_SolidInfo) then) =
      __$SolidInfoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') String id});
}

/// @nodoc
class __$SolidInfoCopyWithImpl<$Res> extends _$SolidInfoCopyWithImpl<$Res>
    implements _$SolidInfoCopyWith<$Res> {
  __$SolidInfoCopyWithImpl(_SolidInfo _value, $Res Function(_SolidInfo) _then)
      : super(_value, (v) => _then(v as _SolidInfo));

  @override
  _SolidInfo get _value => super._value as _SolidInfo;

  @override
  $Res call({
    Object? id = freezed,
  }) {
    return _then(_SolidInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SolidInfo implements _SolidInfo {
  _$_SolidInfo({@JsonKey(name: 'id') required this.id});

  factory _$_SolidInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_SolidInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;

  @override
  String toString() {
    return 'SolidInfo(id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SolidInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(id);

  @JsonKey(ignore: true)
  @override
  _$SolidInfoCopyWith<_SolidInfo> get copyWith =>
      __$SolidInfoCopyWithImpl<_SolidInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SolidInfoToJson(this);
  }
}

abstract class _SolidInfo implements SolidInfo {
  factory _SolidInfo({@JsonKey(name: 'id') required String id}) = _$_SolidInfo;

  factory _SolidInfo.fromJson(Map<String, dynamic> json) =
      _$_SolidInfo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SolidInfoCopyWith<_SolidInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
