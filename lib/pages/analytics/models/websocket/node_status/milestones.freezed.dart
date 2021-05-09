// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'milestones.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Milestones _$MilestonesFromJson(Map<String, dynamic> json) {
  return _Milestones.fromJson(json);
}

/// @nodoc
class _$MilestonesTearOff {
  const _$MilestonesTearOff();

  _Milestones call({@JsonKey(name: 'size') required double size}) {
    return _Milestones(
      size: size,
    );
  }

  Milestones fromJson(Map<String, Object> json) {
    return Milestones.fromJson(json);
  }
}

/// @nodoc
const $Milestones = _$MilestonesTearOff();

/// @nodoc
mixin _$Milestones {
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MilestonesCopyWith<Milestones> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MilestonesCopyWith<$Res> {
  factory $MilestonesCopyWith(
          Milestones value, $Res Function(Milestones) then) =
      _$MilestonesCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class _$MilestonesCopyWithImpl<$Res> implements $MilestonesCopyWith<$Res> {
  _$MilestonesCopyWithImpl(this._value, this._then);

  final Milestones _value;
  // ignore: unused_field
  final $Res Function(Milestones) _then;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MilestonesCopyWith<$Res> implements $MilestonesCopyWith<$Res> {
  factory _$MilestonesCopyWith(
          _Milestones value, $Res Function(_Milestones) then) =
      __$MilestonesCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class __$MilestonesCopyWithImpl<$Res> extends _$MilestonesCopyWithImpl<$Res>
    implements _$MilestonesCopyWith<$Res> {
  __$MilestonesCopyWithImpl(
      _Milestones _value, $Res Function(_Milestones) _then)
      : super(_value, (v) => _then(v as _Milestones));

  @override
  _Milestones get _value => super._value as _Milestones;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_Milestones(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Milestones implements _Milestones {
  _$_Milestones({@JsonKey(name: 'size') required this.size});

  factory _$_Milestones.fromJson(Map<String, dynamic> json) =>
      _$_$_MilestonesFromJson(json);

  @override
  @JsonKey(name: 'size')
  final double size;

  @override
  String toString() {
    return 'Milestones(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Milestones &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$MilestonesCopyWith<_Milestones> get copyWith =>
      __$MilestonesCopyWithImpl<_Milestones>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MilestonesToJson(this);
  }
}

abstract class _Milestones implements Milestones {
  factory _Milestones({@JsonKey(name: 'size') required double size}) =
      _$_Milestones;

  factory _Milestones.fromJson(Map<String, dynamic> json) =
      _$_Milestones.fromJson;

  @override
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MilestonesCopyWith<_Milestones> get copyWith =>
      throw _privateConstructorUsedError;
}
