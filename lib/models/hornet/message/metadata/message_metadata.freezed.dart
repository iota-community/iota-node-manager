// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_metadata.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageMetadata _$MessageMetadataFromJson(Map<String, dynamic> json) {
  return _MessageMetadata.fromJson(json);
}

/// @nodoc
class _$MessageMetadataTearOff {
  const _$MessageMetadataTearOff();

  _MessageMetadata call(
      {@JsonKey(name: 'data') required MessageMetadataData data}) {
    return _MessageMetadata(
      data: data,
    );
  }

  MessageMetadata fromJson(Map<String, Object?> json) {
    return MessageMetadata.fromJson(json);
  }
}

/// @nodoc
const $MessageMetadata = _$MessageMetadataTearOff();

/// @nodoc
mixin _$MessageMetadata {
  @JsonKey(name: 'data')
  MessageMetadataData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageMetadataCopyWith<MessageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMetadataCopyWith<$Res> {
  factory $MessageMetadataCopyWith(
          MessageMetadata value, $Res Function(MessageMetadata) then) =
      _$MessageMetadataCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') MessageMetadataData data});

  $MessageMetadataDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MessageMetadataCopyWithImpl<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  _$MessageMetadataCopyWithImpl(this._value, this._then);

  final MessageMetadata _value;
  // ignore: unused_field
  final $Res Function(MessageMetadata) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessageMetadataData,
    ));
  }

  @override
  $MessageMetadataDataCopyWith<$Res> get data {
    return $MessageMetadataDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$MessageMetadataCopyWith<$Res>
    implements $MessageMetadataCopyWith<$Res> {
  factory _$MessageMetadataCopyWith(
          _MessageMetadata value, $Res Function(_MessageMetadata) then) =
      __$MessageMetadataCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') MessageMetadataData data});

  @override
  $MessageMetadataDataCopyWith<$Res> get data;
}

/// @nodoc
class __$MessageMetadataCopyWithImpl<$Res>
    extends _$MessageMetadataCopyWithImpl<$Res>
    implements _$MessageMetadataCopyWith<$Res> {
  __$MessageMetadataCopyWithImpl(
      _MessageMetadata _value, $Res Function(_MessageMetadata) _then)
      : super(_value, (v) => _then(v as _MessageMetadata));

  @override
  _MessageMetadata get _value => super._value as _MessageMetadata;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_MessageMetadata(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessageMetadataData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageMetadata implements _MessageMetadata {
  _$_MessageMetadata({@JsonKey(name: 'data') required this.data});

  factory _$_MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$$_MessageMetadataFromJson(json);

  @override
  @JsonKey(name: 'data')
  final MessageMetadataData data;

  @override
  String toString() {
    return 'MessageMetadata(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageMetadata &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$MessageMetadataCopyWith<_MessageMetadata> get copyWith =>
      __$MessageMetadataCopyWithImpl<_MessageMetadata>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageMetadataToJson(this);
  }
}

abstract class _MessageMetadata implements MessageMetadata {
  factory _MessageMetadata(
          {@JsonKey(name: 'data') required MessageMetadataData data}) =
      _$_MessageMetadata;

  factory _MessageMetadata.fromJson(Map<String, dynamic> json) =
      _$_MessageMetadata.fromJson;

  @override
  @JsonKey(name: 'data')
  MessageMetadataData get data;
  @override
  @JsonKey(ignore: true)
  _$MessageMetadataCopyWith<_MessageMetadata> get copyWith =>
      throw _privateConstructorUsedError;
}
