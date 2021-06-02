import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_metadata_data.freezed.dart';
part 'message_metadata_data.g.dart';

@freezed
class MessageMetadataData with _$MessageMetadataData {
  factory MessageMetadataData({
    @JsonKey(name: 'messageId') required String messageId,
    @JsonKey(name: 'parentMessageIds') required List<String> parentMessageIds,
    @JsonKey(name: 'isSolid') required bool isSolid,
    @JsonKey(name: 'shouldPromote') bool? shouldPromote,
    @JsonKey(name: 'shouldReattach') bool? shouldReattach,
    @JsonKey(name: 'referencedByMilestoneIndex')
        required int referencedByMilestoneIndex,
    @JsonKey(name: 'milestoneIndex') required int milestoneIndex,
    @JsonKey(name: 'ledgerInclusionState') required String ledgerInclusionState,
  }) = _MessageMetadataData;

  factory MessageMetadataData.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataDataFromJson(json);
}
