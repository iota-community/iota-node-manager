import 'package:freezed_annotation/freezed_annotation.dart';

part 'confirmed_ms_metrics.freezed.dart';
part 'confirmed_ms_metrics.g.dart';

@freezed
class ConfirmedMsMetrics with _$ConfirmedMsMetrics {
  factory ConfirmedMsMetrics({
    @JsonKey(name: 'ms_index') required double msIndex,
    @JsonKey(name: 'mps') required double mps,
    @JsonKey(name: 'rmps') required double rmps,
    @JsonKey(name: 'referenced_rate') required double referencedRate,
    @JsonKey(name: 'time_since_last_ms') required double timeSinceLastMs,
  }) = _ConfirmedMsMetrics;

  factory ConfirmedMsMetrics.fromJson(Map<String, dynamic> json) =>
      _$ConfirmedMsMetricsFromJson(json);
}
