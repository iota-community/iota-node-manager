// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'milestone.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Milestone _$MilestoneFromJson(Map<String, dynamic> json) {
  return _Milestone.fromJson(json);
}

/// @nodoc
class _$MilestoneTearOff {
  const _$MilestoneTearOff();

  _Milestone call({@JsonKey(name: 'data') required MilestoneData data}) {
    return _Milestone(
      data: data,
    );
  }

  Milestone fromJson(Map<String, Object> json) {
    return Milestone.fromJson(json);
  }
}

/// @nodoc
const $Milestone = _$MilestoneTearOff();

/// @nodoc
mixin _$Milestone {
  @JsonKey(name: 'data')
  MilestoneData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MilestoneCopyWith<Milestone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MilestoneCopyWith<$Res> {
  factory $MilestoneCopyWith(Milestone value, $Res Function(Milestone) then) =
      _$MilestoneCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') MilestoneData data});

  $MilestoneDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MilestoneCopyWithImpl<$Res> implements $MilestoneCopyWith<$Res> {
  _$MilestoneCopyWithImpl(this._value, this._then);

  final Milestone _value;
  // ignore: unused_field
  final $Res Function(Milestone) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MilestoneData,
    ));
  }

  @override
  $MilestoneDataCopyWith<$Res> get data {
    return $MilestoneDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$MilestoneCopyWith<$Res> implements $MilestoneCopyWith<$Res> {
  factory _$MilestoneCopyWith(
          _Milestone value, $Res Function(_Milestone) then) =
      __$MilestoneCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') MilestoneData data});

  @override
  $MilestoneDataCopyWith<$Res> get data;
}

/// @nodoc
class __$MilestoneCopyWithImpl<$Res> extends _$MilestoneCopyWithImpl<$Res>
    implements _$MilestoneCopyWith<$Res> {
  __$MilestoneCopyWithImpl(_Milestone _value, $Res Function(_Milestone) _then)
      : super(_value, (v) => _then(v as _Milestone));

  @override
  _Milestone get _value => super._value as _Milestone;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Milestone(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MilestoneData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Milestone implements _Milestone {
  _$_Milestone({@JsonKey(name: 'data') required this.data});

  factory _$_Milestone.fromJson(Map<String, dynamic> json) =>
      _$_$_MilestoneFromJson(json);

  @override
  @JsonKey(name: 'data')
  final MilestoneData data;

  @override
  String toString() {
    return 'Milestone(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Milestone &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  _$MilestoneCopyWith<_Milestone> get copyWith =>
      __$MilestoneCopyWithImpl<_Milestone>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MilestoneToJson(this);
  }
}

abstract class _Milestone implements Milestone {
  factory _Milestone({@JsonKey(name: 'data') required MilestoneData data}) =
      _$_Milestone;

  factory _Milestone.fromJson(Map<String, dynamic> json) =
      _$_Milestone.fromJson;

  @override
  @JsonKey(name: 'data')
  MilestoneData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MilestoneCopyWith<_Milestone> get copyWith =>
      throw _privateConstructorUsedError;
}
