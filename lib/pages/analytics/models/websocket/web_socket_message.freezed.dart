// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'web_socket_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WebSocketMessage _$WebSocketMessageFromJson(Map<String, dynamic> json) {
  return _WebSocketMessage.fromJson(json);
}

/// @nodoc
class _$WebSocketMessageTearOff {
  const _$WebSocketMessageTearOff();

  _WebSocketMessage call(
      {@JsonKey(name: 'type') required double type,
      @JsonKey(name: 'data') required dynamic data}) {
    return _WebSocketMessage(
      type: type,
      data: data,
    );
  }

  WebSocketMessage fromJson(Map<String, Object> json) {
    return WebSocketMessage.fromJson(json);
  }
}

/// @nodoc
const $WebSocketMessage = _$WebSocketMessageTearOff();

/// @nodoc
mixin _$WebSocketMessage {
  @JsonKey(name: 'type')
  double get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WebSocketMessageCopyWith<WebSocketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebSocketMessageCopyWith<$Res> {
  factory $WebSocketMessageCopyWith(
          WebSocketMessage value, $Res Function(WebSocketMessage) then) =
      _$WebSocketMessageCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'type') double type,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class _$WebSocketMessageCopyWithImpl<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  _$WebSocketMessageCopyWithImpl(this._value, this._then);

  final WebSocketMessage _value;
  // ignore: unused_field
  final $Res Function(WebSocketMessage) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as double,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$WebSocketMessageCopyWith<$Res>
    implements $WebSocketMessageCopyWith<$Res> {
  factory _$WebSocketMessageCopyWith(
          _WebSocketMessage value, $Res Function(_WebSocketMessage) then) =
      __$WebSocketMessageCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'type') double type,
      @JsonKey(name: 'data') dynamic data});
}

/// @nodoc
class __$WebSocketMessageCopyWithImpl<$Res>
    extends _$WebSocketMessageCopyWithImpl<$Res>
    implements _$WebSocketMessageCopyWith<$Res> {
  __$WebSocketMessageCopyWithImpl(
      _WebSocketMessage _value, $Res Function(_WebSocketMessage) _then)
      : super(_value, (v) => _then(v as _WebSocketMessage));

  @override
  _WebSocketMessage get _value => super._value as _WebSocketMessage;

  @override
  $Res call({
    Object? type = freezed,
    Object? data = freezed,
  }) {
    return _then(_WebSocketMessage(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as double,
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WebSocketMessage implements _WebSocketMessage {
  _$_WebSocketMessage(
      {@JsonKey(name: 'type') required this.type,
      @JsonKey(name: 'data') required this.data});

  factory _$_WebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$_$_WebSocketMessageFromJson(json);

  @override
  @JsonKey(name: 'type')
  final double type;
  @override
  @JsonKey(name: 'data')
  final dynamic data;

  @override
  String toString() {
    return 'WebSocketMessage(type: $type, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WebSocketMessage &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$WebSocketMessageCopyWith<_WebSocketMessage> get copyWith =>
      __$WebSocketMessageCopyWithImpl<_WebSocketMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WebSocketMessageToJson(this);
  }
}

abstract class _WebSocketMessage implements WebSocketMessage {
  factory _WebSocketMessage(
      {@JsonKey(name: 'type') required double type,
      @JsonKey(name: 'data') required dynamic data}) = _$_WebSocketMessage;

  factory _WebSocketMessage.fromJson(Map<String, dynamic> json) =
      _$_WebSocketMessage.fromJson;

  @override
  @JsonKey(name: 'type')
  double get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'data')
  dynamic get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WebSocketMessageCopyWith<_WebSocketMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
