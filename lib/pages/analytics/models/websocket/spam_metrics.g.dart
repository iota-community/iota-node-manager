// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'spam_metrics.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SpamMetrics _$_$_SpamMetricsFromJson(Map<String, dynamic> json) {
  return _$_SpamMetrics(
    tipSelect: (json['tipselect'] as num).toDouble(),
    pow: (json['pow'] as num).toDouble(),
  );
}

Map<String, dynamic> _$_$_SpamMetricsToJson(_$_SpamMetrics instance) =>
    <String, dynamic>{
      'tipselect': instance.tipSelect,
      'pow': instance.pow,
    };
