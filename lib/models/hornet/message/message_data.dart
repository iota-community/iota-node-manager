import 'package:freezed_annotation/freezed_annotation.dart';

import 'payload.dart';

part 'message_data.freezed.dart';
part 'message_data.g.dart';

@freezed
class MessageData with _$MessageData {
  factory MessageData({
    @JsonKey(name: 'networkId') required String networkId,
    @JsonKey(name: 'parentMessageIds') required List<String> parentMessageIds,
    @JsonKey(name: 'payload') required Payload payload,
    @JsonKey(name: 'nonce') required String nonce,
  }) = _MessageData;

  factory MessageData.fromJson(Map<String, dynamic> json) =>
      _$MessageDataFromJson(json);
}
