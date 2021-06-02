import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_children_data.freezed.dart';
part 'message_children_data.g.dart';

@freezed
class MessageChildrenData with _$MessageChildrenData {
  factory MessageChildrenData({
    @JsonKey(name: 'messageId') required String messageId,
    @JsonKey(name: 'maxResults') required int maxResults,
    @JsonKey(name: 'count') required int count,
    @JsonKey(name: 'childrenMessageIds')
        required List<String> childrenMessageIds,
  }) = _MessageChildrenData;

  factory MessageChildrenData.fromJson(Map<String, dynamic> json) =>
      _$MessageChildrenDataFromJson(json);
}
