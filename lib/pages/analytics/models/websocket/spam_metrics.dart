import 'package:freezed_annotation/freezed_annotation.dart';

part 'spam_metrics.freezed.dart';
part 'spam_metrics.g.dart';

@freezed
class SpamMetrics with _$SpamMetrics {
  factory SpamMetrics({
    @JsonKey(name: 'tipselect') required double tipSelect,
    @JsonKey(name: 'pow') required double pow,
  }) = _SpamMetrics;

  factory SpamMetrics.fromJson(Map<String, dynamic> json) =>
      _$SpamMetricsFromJson(json);
}
