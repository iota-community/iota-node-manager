import 'package:freezed_annotation/freezed_annotation.dart';

import 'message_metadata_data.dart';

part 'message_metadata.freezed.dart';
part 'message_metadata.g.dart';

@freezed
class MessageMetadata with _$MessageMetadata {
  factory MessageMetadata({
    @JsonKey(name: 'data') required MessageMetadataData data,
  }) = _MessageMetadata;

  factory MessageMetadata.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataFromJson(json);
}
