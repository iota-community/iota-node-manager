import 'package:freezed_annotation/freezed_annotation.dart';

part 'metrics.freezed.dart';
part 'metrics.g.dart';

@freezed
class Metrics with _$Metrics {
  factory Metrics({
    @JsonKey(name: 'newMessages') required int newMessages,
    @JsonKey(name: 'knownMessages') required int knownMessages,
    @JsonKey(name: 'receivedMessages') required int receivedMessages,
    @JsonKey(name: 'receivedMessageRequests')
        required int receivedMessageRequests,
    @JsonKey(name: 'receivedMilestoneRequests')
        required int receivedMilestoneRequests,
    @JsonKey(name: 'receivedHeartbeats') required int receivedHeartbeats,
    @JsonKey(name: 'sentMessages') required int sentMessages,
    @JsonKey(name: 'sentMessageRequests') required int sentMessageRequests,
    @JsonKey(name: 'sentMilestoneRequests') required int sentMilestoneRequests,
    @JsonKey(name: 'sentHeartbeats') required int sentHeartbeats,
    @JsonKey(name: 'droppedPackets') required int droppedPackets,
  }) = _Metrics;

  factory Metrics.fromJson(Map<String, dynamic> json) =>
      _$MetricsFromJson(json);
}
