import 'package:freezed_annotation/freezed_annotation.dart';

part 'web_socket_message.freezed.dart';
part 'web_socket_message.g.dart';

@freezed
class WebSocketMessage with _$WebSocketMessage {
  factory WebSocketMessage({
    @JsonKey(name: 'type') required double type,
    @JsonKey(name: 'data') required dynamic data,
  }) = _WebSocketMessage;

  factory WebSocketMessage.fromJson(Map<String, dynamic> json) =>
      _$WebSocketMessageFromJson(json);
}
