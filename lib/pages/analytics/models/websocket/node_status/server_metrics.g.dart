// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'server_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ServerMetrics _$_$_ServerMetricsFromJson(Map<String, dynamic> json) {
  return _$_ServerMetrics(
    allMsgs: (json['all_msgs'] as num).toDouble(),
    newMsgs: (json['new_msgs'] as num).toDouble(),
    knownMsgs: (json['known_msgs'] as num).toDouble(),
    invalidMsgs: (json['invalid_msgs'] as num).toDouble(),
    invalidReq: (json['invalid_req'] as num).toDouble(),
    recMsgReq: (json['rec_msg_req'] as num).toDouble(),
    recMsReq: (json['rec_ms_req'] as num).toDouble(),
    recHeartbeat: (json['rec_heartbeat'] as num).toDouble(),
    sentMsgs: (json['sent_msgs'] as num).toDouble(),
    sentMsgReq: (json['sent_msg_req'] as num).toDouble(),
    sentMsReq: (json['sent_ms_req'] as num).toDouble(),
    sentHeartbeat: (json['sent_heartbeat'] as num).toDouble(),
    droppedSentPackets: (json['dropped_sent_packets'] as num).toDouble(),
    sentSpamMessages: (json['sent_spam_messages'] as num).toDouble(),
    validatedMessages: (json['validated_messages'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ServerMetricsToJson(_$_ServerMetrics instance) =>
    <String, dynamic>{
      'all_msgs': instance.allMsgs,
      'new_msgs': instance.newMsgs,
      'known_msgs': instance.knownMsgs,
      'invalid_msgs': instance.invalidMsgs,
      'invalid_req': instance.invalidReq,
      'rec_msg_req': instance.recMsgReq,
      'rec_ms_req': instance.recMsReq,
      'rec_heartbeat': instance.recHeartbeat,
      'sent_msgs': instance.sentMsgs,
      'sent_msg_req': instance.sentMsgReq,
      'sent_ms_req': instance.sentMsReq,
      'sent_heartbeat': instance.sentHeartbeat,
      'dropped_sent_packets': instance.droppedSentPackets,
      'sent_spam_messages': instance.sentSpamMessages,
      'validated_messages': instance.validatedMessages,
    };
