// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payload.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Payload _$$_PayloadFromJson(Map<String, dynamic> json) => _$_Payload(
      type: json['type'] as int,
      index: const IntToStringConverter().fromJson(json['index']),
      timestamp: const SecondsSinceEpochDateTimeConverter()
          .fromJson(json['timestamp'] as int?),
      parentMessageIds: (json['parentMessageIds'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      inclusionMerkleProof: json['inclusionMerkleProof'] as String?,
      nextPoWScore: json['nextPoWScore'] as int?,
      nextPoWScoreMilestoneIndex: json['nextPoWScoreMilestoneIndex'] as int?,
      publicKeys: (json['publicKeys'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      receipt: json['receipt'],
      signatures: (json['signatures'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$_PayloadToJson(_$_Payload instance) =>
    <String, dynamic>{
      'type': instance.type,
      'index': const IntToStringConverter().toJson(instance.index),
      'timestamp':
          const SecondsSinceEpochDateTimeConverter().toJson(instance.timestamp),
      'parentMessageIds': instance.parentMessageIds,
      'inclusionMerkleProof': instance.inclusionMerkleProof,
      'nextPoWScore': instance.nextPoWScore,
      'nextPoWScoreMilestoneIndex': instance.nextPoWScoreMilestoneIndex,
      'publicKeys': instance.publicKeys,
      'receipt': instance.receipt,
      'signatures': instance.signatures,
    };
