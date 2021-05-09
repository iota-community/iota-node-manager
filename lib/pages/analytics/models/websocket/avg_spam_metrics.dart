import 'package:freezed_annotation/freezed_annotation.dart';

part 'avg_spam_metrics.freezed.dart';
part 'avg_spam_metrics.g.dart';

@freezed
class AvgSpamMetrics with _$AvgSpamMetrics {
  factory AvgSpamMetrics({
    @JsonKey(name: 'newMsgs') required double newMsgs,
    @JsonKey(name: 'avgMsgs') required double avgMsgs,
  }) = _AvgSpamMetrics;

  factory AvgSpamMetrics.fromJson(Map<String, dynamic> json) =>
      _$AvgSpamMetricsFromJson(json);
}
