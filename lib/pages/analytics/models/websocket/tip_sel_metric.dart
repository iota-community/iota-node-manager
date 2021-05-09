import 'package:freezed_annotation/freezed_annotation.dart';

part 'tip_sel_metric.freezed.dart';
part 'tip_sel_metric.g.dart';

@freezed
class TipSelMetric with _$TipSelMetric {
  factory TipSelMetric({
    @JsonKey(name: 'duration') required double duration,
  }) = _TipSelMetric;

  factory TipSelMetric.fromJson(Map<String, dynamic> json) =>
      _$TipSelMetricFromJson(json);
}
