import 'package:freezed_annotation/freezed_annotation.dart';

part 'db_size_metric.freezed.dart';
part 'db_size_metric.g.dart';

@freezed
class DbSizeMetric with _$DbSizeMetric {
  factory DbSizeMetric({
    @JsonKey(name: 'total') required double total,
    @JsonKey(name: 'ts') required double ts,
  }) = _DbSizeMetric;

  factory DbSizeMetric.fromJson(Map<String, dynamic> json) =>
      _$DbSizeMetricFromJson(json);
}
