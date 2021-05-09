// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'vertex.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Vertex _$VertexFromJson(Map<String, dynamic> json) {
  return _Vertex.fromJson(json);
}

/// @nodoc
class _$VertexTearOff {
  const _$VertexTearOff();

  _Vertex call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'parents') required String parents,
      @JsonKey(name: 'is_solid') required bool isSolid,
      @JsonKey(name: 'is_referenced') required bool isReferenced,
      @JsonKey(name: 'is_conflicting') required bool isConflicting,
      @JsonKey(name: 'is_milestone') required bool isMilestone,
      @JsonKey(name: 'is_tip') required bool isTip,
      @JsonKey(name: 'is_selected') required bool isSelected}) {
    return _Vertex(
      id: id,
      parents: parents,
      isSolid: isSolid,
      isReferenced: isReferenced,
      isConflicting: isConflicting,
      isMilestone: isMilestone,
      isTip: isTip,
      isSelected: isSelected,
    );
  }

  Vertex fromJson(Map<String, Object> json) {
    return Vertex.fromJson(json);
  }
}

/// @nodoc
const $Vertex = _$VertexTearOff();

/// @nodoc
mixin _$Vertex {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'parents')
  String get parents => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_solid')
  bool get isSolid => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_referenced')
  bool get isReferenced => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_conflicting')
  bool get isConflicting => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_milestone')
  bool get isMilestone => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_tip')
  bool get isTip => throw _privateConstructorUsedError;
  @JsonKey(name: 'is_selected')
  bool get isSelected => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VertexCopyWith<Vertex> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VertexCopyWith<$Res> {
  factory $VertexCopyWith(Vertex value, $Res Function(Vertex) then) =
      _$VertexCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'parents') String parents,
      @JsonKey(name: 'is_solid') bool isSolid,
      @JsonKey(name: 'is_referenced') bool isReferenced,
      @JsonKey(name: 'is_conflicting') bool isConflicting,
      @JsonKey(name: 'is_milestone') bool isMilestone,
      @JsonKey(name: 'is_tip') bool isTip,
      @JsonKey(name: 'is_selected') bool isSelected});
}

/// @nodoc
class _$VertexCopyWithImpl<$Res> implements $VertexCopyWith<$Res> {
  _$VertexCopyWithImpl(this._value, this._then);

  final Vertex _value;
  // ignore: unused_field
  final $Res Function(Vertex) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? parents = freezed,
    Object? isSolid = freezed,
    Object? isReferenced = freezed,
    Object? isConflicting = freezed,
    Object? isMilestone = freezed,
    Object? isTip = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parents: parents == freezed
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as String,
      isSolid: isSolid == freezed
          ? _value.isSolid
          : isSolid // ignore: cast_nullable_to_non_nullable
              as bool,
      isReferenced: isReferenced == freezed
          ? _value.isReferenced
          : isReferenced // ignore: cast_nullable_to_non_nullable
              as bool,
      isConflicting: isConflicting == freezed
          ? _value.isConflicting
          : isConflicting // ignore: cast_nullable_to_non_nullable
              as bool,
      isMilestone: isMilestone == freezed
          ? _value.isMilestone
          : isMilestone // ignore: cast_nullable_to_non_nullable
              as bool,
      isTip: isTip == freezed
          ? _value.isTip
          : isTip // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$VertexCopyWith<$Res> implements $VertexCopyWith<$Res> {
  factory _$VertexCopyWith(_Vertex value, $Res Function(_Vertex) then) =
      __$VertexCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'parents') String parents,
      @JsonKey(name: 'is_solid') bool isSolid,
      @JsonKey(name: 'is_referenced') bool isReferenced,
      @JsonKey(name: 'is_conflicting') bool isConflicting,
      @JsonKey(name: 'is_milestone') bool isMilestone,
      @JsonKey(name: 'is_tip') bool isTip,
      @JsonKey(name: 'is_selected') bool isSelected});
}

/// @nodoc
class __$VertexCopyWithImpl<$Res> extends _$VertexCopyWithImpl<$Res>
    implements _$VertexCopyWith<$Res> {
  __$VertexCopyWithImpl(_Vertex _value, $Res Function(_Vertex) _then)
      : super(_value, (v) => _then(v as _Vertex));

  @override
  _Vertex get _value => super._value as _Vertex;

  @override
  $Res call({
    Object? id = freezed,
    Object? parents = freezed,
    Object? isSolid = freezed,
    Object? isReferenced = freezed,
    Object? isConflicting = freezed,
    Object? isMilestone = freezed,
    Object? isTip = freezed,
    Object? isSelected = freezed,
  }) {
    return _then(_Vertex(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      parents: parents == freezed
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as String,
      isSolid: isSolid == freezed
          ? _value.isSolid
          : isSolid // ignore: cast_nullable_to_non_nullable
              as bool,
      isReferenced: isReferenced == freezed
          ? _value.isReferenced
          : isReferenced // ignore: cast_nullable_to_non_nullable
              as bool,
      isConflicting: isConflicting == freezed
          ? _value.isConflicting
          : isConflicting // ignore: cast_nullable_to_non_nullable
              as bool,
      isMilestone: isMilestone == freezed
          ? _value.isMilestone
          : isMilestone // ignore: cast_nullable_to_non_nullable
              as bool,
      isTip: isTip == freezed
          ? _value.isTip
          : isTip // ignore: cast_nullable_to_non_nullable
              as bool,
      isSelected: isSelected == freezed
          ? _value.isSelected
          : isSelected // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Vertex implements _Vertex {
  _$_Vertex(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'parents') required this.parents,
      @JsonKey(name: 'is_solid') required this.isSolid,
      @JsonKey(name: 'is_referenced') required this.isReferenced,
      @JsonKey(name: 'is_conflicting') required this.isConflicting,
      @JsonKey(name: 'is_milestone') required this.isMilestone,
      @JsonKey(name: 'is_tip') required this.isTip,
      @JsonKey(name: 'is_selected') required this.isSelected});

  factory _$_Vertex.fromJson(Map<String, dynamic> json) =>
      _$_$_VertexFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'parents')
  final String parents;
  @override
  @JsonKey(name: 'is_solid')
  final bool isSolid;
  @override
  @JsonKey(name: 'is_referenced')
  final bool isReferenced;
  @override
  @JsonKey(name: 'is_conflicting')
  final bool isConflicting;
  @override
  @JsonKey(name: 'is_milestone')
  final bool isMilestone;
  @override
  @JsonKey(name: 'is_tip')
  final bool isTip;
  @override
  @JsonKey(name: 'is_selected')
  final bool isSelected;

  @override
  String toString() {
    return 'Vertex(id: $id, parents: $parents, isSolid: $isSolid, isReferenced: $isReferenced, isConflicting: $isConflicting, isMilestone: $isMilestone, isTip: $isTip, isSelected: $isSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Vertex &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.parents, parents) ||
                const DeepCollectionEquality()
                    .equals(other.parents, parents)) &&
            (identical(other.isSolid, isSolid) ||
                const DeepCollectionEquality()
                    .equals(other.isSolid, isSolid)) &&
            (identical(other.isReferenced, isReferenced) ||
                const DeepCollectionEquality()
                    .equals(other.isReferenced, isReferenced)) &&
            (identical(other.isConflicting, isConflicting) ||
                const DeepCollectionEquality()
                    .equals(other.isConflicting, isConflicting)) &&
            (identical(other.isMilestone, isMilestone) ||
                const DeepCollectionEquality()
                    .equals(other.isMilestone, isMilestone)) &&
            (identical(other.isTip, isTip) ||
                const DeepCollectionEquality().equals(other.isTip, isTip)) &&
            (identical(other.isSelected, isSelected) ||
                const DeepCollectionEquality()
                    .equals(other.isSelected, isSelected)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(parents) ^
      const DeepCollectionEquality().hash(isSolid) ^
      const DeepCollectionEquality().hash(isReferenced) ^
      const DeepCollectionEquality().hash(isConflicting) ^
      const DeepCollectionEquality().hash(isMilestone) ^
      const DeepCollectionEquality().hash(isTip) ^
      const DeepCollectionEquality().hash(isSelected);

  @JsonKey(ignore: true)
  @override
  _$VertexCopyWith<_Vertex> get copyWith =>
      __$VertexCopyWithImpl<_Vertex>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_VertexToJson(this);
  }
}

abstract class _Vertex implements Vertex {
  factory _Vertex(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'parents') required String parents,
      @JsonKey(name: 'is_solid') required bool isSolid,
      @JsonKey(name: 'is_referenced') required bool isReferenced,
      @JsonKey(name: 'is_conflicting') required bool isConflicting,
      @JsonKey(name: 'is_milestone') required bool isMilestone,
      @JsonKey(name: 'is_tip') required bool isTip,
      @JsonKey(name: 'is_selected') required bool isSelected}) = _$_Vertex;

  factory _Vertex.fromJson(Map<String, dynamic> json) = _$_Vertex.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parents')
  String get parents => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_solid')
  bool get isSolid => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_referenced')
  bool get isReferenced => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_conflicting')
  bool get isConflicting => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_milestone')
  bool get isMilestone => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_tip')
  bool get isTip => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'is_selected')
  bool get isSelected => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$VertexCopyWith<_Vertex> get copyWith => throw _privateConstructorUsedError;
}
