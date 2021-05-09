// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'tip_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipInfo _$TipInfoFromJson(Map<String, dynamic> json) {
  return _TipInfo.fromJson(json);
}

/// @nodoc
class _$TipInfoTearOff {
  const _$TipInfoTearOff();

  _TipInfo call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'is_tip') required bool isTip}) {
    return _TipInfo(
      id: id,
      isTip: isTip,
    );
  }

  TipInfo fromJson(Map<String, Object> json) {
    return TipInfo.fromJson(json);
  }
}

/// @nodoc
const $TipInfo = _$TipInfoTearOff();

/// @nodoc
mixin _$TipInfo {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_tip')
  bool get isTip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipInfoCopyWith<TipInfo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipInfoCopyWith<$Res> {
  factory $TipInfoCopyWith(TipInfo value, $Res Function(TipInfo) then) =
      _$TipInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'is_tip') bool isTip});
}

/// @nodoc
class _$TipInfoCopyWithImpl<$Res> implements $TipInfoCopyWith<$Res> {
  _$TipInfoCopyWithImpl(this._value, this._then);

  final TipInfo _value;
  // ignore: unused_field
  final $Res Function(TipInfo) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? isTip = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isTip: isTip == freezed
          ? _value.isTip
          : isTip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$TipInfoCopyWith<$Res> implements $TipInfoCopyWith<$Res> {
  factory _$TipInfoCopyWith(_TipInfo value, $Res Function(_TipInfo) then) =
      __$TipInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id, @JsonKey(name: 'is_tip') bool isTip});
}

/// @nodoc
class __$TipInfoCopyWithImpl<$Res> extends _$TipInfoCopyWithImpl<$Res>
    implements _$TipInfoCopyWith<$Res> {
  __$TipInfoCopyWithImpl(_TipInfo _value, $Res Function(_TipInfo) _then)
      : super(_value, (v) => _then(v as _TipInfo));

  @override
  _TipInfo get _value => super._value as _TipInfo;

  @override
  $Res call({
    Object? id = freezed,
    Object? isTip = freezed,
  }) {
    return _then(_TipInfo(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      isTip: isTip == freezed
          ? _value.isTip
          : isTip // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TipInfo implements _TipInfo {
  _$_TipInfo(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'is_tip') required this.isTip});

  factory _$_TipInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_TipInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'is_tip')
  final bool isTip;

  @override
  String toString() {
    return 'TipInfo(id: $id, isTip: $isTip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TipInfo &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.isTip, isTip) ||
                const DeepCollectionEquality().equals(other.isTip, isTip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(isTip);

  @JsonKey(ignore: true)
  @override
  _$TipInfoCopyWith<_TipInfo> get copyWith =>
      __$TipInfoCopyWithImpl<_TipInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TipInfoToJson(this);
  }
}

abstract class _TipInfo implements TipInfo {
  factory _TipInfo(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'is_tip') required bool isTip}) = _$_TipInfo;

  factory _TipInfo.fromJson(Map<String, dynamic> json) = _$_TipInfo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_tip')
  bool get isTip => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TipInfoCopyWith<_TipInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
