// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'tips_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TipsData _$_$_TipsDataFromJson(Map<String, dynamic> json) {
  return _$_TipsData(
    tipMessageIds: (json['tipMessageIds'] as List<dynamic>?)
        ?.map((e) => e as String)
        .toList(),
  );
}

Map<String, dynamic> _$_$_TipsDataToJson(_$_TipsData instance) =>
    <String, dynamic>{
      'tipMessageIds': instance.tipMessageIds,
    };
