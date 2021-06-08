// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_metadata_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageMetadataData _$_$_MessageMetadataDataFromJson(
    Map<String, dynamic> json) {
  return _$_MessageMetadataData(
    messageId: json['messageId'] as String,
    parentMessageIds: (json['parentMessageIds'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
    isSolid: json['isSolid'] as bool?,
    shouldPromote: json['shouldPromote'] as bool?,
    shouldReattach: json['shouldReattach'] as bool?,
    referencedByMilestoneIndex: json['referencedByMilestoneIndex'] as int,
    milestoneIndex: json['milestoneIndex'] as int?,
    ledgerInclusionState: json['ledgerInclusionState'] as String?,
  );
}

Map<String, dynamic> _$_$_MessageMetadataDataToJson(
        _$_MessageMetadataData instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'parentMessageIds': instance.parentMessageIds,
      'isSolid': instance.isSolid,
      'shouldPromote': instance.shouldPromote,
      'shouldReattach': instance.shouldReattach,
      'referencedByMilestoneIndex': instance.referencedByMilestoneIndex,
      'milestoneIndex': instance.milestoneIndex,
      'ledgerInclusionState': instance.ledgerInclusionState,
    };
