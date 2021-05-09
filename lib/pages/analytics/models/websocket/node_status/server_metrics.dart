import 'package:freezed_annotation/freezed_annotation.dart';

part 'server_metrics.freezed.dart';
part 'server_metrics.g.dart';

@freezed
class ServerMetrics with _$ServerMetrics {
  factory ServerMetrics({
    @JsonKey(name: 'all_msgs') required double allMsgs,
    @JsonKey(name: 'new_msgs') required double newMsgs,
    @JsonKey(name: 'known_msgs') required double knownMsgs,
    @JsonKey(name: 'invalid_msgs') required double invalidMsgs,
    @JsonKey(name: 'invalid_req') required double invalidReq,
    @JsonKey(name: 'rec_msg_req') required double recMsgReq,
    @JsonKey(name: 'rec_ms_req') required double recMsReq,
    @JsonKey(name: 'rec_heartbeat') required double recHeartbeat,
    @JsonKey(name: 'sent_msgs') required double sentMsgs,
    @JsonKey(name: 'sent_msg_req') required double sentMsgReq,
    @JsonKey(name: 'sent_ms_req') required double sentMsReq,
    @JsonKey(name: 'sent_heartbeat') required double sentHeartbeat,
    @JsonKey(name: 'dropped_sent_packets') required double droppedSentPackets,
    @JsonKey(name: 'sent_spam_messages') required double sentSpamMessages,
    @JsonKey(name: 'validated_messages') required double validatedMessages,
  }) = _ServerMetrics;

  factory ServerMetrics.fromJson(Map<String, dynamic> json) =>
      _$ServerMetricsFromJson(json);
}
