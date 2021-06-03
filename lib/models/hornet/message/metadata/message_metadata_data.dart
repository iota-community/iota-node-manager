import 'package:freezed_annotation/freezed_annotation.dart';

part 'message_metadata_data.freezed.dart';
part 'message_metadata_data.g.dart';

@freezed
class MessageMetadataData with _$MessageMetadataData {
  factory MessageMetadataData({
    @JsonKey(name: 'messageId') required String messageId,
    @JsonKey(name: 'parentMessageIds') required List<String> parentMessageIds,
    @JsonKey(name: 'isSolid') bool? isSolid,
    @JsonKey(name: 'shouldPromote') bool? shouldPromote,
    @JsonKey(name: 'shouldReattach') bool? shouldReattach,
    @JsonKey(name: 'referencedByMilestoneIndex')
        required int referencedByMilestoneIndex,
    @JsonKey(name: 'milestoneIndex') int? milestoneIndex,
    @JsonKey(name: 'ledgerInclusionState') String? ledgerInclusionState,
  }) = _MessageMetadataData;

  factory MessageMetadataData.fromJson(Map<String, dynamic> json) =>
      _$MessageMetadataDataFromJson(json);
}
