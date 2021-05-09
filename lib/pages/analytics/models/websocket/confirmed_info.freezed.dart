// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'confirmed_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConfirmedInfo _$ConfirmedInfoFromJson(Map<String, dynamic> json) {
  return _ConfirmedInfo.fromJson(json);
}

/// @nodoc
class _$ConfirmedInfoTearOff {
  const _$ConfirmedInfoTearOff();

  _ConfirmedInfo call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'excluded_ids') required List<String> excludedIds}) {
    return _ConfirmedInfo(
      id: id,
      excludedIds: excludedIds,
    );
  }

  ConfirmedInfo fromJson(Map<String, Object> json) {
    return ConfirmedInfo.fromJson(json);
  }
}

/// @nodoc
const $ConfirmedInfo = _$ConfirmedInfoTearOff();

/// @nodoc
mixin _$ConfirmedInfo {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'excluded_ids')
  List<String> get excludedIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConfirmedInfoCopyWith<ConfirmedInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConfirmedInfoCopyWith<$Res> {
  factory $ConfirmedInfoCopyWith(
          ConfirmedInfo value, $Res Function(ConfirmedInfo) then) =
      _$ConfirmedInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'excluded_ids') List<String> excludedIds});
}

/// @nodoc
class _$ConfirmedInfoCopyWithImpl<$Res>
    implements $ConfirmedInfoCopyWith<$Res> {
  _$ConfirmedInfoCopyWithImpl(this._value, this._then);

  final ConfirmedInfo _value;
  // ignore: unused_field
  final $Res Function(ConfirmedInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? excludedIds = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      excludedIds: excludedIds == freezed
          ? _value.excludedIds
          : excludedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$ConfirmedInfoCopyWith<$Res>
    implements $ConfirmedInfoCopyWith<$Res> {
  factory _$ConfirmedInfoCopyWith(
          _ConfirmedInfo value, $Res Function(_ConfirmedInfo) then) =
      __$ConfirmedInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'excluded_ids') List<String> excludedIds});
}

/// @nodoc
class __$ConfirmedInfoCopyWithImpl<$Res>
    extends _$ConfirmedInfoCopyWithImpl<$Res>
    implements _$ConfirmedInfoCopyWith<$Res> {
  __$ConfirmedInfoCopyWithImpl(
      _ConfirmedInfo _value, $Res Function(_ConfirmedInfo) _then)
      : super(_value, (v) => _then(v as _ConfirmedInfo));

  @override
  _ConfirmedInfo get _value => super._value as _ConfirmedInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? excludedIds = freezed,
  }) {
    return _then(_ConfirmedInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      excludedIds: excludedIds == freezed
          ? _value.excludedIds
          : excludedIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConfirmedInfo implements _ConfirmedInfo {
  _$_ConfirmedInfo(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'excluded_ids') required this.excludedIds});

  factory _$_ConfirmedInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_ConfirmedInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'excluded_ids')
  final List<String> excludedIds;

  @override
  String toString() {
    return 'ConfirmedInfo(id: $id, excludedIds: $excludedIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ConfirmedInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.excludedIds, excludedIds) ||
                const DeepCollectionEquality()
                    .equals(other.excludedIds, excludedIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(excludedIds);

  @JsonKey(ignore: true)
  @override
  _$ConfirmedInfoCopyWith<_ConfirmedInfo> get copyWith =>
      __$ConfirmedInfoCopyWithImpl<_ConfirmedInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ConfirmedInfoToJson(this);
  }
}

abstract class _ConfirmedInfo implements ConfirmedInfo {
  factory _ConfirmedInfo(
          {@JsonKey(name: 'id') required String id,
          @JsonKey(name: 'excluded_ids') required List<String> excludedIds}) =
      _$_ConfirmedInfo;

  factory _ConfirmedInfo.fromJson(Map<String, dynamic> json) =
      _$_ConfirmedInfo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'excluded_ids')
  List<String> get excludedIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ConfirmedInfoCopyWith<_ConfirmedInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
