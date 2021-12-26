// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edit_peer_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditPeerStateTearOff {
  const _$EditPeerStateTearOff();

  _EditPeerState call(
      {required PeerId id,
      required PeerAddress address,
      required PeerAlias alias,
      required FormzStatus status}) {
    return _EditPeerState(
      id: id,
      address: address,
      alias: alias,
      status: status,
    );
  }
}

/// @nodoc
const $EditPeerState = _$EditPeerStateTearOff();

/// @nodoc
mixin _$EditPeerState {
  PeerId get id => throw _privateConstructorUsedError;
  PeerAddress get address => throw _privateConstructorUsedError;
  PeerAlias get alias => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditPeerStateCopyWith<EditPeerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditPeerStateCopyWith<$Res> {
  factory $EditPeerStateCopyWith(
          EditPeerState value, $Res Function(EditPeerState) then) =
      _$EditPeerStateCopyWithImpl<$Res>;
  $Res call(
      {PeerId id, PeerAddress address, PeerAlias alias, FormzStatus status});
}

/// @nodoc
class _$EditPeerStateCopyWithImpl<$Res>
    implements $EditPeerStateCopyWith<$Res> {
  _$EditPeerStateCopyWithImpl(this._value, this._then);

  final EditPeerState _value;
  // ignore: unused_field
  final $Res Function(EditPeerState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? alias = freezed,
    Object? status = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PeerId,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PeerAddress,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as PeerAlias,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$EditPeerStateCopyWith<$Res>
    implements $EditPeerStateCopyWith<$Res> {
  factory _$EditPeerStateCopyWith(
          _EditPeerState value, $Res Function(_EditPeerState) then) =
      __$EditPeerStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {PeerId id, PeerAddress address, PeerAlias alias, FormzStatus status});
}

/// @nodoc
class __$EditPeerStateCopyWithImpl<$Res>
    extends _$EditPeerStateCopyWithImpl<$Res>
    implements _$EditPeerStateCopyWith<$Res> {
  __$EditPeerStateCopyWithImpl(
      _EditPeerState _value, $Res Function(_EditPeerState) _then)
      : super(_value, (v) => _then(v as _EditPeerState));

  @override
  _EditPeerState get _value => super._value as _EditPeerState;

  @override
  $Res call({
    Object? id = freezed,
    Object? address = freezed,
    Object? alias = freezed,
    Object? status = freezed,
  }) {
    return _then(_EditPeerState(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as PeerId,
      address: address == freezed
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as PeerAddress,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as PeerAlias,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_EditPeerState implements _EditPeerState {
  const _$_EditPeerState(
      {required this.id,
      required this.address,
      required this.alias,
      required this.status});

  @override
  final PeerId id;
  @override
  final PeerAddress address;
  @override
  final PeerAlias alias;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'EditPeerState(id: $id, address: $address, alias: $alias, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EditPeerState &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.address, address) &&
            const DeepCollectionEquality().equals(other.alias, alias) &&
            const DeepCollectionEquality().equals(other.status, status));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(address),
      const DeepCollectionEquality().hash(alias),
      const DeepCollectionEquality().hash(status));

  @JsonKey(ignore: true)
  @override
  _$EditPeerStateCopyWith<_EditPeerState> get copyWith =>
      __$EditPeerStateCopyWithImpl<_EditPeerState>(this, _$identity);
}

abstract class _EditPeerState implements EditPeerState {
  const factory _EditPeerState(
      {required PeerId id,
      required PeerAddress address,
      required PeerAlias alias,
      required FormzStatus status}) = _$_EditPeerState;

  @override
  PeerId get id;
  @override
  PeerAddress get address;
  @override
  PeerAlias get alias;
  @override
  FormzStatus get status;
  @override
  @JsonKey(ignore: true)
  _$EditPeerStateCopyWith<_EditPeerState> get copyWith =>
      throw _privateConstructorUsedError;
}
