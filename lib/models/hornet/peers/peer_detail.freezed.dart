// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'peer_detail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PeerDetail _$PeerDetailFromJson(Map<String, dynamic> json) {
  return _PeerDetail.fromJson(json);
}

/// @nodoc
class _$PeerDetailTearOff {
  const _$PeerDetailTearOff();

  _PeerDetail call({@JsonKey(name: 'data') required Peer data}) {
    return _PeerDetail(
      data: data,
    );
  }

  PeerDetail fromJson(Map<String, Object?> json) {
    return PeerDetail.fromJson(json);
  }
}

/// @nodoc
const $PeerDetail = _$PeerDetailTearOff();

/// @nodoc
mixin _$PeerDetail {
  @JsonKey(name: 'data')
  Peer get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeerDetailCopyWith<PeerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeerDetailCopyWith<$Res> {
  factory $PeerDetailCopyWith(
          PeerDetail value, $Res Function(PeerDetail) then) =
      _$PeerDetailCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') Peer data});

  $PeerCopyWith<$Res> get data;
}

/// @nodoc
class _$PeerDetailCopyWithImpl<$Res> implements $PeerDetailCopyWith<$Res> {
  _$PeerDetailCopyWithImpl(this._value, this._then);

  final PeerDetail _value;
  // ignore: unused_field
  final $Res Function(PeerDetail) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Peer,
    ));
  }

  @override
  $PeerCopyWith<$Res> get data {
    return $PeerCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$PeerDetailCopyWith<$Res> implements $PeerDetailCopyWith<$Res> {
  factory _$PeerDetailCopyWith(
          _PeerDetail value, $Res Function(_PeerDetail) then) =
      __$PeerDetailCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') Peer data});

  @override
  $PeerCopyWith<$Res> get data;
}

/// @nodoc
class __$PeerDetailCopyWithImpl<$Res> extends _$PeerDetailCopyWithImpl<$Res>
    implements _$PeerDetailCopyWith<$Res> {
  __$PeerDetailCopyWithImpl(
      _PeerDetail _value, $Res Function(_PeerDetail) _then)
      : super(_value, (v) => _then(v as _PeerDetail));

  @override
  _PeerDetail get _value => super._value as _PeerDetail;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_PeerDetail(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Peer,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PeerDetail implements _PeerDetail {
  _$_PeerDetail({@JsonKey(name: 'data') required this.data});

  factory _$_PeerDetail.fromJson(Map<String, dynamic> json) =>
      _$$_PeerDetailFromJson(json);

  @override
  @JsonKey(name: 'data')
  final Peer data;

  @override
  String toString() {
    return 'PeerDetail(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PeerDetail &&
            (identical(other.data, data) || other.data == data));
  }

  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  _$PeerDetailCopyWith<_PeerDetail> get copyWith =>
      __$PeerDetailCopyWithImpl<_PeerDetail>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeerDetailToJson(this);
  }
}

abstract class _PeerDetail implements PeerDetail {
  factory _PeerDetail({@JsonKey(name: 'data') required Peer data}) =
      _$_PeerDetail;

  factory _PeerDetail.fromJson(Map<String, dynamic> json) =
      _$_PeerDetail.fromJson;

  @override
  @JsonKey(name: 'data')
  Peer get data;
  @override
  @JsonKey(ignore: true)
  _$PeerDetailCopyWith<_PeerDetail> get copyWith =>
      throw _privateConstructorUsedError;
}
