// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'message_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageData _$MessageDataFromJson(Map<String, dynamic> json) {
  return _MessageData.fromJson(json);
}

/// @nodoc
class _$MessageDataTearOff {
  const _$MessageDataTearOff();

  _MessageData call(
      {@JsonKey(name: 'networkId') required String networkId,
      @JsonKey(name: 'parentMessageIds') required List<String> parentMessageIds,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'nonce') required String nonce}) {
    return _MessageData(
      networkId: networkId,
      parentMessageIds: parentMessageIds,
      payload: payload,
      nonce: nonce,
    );
  }

  MessageData fromJson(Map<String, Object> json) {
    return MessageData.fromJson(json);
  }
}

/// @nodoc
const $MessageData = _$MessageDataTearOff();

/// @nodoc
mixin _$MessageData {
  @JsonKey(name: 'networkId')
  String get networkId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentMessageIds')
  List<String> get parentMessageIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'payload')
  Payload? get payload => throw _privateConstructorUsedError;
  @JsonKey(name: 'nonce')
  String get nonce => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageDataCopyWith<MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageDataCopyWith<$Res> {
  factory $MessageDataCopyWith(
          MessageData value, $Res Function(MessageData) then) =
      _$MessageDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'networkId') String networkId,
      @JsonKey(name: 'parentMessageIds') List<String> parentMessageIds,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'nonce') String nonce});

  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class _$MessageDataCopyWithImpl<$Res> implements $MessageDataCopyWith<$Res> {
  _$MessageDataCopyWithImpl(this._value, this._then);

  final MessageData _value;
  // ignore: unused_field
  final $Res Function(MessageData) _then;

  @override
  $Res call({
    Object? networkId = freezed,
    Object? parentMessageIds = freezed,
    Object? payload = freezed,
    Object? nonce = freezed,
  }) {
    return _then(_value.copyWith(
      networkId: networkId == freezed
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as String,
      parentMessageIds: parentMessageIds == freezed
          ? _value.parentMessageIds
          : parentMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $PayloadCopyWith<$Res>? get payload {
    if (_value.payload == null) {
      return null;
    }

    return $PayloadCopyWith<$Res>(_value.payload!, (value) {
      return _then(_value.copyWith(payload: value));
    });
  }
}

/// @nodoc
abstract class _$MessageDataCopyWith<$Res>
    implements $MessageDataCopyWith<$Res> {
  factory _$MessageDataCopyWith(
          _MessageData value, $Res Function(_MessageData) then) =
      __$MessageDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'networkId') String networkId,
      @JsonKey(name: 'parentMessageIds') List<String> parentMessageIds,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'nonce') String nonce});

  @override
  $PayloadCopyWith<$Res>? get payload;
}

/// @nodoc
class __$MessageDataCopyWithImpl<$Res> extends _$MessageDataCopyWithImpl<$Res>
    implements _$MessageDataCopyWith<$Res> {
  __$MessageDataCopyWithImpl(
      _MessageData _value, $Res Function(_MessageData) _then)
      : super(_value, (v) => _then(v as _MessageData));

  @override
  _MessageData get _value => super._value as _MessageData;

  @override
  $Res call({
    Object? networkId = freezed,
    Object? parentMessageIds = freezed,
    Object? payload = freezed,
    Object? nonce = freezed,
  }) {
    return _then(_MessageData(
      networkId: networkId == freezed
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as String,
      parentMessageIds: parentMessageIds == freezed
          ? _value.parentMessageIds
          : parentMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      payload: payload == freezed
          ? _value.payload
          : payload // ignore: cast_nullable_to_non_nullable
              as Payload?,
      nonce: nonce == freezed
          ? _value.nonce
          : nonce // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageData implements _MessageData {
  _$_MessageData(
      {@JsonKey(name: 'networkId') required this.networkId,
      @JsonKey(name: 'parentMessageIds') required this.parentMessageIds,
      @JsonKey(name: 'payload') this.payload,
      @JsonKey(name: 'nonce') required this.nonce});

  factory _$_MessageData.fromJson(Map<String, dynamic> json) =>
      _$_$_MessageDataFromJson(json);

  @override
  @JsonKey(name: 'networkId')
  final String networkId;
  @override
  @JsonKey(name: 'parentMessageIds')
  final List<String> parentMessageIds;
  @override
  @JsonKey(name: 'payload')
  final Payload? payload;
  @override
  @JsonKey(name: 'nonce')
  final String nonce;

  @override
  String toString() {
    return 'MessageData(networkId: $networkId, parentMessageIds: $parentMessageIds, payload: $payload, nonce: $nonce)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageData &&
            (identical(other.networkId, networkId) ||
                const DeepCollectionEquality()
                    .equals(other.networkId, networkId)) &&
            (identical(other.parentMessageIds, parentMessageIds) ||
                const DeepCollectionEquality()
                    .equals(other.parentMessageIds, parentMessageIds)) &&
            (identical(other.payload, payload) ||
                const DeepCollectionEquality()
                    .equals(other.payload, payload)) &&
            (identical(other.nonce, nonce) ||
                const DeepCollectionEquality().equals(other.nonce, nonce)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(networkId) ^
      const DeepCollectionEquality().hash(parentMessageIds) ^
      const DeepCollectionEquality().hash(payload) ^
      const DeepCollectionEquality().hash(nonce);

  @JsonKey(ignore: true)
  @override
  _$MessageDataCopyWith<_MessageData> get copyWith =>
      __$MessageDataCopyWithImpl<_MessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MessageDataToJson(this);
  }
}

abstract class _MessageData implements MessageData {
  factory _MessageData(
      {@JsonKey(name: 'networkId') required String networkId,
      @JsonKey(name: 'parentMessageIds') required List<String> parentMessageIds,
      @JsonKey(name: 'payload') Payload? payload,
      @JsonKey(name: 'nonce') required String nonce}) = _$_MessageData;

  factory _MessageData.fromJson(Map<String, dynamic> json) =
      _$_MessageData.fromJson;

  @override
  @JsonKey(name: 'networkId')
  String get networkId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parentMessageIds')
  List<String> get parentMessageIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'payload')
  Payload? get payload => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nonce')
  String get nonce => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageDataCopyWith<_MessageData> get copyWith =>
      throw _privateConstructorUsedError;
}
