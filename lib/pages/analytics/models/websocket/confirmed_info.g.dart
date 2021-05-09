// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'confirmed_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConfirmedInfo _$_$_ConfirmedInfoFromJson(Map<String, dynamic> json) {
  return _$_ConfirmedInfo(
    id: json['id'] as String,
    excludedIds: (json['excluded_ids'] as List<dynamic>)
        .map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_ConfirmedInfoToJson(_$_ConfirmedInfo instance) =>
    <String, dynamic>{
      'id': instance.id,
      'excluded_ids': instance.excludedIds,
    };
