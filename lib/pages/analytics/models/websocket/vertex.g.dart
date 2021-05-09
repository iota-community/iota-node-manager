// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vertex.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Vertex _$_$_VertexFromJson(Map<String, dynamic> json) {
  return _$_Vertex(
    id: json['id'] as String,
    parents: json['parents'] as String,
    isSolid: json['is_solid'] as bool,
    isReferenced: json['is_referenced'] as bool,
    isConflicting: json['is_conflicting'] as bool,
    isMilestone: json['is_milestone'] as bool,
    isTip: json['is_tip'] as bool,
    isSelected: json['is_selected'] as bool,
  );
}

Map<String, dynamic> _$_$_VertexToJson(_$_Vertex instance) => <String, dynamic>{
      'id': instance.id,
      'parents': instance.parents,
      'is_solid': instance.isSolid,
      'is_referenced': instance.isReferenced,
      'is_conflicting': instance.isConflicting,
      'is_milestone': instance.isMilestone,
      'is_tip': instance.isTip,
      'is_selected': instance.isSelected,
    };
