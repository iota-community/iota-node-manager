// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'avg_spam_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AvgSpamMetrics _$_$_AvgSpamMetricsFromJson(Map<String, dynamic> json) {
  return _$_AvgSpamMetrics(
    newMsgs: (json['newMsgs'] as num).toDouble(),
    avgMsgs: (json['avgMsgs'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_AvgSpamMetricsToJson(_$_AvgSpamMetrics instance) =>
    <String, dynamic>{
      'newMsgs': instance.newMsgs,
      'avgMsgs': instance.avgMsgs,
    };
