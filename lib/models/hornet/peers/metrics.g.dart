// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Metrics _$$_MetricsFromJson(Map<String, dynamic> json) => _$_Metrics(
      newMessages: json['newMessages'] as int,
      knownMessages: json['knownMessages'] as int,
      receivedMessages: json['receivedMessages'] as int,
      receivedMessageRequests: json['receivedMessageRequests'] as int,
      receivedMilestoneRequests: json['receivedMilestoneRequests'] as int,
      receivedHeartbeats: json['receivedHeartbeats'] as int,
      sentMessages: json['sentMessages'] as int,
      sentMessageRequests: json['sentMessageRequests'] as int,
      sentMilestoneRequests: json['sentMilestoneRequests'] as int,
      sentHeartbeats: json['sentHeartbeats'] as int,
      droppedPackets: json['droppedPackets'] as int,
    );

Map<String, dynamic> _$$_MetricsToJson(_$_Metrics instance) =>
    <String, dynamic>{
      'newMessages': instance.newMessages,
      'knownMessages': instance.knownMessages,
      'receivedMessages': instance.receivedMessages,
      'receivedMessageRequests': instance.receivedMessageRequests,
      'receivedMilestoneRequests': instance.receivedMilestoneRequests,
      'receivedHeartbeats': instance.receivedHeartbeats,
      'sentMessages': instance.sentMessages,
      'sentMessageRequests': instance.sentMessageRequests,
      'sentMilestoneRequests': instance.sentMilestoneRequests,
      'sentHeartbeats': instance.sentHeartbeats,
      'droppedPackets': instance.droppedPackets,
    };
