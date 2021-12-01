// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_children_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageChildrenData _$$_MessageChildrenDataFromJson(
        Map<String, dynamic> json) =>
    _$_MessageChildrenData(
      messageId: json['messageId'] as String,
      maxResults: json['maxResults'] as int,
      count: json['count'] as int,
      childrenMessageIds: (json['childrenMessageIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_MessageChildrenDataToJson(
        _$_MessageChildrenData instance) =>
    <String, dynamic>{
      'messageId': instance.messageId,
      'maxResults': instance.maxResults,
      'count': instance.count,
      'childrenMessageIds': instance.childrenMessageIds,
    };
