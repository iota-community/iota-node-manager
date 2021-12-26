// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Info _$InfoFromJson(Map<String, dynamic> json) {
  return _Info.fromJson(json);
}

/// @nodoc
class _$InfoTearOff {
  const _$InfoTearOff();

  _Info call({@JsonKey(name: 'data') required InfoData data}) {
    return _Info(
      data: data,
    );
  }

  Info fromJson(Map<String, Object?> json) {
    return Info.fromJson(json);
  }
}

/// @nodoc
const $Info = _$InfoTearOff();

/// @nodoc
mixin _$Info {
  @JsonKey(name: 'data')
  InfoData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfoCopyWith<Info> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfoCopyWith<$Res> {
  factory $InfoCopyWith(Info value, $Res Function(Info) then) =
      _$InfoCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') InfoData data});

  $InfoDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InfoCopyWithImpl<$Res> implements $InfoCopyWith<$Res> {
  _$InfoCopyWithImpl(this._value, this._then);

  final Info _value;
  // ignore: unused_field
  final $Res Function(Info) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InfoData,
    ));
  }

  @override
  $InfoDataCopyWith<$Res> get data {
    return $InfoDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$InfoCopyWith<$Res> implements $InfoCopyWith<$Res> {
  factory _$InfoCopyWith(_Info value, $Res Function(_Info) then) =
      __$InfoCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') InfoData data});

  @override
  $InfoDataCopyWith<$Res> get data;
}

/// @nodoc
class __$InfoCopyWithImpl<$Res> extends _$InfoCopyWithImpl<$Res>
    implements _$InfoCopyWith<$Res> {
  __$InfoCopyWithImpl(_Info _value, $Res Function(_Info) _then)
      : super(_value, (v) => _then(v as _Info));

  @override
  _Info get _value => super._value as _Info;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Info(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as InfoData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Info implements _Info {
  _$_Info({@JsonKey(name: 'data') required this.data});

  factory _$_Info.fromJson(Map<String, dynamic> json) => _$$_InfoFromJson(json);

  @override
  @JsonKey(name: 'data')
  final InfoData data;

  @override
  String toString() {
    return 'Info(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Info &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$InfoCopyWith<_Info> get copyWith =>
      __$InfoCopyWithImpl<_Info>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfoToJson(this);
  }
}

abstract class _Info implements Info {
  factory _Info({@JsonKey(name: 'data') required InfoData data}) = _$_Info;

  factory _Info.fromJson(Map<String, dynamic> json) = _$_Info.fromJson;

  @override
  @JsonKey(name: 'data')
  InfoData get data;
  @override
  @JsonKey(ignore: true)
  _$InfoCopyWith<_Info> get copyWith => throw _privateConstructorUsedError;
}
