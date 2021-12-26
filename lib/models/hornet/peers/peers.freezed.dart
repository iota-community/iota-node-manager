// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'peers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Peers _$PeersFromJson(Map<String, dynamic> json) {
  return _Peers.fromJson(json);
}

/// @nodoc
class _$PeersTearOff {
  const _$PeersTearOff();

  _Peers call({@JsonKey(name: 'data') required List<Peer> data}) {
    return _Peers(
      data: data,
    );
  }

  Peers fromJson(Map<String, Object?> json) {
    return Peers.fromJson(json);
  }
}

/// @nodoc
const $Peers = _$PeersTearOff();

/// @nodoc
mixin _$Peers {
  @JsonKey(name: 'data')
  List<Peer> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeersCopyWith<Peers> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeersCopyWith<$Res> {
  factory $PeersCopyWith(Peers value, $Res Function(Peers) then) =
      _$PeersCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') List<Peer> data});
}

/// @nodoc
class _$PeersCopyWithImpl<$Res> implements $PeersCopyWith<$Res> {
  _$PeersCopyWithImpl(this._value, this._then);

  final Peers _value;
  // ignore: unused_field
  final $Res Function(Peers) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Peer>,
    ));
  }
}

/// @nodoc
abstract class _$PeersCopyWith<$Res> implements $PeersCopyWith<$Res> {
  factory _$PeersCopyWith(_Peers value, $Res Function(_Peers) then) =
      __$PeersCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') List<Peer> data});
}

/// @nodoc
class __$PeersCopyWithImpl<$Res> extends _$PeersCopyWithImpl<$Res>
    implements _$PeersCopyWith<$Res> {
  __$PeersCopyWithImpl(_Peers _value, $Res Function(_Peers) _then)
      : super(_value, (v) => _then(v as _Peers));

  @override
  _Peers get _value => super._value as _Peers;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_Peers(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<Peer>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Peers implements _Peers {
  _$_Peers({@JsonKey(name: 'data') required this.data});

  factory _$_Peers.fromJson(Map<String, dynamic> json) =>
      _$$_PeersFromJson(json);

  @override
  @JsonKey(name: 'data')
  final List<Peer> data;

  @override
  String toString() {
    return 'Peers(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Peers &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$PeersCopyWith<_Peers> get copyWith =>
      __$PeersCopyWithImpl<_Peers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeersToJson(this);
  }
}

abstract class _Peers implements Peers {
  factory _Peers({@JsonKey(name: 'data') required List<Peer> data}) = _$_Peers;

  factory _Peers.fromJson(Map<String, dynamic> json) = _$_Peers.fromJson;

  @override
  @JsonKey(name: 'data')
  List<Peer> get data;
  @override
  @JsonKey(ignore: true)
  _$PeersCopyWith<_Peers> get copyWith => throw _privateConstructorUsedError;
}
