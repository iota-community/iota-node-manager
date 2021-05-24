// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Data _$_$_DataFromJson(Map<String, dynamic> json) {
  return _$_Data(
    name: json['name'] as String?,
    version: json['version'] as String?,
    isHealthy: json['isHealthy'] as bool?,
    networkId: json['networkId'] as String?,
    bech32Hrp: json['bech32HRP'] as String?,
    minPoWScore: json['minPoWScore'] as int?,
    messagesPerSecond: (json['messagesPerSecond'] as num?)?.toDouble(),
    referencedMessagesPerSecond:
        (json['referencedMessagesPerSecond'] as num?)?.toDouble(),
    referencedRate: (json['referencedRate'] as num?)?.toDouble(),
    latestMilestoneTimestamp: json['latestMilestoneTimestamp'] as int?,
    latestMilestoneIndex: json['latestMilestoneIndex'] as int?,
    confirmedMilestoneIndex: json['confirmedMilestoneIndex'] as int?,
    pruningIndex: json['pruningIndex'] as int?,
    features:
        (json['features'] as List<dynamic>?)?.map((e) => e as String).toList(),
  );
}

Map<String, dynamic> _$_$_DataToJson(_$_Data instance) => <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'isHealthy': instance.isHealthy,
      'networkId': instance.networkId,
      'bech32HRP': instance.bech32Hrp,
      'minPoWScore': instance.minPoWScore,
      'messagesPerSecond': instance.messagesPerSecond,
      'referencedMessagesPerSecond': instance.referencedMessagesPerSecond,
      'referencedRate': instance.referencedRate,
      'latestMilestoneTimestamp': instance.latestMilestoneTimestamp,
      'latestMilestoneIndex': instance.latestMilestoneIndex,
      'confirmedMilestoneIndex': instance.confirmedMilestoneIndex,
      'pruningIndex': instance.pruningIndex,
      'features': instance.features,
    };
