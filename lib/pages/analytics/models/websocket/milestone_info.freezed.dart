// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'milestone_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MileStoneInfo _$MileStoneInfoFromJson(Map<String, dynamic> json) {
  return _MileStoneInfo.fromJson(json);
}

/// @nodoc
class _$MileStoneInfoTearOff {
  const _$MileStoneInfoTearOff();

  _MileStoneInfo call({@JsonKey(name: 'id') required String total}) {
    return _MileStoneInfo(
      total: total,
    );
  }

  MileStoneInfo fromJson(Map<String, Object> json) {
    return MileStoneInfo.fromJson(json);
  }
}

/// @nodoc
const $MileStoneInfo = _$MileStoneInfoTearOff();

/// @nodoc
mixin _$MileStoneInfo {
  @JsonKey(name: 'id')
  String get total => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MileStoneInfoCopyWith<MileStoneInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MileStoneInfoCopyWith<$Res> {
  factory $MileStoneInfoCopyWith(
          MileStoneInfo value, $Res Function(MileStoneInfo) then) =
      _$MileStoneInfoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'id') String total});
}

/// @nodoc
class _$MileStoneInfoCopyWithImpl<$Res>
    implements $MileStoneInfoCopyWith<$Res> {
  _$MileStoneInfoCopyWithImpl(this._value, this._then);

  final MileStoneInfo _value;
  // ignore: unused_field
  final $Res Function(MileStoneInfo) _then;

  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$MileStoneInfoCopyWith<$Res>
    implements $MileStoneInfoCopyWith<$Res> {
  factory _$MileStoneInfoCopyWith(
          _MileStoneInfo value, $Res Function(_MileStoneInfo) then) =
      __$MileStoneInfoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'id') String total});
}

/// @nodoc
class __$MileStoneInfoCopyWithImpl<$Res>
    extends _$MileStoneInfoCopyWithImpl<$Res>
    implements _$MileStoneInfoCopyWith<$Res> {
  __$MileStoneInfoCopyWithImpl(
      _MileStoneInfo _value, $Res Function(_MileStoneInfo) _then)
      : super(_value, (v) => _then(v as _MileStoneInfo));

  @override
  _MileStoneInfo get _value => super._value as _MileStoneInfo;

  @override
  $Res call({
    Object? total = freezed,
  }) {
    return _then(_MileStoneInfo(
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MileStoneInfo implements _MileStoneInfo {
  _$_MileStoneInfo({@JsonKey(name: 'id') required this.total});

  factory _$_MileStoneInfo.fromJson(Map<String, dynamic> json) =>
      _$_$_MileStoneInfoFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String total;

  @override
  String toString() {
    return 'MileStoneInfo(total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MileStoneInfo &&
            (identical(other.total, total) ||
                const DeepCollectionEquality().equals(other.total, total)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(total);

  @JsonKey(ignore: true)
  @override
  _$MileStoneInfoCopyWith<_MileStoneInfo> get copyWith =>
      __$MileStoneInfoCopyWithImpl<_MileStoneInfo>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MileStoneInfoToJson(this);
  }
}

abstract class _MileStoneInfo implements MileStoneInfo {
  factory _MileStoneInfo({@JsonKey(name: 'id') required String total}) =
      _$_MileStoneInfo;

  factory _MileStoneInfo.fromJson(Map<String, dynamic> json) =
      _$_MileStoneInfo.fromJson;

  @override
  @JsonKey(name: 'id')
  String get total => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MileStoneInfoCopyWith<_MileStoneInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
