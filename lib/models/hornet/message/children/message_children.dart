import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hornet_node/models/hornet/message/children/message_children_data.dart';

import 'message_children_data.dart';

part 'message_children.freezed.dart';
part 'message_children.g.dart';

@freezed
class MessageChildren with _$MessageChildren {
  factory MessageChildren({
    @JsonKey(name: 'data') required MessageChildrenData data,
  }) = _MessageChildren;

  factory MessageChildren.fromJson(Map<String, dynamic> json) =>
      _$MessageChildrenFromJson(json);
}
