import 'package:freezed_annotation/freezed_annotation.dart';

part 'mps_metrics.freezed.dart';
part 'mps_metrics.g.dart';

@freezed
class MpsMetrics with _$MpsMetrics {
  factory MpsMetrics({
    @JsonKey(name: 'incoming') required double incomingMps,
    @JsonKey(name: 'new') required double newMps,
    @JsonKey(name: 'outgoing') required double outgoingMps,
  }) = _MpsMetrics;

  factory MpsMetrics.fromJson(Map<String, dynamic> json) =>
      _$MpsMetricsFromJson(json);
}
