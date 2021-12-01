// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MessageData _$$_MessageDataFromJson(Map<String, dynamic> json) =>
    _$_MessageData(
      networkId: json['networkId'] as String,
      parentMessageIds: (json['parentMessageIds'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      payload: json['payload'] == null
          ? null
          : Payload.fromJson(json['payload'] as Map<String, dynamic>),
      nonce: json['nonce'] as String?,
    );

Map<String, dynamic> _$$_MessageDataToJson(_$_MessageData instance) =>
    <String, dynamic>{
      'networkId': instance.networkId,
      'parentMessageIds': instance.parentMessageIds,
      'payload': instance.payload,
      'nonce': instance.nonce,
    };
