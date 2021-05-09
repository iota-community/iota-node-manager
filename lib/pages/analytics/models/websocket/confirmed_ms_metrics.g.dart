// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmed_ms_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfirmedMsMetrics _$_$_ConfirmedMsMetricsFromJson(
    Map<String, dynamic> json) {
  return _$_ConfirmedMsMetrics(
    msIndex: (json['ms_index'] as num).toDouble(),
    mps: (json['mps'] as num).toDouble(),
    rmps: (json['rmps'] as num).toDouble(),
    referencedRate: (json['referenced_rate'] as num).toDouble(),
    timeSinceLastMs: (json['time_since_last_ms'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_ConfirmedMsMetricsToJson(
        _$_ConfirmedMsMetrics instance) =>
    <String, dynamic>{
      'ms_index': instance.msIndex,
      'mps': instance.mps,
      'rmps': instance.rmps,
      'referenced_rate': instance.referencedRate,
      'time_since_last_ms': instance.timeSinceLastMs,
    };
