import 'package:freezed_annotation/freezed_annotation.dart';

part 'vertex.freezed.dart';
part 'vertex.g.dart';

@freezed
class Vertex with _$Vertex {
  factory Vertex({
    @JsonKey(name: 'id') required String id,
    @JsonKey(name: 'parents') required String parents,
    @JsonKey(name: 'is_solid') required bool isSolid,
    @JsonKey(name: 'is_referenced') required bool isReferenced,
    @JsonKey(name: 'is_conflicting') required bool isConflicting,
    @JsonKey(name: 'is_milestone') required bool isMilestone,
    @JsonKey(name: 'is_tip') required bool isTip,
    @JsonKey(name: 'is_selected') required bool isSelected,
  }) = _Vertex;

  factory Vertex.fromJson(Map<String, dynamic> json) => _$VertexFromJson(json);
}
