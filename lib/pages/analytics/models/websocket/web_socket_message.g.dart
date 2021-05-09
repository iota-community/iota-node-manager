// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'web_socket_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WebSocketMessage _$_$_WebSocketMessageFromJson(Map<String, dynamic> json) {
  return _$_WebSocketMessage(
    type: (json['type'] as num).toDouble(),
    data: json['data'],
  );
}

Map<String, dynamic> _$_$_WebSocketMessageToJson(
        _$_WebSocketMessage instance) =>
    <String, dynamic>{
      'type': instance.type,
      'data': instance.data,
    };
