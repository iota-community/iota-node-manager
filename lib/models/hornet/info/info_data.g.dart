// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'info_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfoData _$$_InfoDataFromJson(Map<String, dynamic> json) => _$_InfoData(
      name: json['name'] as String,
      version: json['version'] as String,
      isHealthy: json['isHealthy'] as bool,
      networkId: json['networkId'] as String,
      bech32Hrp: json['bech32HRP'] as String,
      minPoWScore: json['minPoWScore'] as int,
      messagesPerSecond: (json['messagesPerSecond'] as num).toDouble(),
      referencedMessagesPerSecond:
          (json['referencedMessagesPerSecond'] as num).toDouble(),
      referencedRate: (json['referencedRate'] as num).toDouble(),
      latestMilestoneTimestamp: const SecondsSinceEpochDateTimeConverter()
          .fromJson(json['latestMilestoneTimestamp'] as int?),
      latestMilestoneIndex: json['latestMilestoneIndex'] as int,
      confirmedMilestoneIndex: json['confirmedMilestoneIndex'] as int,
      pruningIndex: json['pruningIndex'] as int,
      features:
          (json['features'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$_InfoDataToJson(_$_InfoData instance) =>
    <String, dynamic>{
      'name': instance.name,
      'version': instance.version,
      'isHealthy': instance.isHealthy,
      'networkId': instance.networkId,
      'bech32HRP': instance.bech32Hrp,
      'minPoWScore': instance.minPoWScore,
      'messagesPerSecond': instance.messagesPerSecond,
      'referencedMessagesPerSecond': instance.referencedMessagesPerSecond,
      'referencedRate': instance.referencedRate,
      'latestMilestoneTimestamp': const SecondsSinceEpochDateTimeConverter()
          .toJson(instance.latestMilestoneTimestamp),
      'latestMilestoneIndex': instance.latestMilestoneIndex,
      'confirmedMilestoneIndex': instance.confirmedMilestoneIndex,
      'pruningIndex': instance.pruningIndex,
      'features': instance.features,
    };
