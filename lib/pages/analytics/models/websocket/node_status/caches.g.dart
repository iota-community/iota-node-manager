// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'caches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Caches _$_$_CachesFromJson(Map<String, dynamic> json) {
  return _$_Caches(
    requestQueue:
        RequestQueue.fromJson(json['request_queue'] as Map<String, dynamic>),
    children: Children.fromJson(json['children'] as Map<String, dynamic>),
    milestones: Milestones.fromJson(json['milestones'] as Map<String, dynamic>),
    messages: Messages.fromJson(json['messages'] as Map<String, dynamic>),
    incomingMessageWorkUnits: IncomingMessageWorkUnits.fromJson(
        json['incoming_message_work_units'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$_$_CachesToJson(_$_Caches instance) => <String, dynamic>{
      'request_queue': instance.requestQueue,
      'children': instance.children,
      'milestones': instance.milestones,
      'messages': instance.messages,
      'incoming_message_work_units': instance.incomingMessageWorkUnits,
    };
