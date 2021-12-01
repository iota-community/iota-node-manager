// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'tips_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TipsData _$TipsDataFromJson(Map<String, dynamic> json) {
  return _TipsData.fromJson(json);
}

/// @nodoc
class _$TipsDataTearOff {
  const _$TipsDataTearOff();

  _TipsData call(
      {@JsonKey(name: 'tipMessageIds') List<String>? tipMessageIds}) {
    return _TipsData(
      tipMessageIds: tipMessageIds,
    );
  }

  TipsData fromJson(Map<String, Object> json) {
    return TipsData.fromJson(json);
  }
}

/// @nodoc
const $TipsData = _$TipsDataTearOff();

/// @nodoc
mixin _$TipsData {
  @JsonKey(name: 'tipMessageIds')
  List<String>? get tipMessageIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TipsDataCopyWith<TipsData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TipsDataCopyWith<$Res> {
  factory $TipsDataCopyWith(TipsData value, $Res Function(TipsData) then) =
      _$TipsDataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'tipMessageIds') List<String>? tipMessageIds});
}

/// @nodoc
class _$TipsDataCopyWithImpl<$Res> implements $TipsDataCopyWith<$Res> {
  _$TipsDataCopyWithImpl(this._value, this._then);

  final TipsData _value;
  // ignore: unused_field
  final $Res Function(TipsData) _then;

  @override
  $Res call({
    Object? tipMessageIds = freezed,
  }) {
    return _then(_value.copyWith(
      tipMessageIds: tipMessageIds == freezed
          ? _value.tipMessageIds
          : tipMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
abstract class _$TipsDataCopyWith<$Res> implements $TipsDataCopyWith<$Res> {
  factory _$TipsDataCopyWith(_TipsData value, $Res Function(_TipsData) then) =
      __$TipsDataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'tipMessageIds') List<String>? tipMessageIds});
}

/// @nodoc
class __$TipsDataCopyWithImpl<$Res> extends _$TipsDataCopyWithImpl<$Res>
    implements _$TipsDataCopyWith<$Res> {
  __$TipsDataCopyWithImpl(_TipsData _value, $Res Function(_TipsData) _then)
      : super(_value, (v) => _then(v as _TipsData));

  @override
  _TipsData get _value => super._value as _TipsData;

  @override
  $Res call({
    Object? tipMessageIds = freezed,
  }) {
    return _then(_TipsData(
      tipMessageIds: tipMessageIds == freezed
          ? _value.tipMessageIds
          : tipMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TipsData implements _TipsData {
  _$_TipsData({@JsonKey(name: 'tipMessageIds') this.tipMessageIds});

  factory _$_TipsData.fromJson(Map<String, dynamic> json) =>
      _$$_TipsDataFromJson(json);

  @override
  @JsonKey(name: 'tipMessageIds')
  final List<String>? tipMessageIds;

  @override
  String toString() {
    return 'TipsData(tipMessageIds: $tipMessageIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TipsData &&
            (identical(other.tipMessageIds, tipMessageIds) ||
                const DeepCollectionEquality()
                    .equals(other.tipMessageIds, tipMessageIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tipMessageIds);

  @JsonKey(ignore: true)
  @override
  _$TipsDataCopyWith<_TipsData> get copyWith =>
      __$TipsDataCopyWithImpl<_TipsData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TipsDataToJson(this);
  }
}

abstract class _TipsData implements TipsData {
  factory _TipsData(
          {@JsonKey(name: 'tipMessageIds') List<String>? tipMessageIds}) =
      _$_TipsData;

  factory _TipsData.fromJson(Map<String, dynamic> json) = _$_TipsData.fromJson;

  @override
  @JsonKey(name: 'tipMessageIds')
  List<String>? get tipMessageIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$TipsDataCopyWith<_TipsData> get copyWith =>
      throw _privateConstructorUsedError;
}
