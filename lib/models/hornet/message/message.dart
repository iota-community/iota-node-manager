import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_data.dart';

part 'message.freezed.dart';
part 'message.g.dart';

@freezed
class Message with _$Message {
  factory Message({
    @JsonKey(name: 'data') required MessageData data,
  }) = _Message;

  factory Message.fromJson(Map<String, dynamic> json) =>
      _$MessageFromJson(json);
}
