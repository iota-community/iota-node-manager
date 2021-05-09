// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'db_size_metric.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DbSizeMetric _$_$_DbSizeMetricFromJson(Map<String, dynamic> json) {
  return _$_DbSizeMetric(
    total: (json['total'] as num).toDouble(),
    ts: (json['ts'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_DbSizeMetricToJson(_$_DbSizeMetric instance) =>
    <String, dynamic>{
      'total': instance.total,
      'ts': instance.ts,
    };
