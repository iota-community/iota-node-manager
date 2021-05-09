// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mps_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MpsMetrics _$_$_MpsMetricsFromJson(Map<String, dynamic> json) {
  return _$_MpsMetrics(
    incomingMps: (json['incoming'] as num).toDouble(),
    newMps: (json['new'] as num).toDouble(),
    outgoingMps: (json['outgoing'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_MpsMetricsToJson(_$_MpsMetrics instance) =>
    <String, dynamic>{
      'incoming': instance.incomingMps,
      'new': instance.newMps,
      'outgoing': instance.outgoingMps,
    };
