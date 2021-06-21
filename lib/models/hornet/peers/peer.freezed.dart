// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'peer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Peer _$PeerFromJson(Map<String, dynamic> json) {
  return _Peer.fromJson(json);
}

/// @nodoc
class _$PeerTearOff {
  const _$PeerTearOff();

  _Peer call(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'multiAddresses') required List<String> multiAddresses,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'relation') required String relation,
      @JsonKey(name: 'connected') required bool connected,
      @JsonKey(name: 'gossip') Gossip? gossip}) {
    return _Peer(
      id: id,
      multiAddresses: multiAddresses,
      alias: alias,
      relation: relation,
      connected: connected,
      gossip: gossip,
    );
  }

  Peer fromJson(Map<String, Object> json) {
    return Peer.fromJson(json);
  }
}

/// @nodoc
const $Peer = _$PeerTearOff();

/// @nodoc
mixin _$Peer {
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'multiAddresses')
  List<String> get multiAddresses => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias')
  String? get alias => throw _privateConstructorUsedError;
  @JsonKey(name: 'relation')
  String get relation => throw _privateConstructorUsedError;
  @JsonKey(name: 'connected')
  bool get connected => throw _privateConstructorUsedError;
  @JsonKey(name: 'gossip')
  Gossip? get gossip => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeerCopyWith<Peer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeerCopyWith<$Res> {
  factory $PeerCopyWith(Peer value, $Res Function(Peer) then) =
      _$PeerCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'multiAddresses') List<String> multiAddresses,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'relation') String relation,
      @JsonKey(name: 'connected') bool connected,
      @JsonKey(name: 'gossip') Gossip? gossip});

  $GossipCopyWith<$Res>? get gossip;
}

/// @nodoc
class _$PeerCopyWithImpl<$Res> implements $PeerCopyWith<$Res> {
  _$PeerCopyWithImpl(this._value, this._then);

  final Peer _value;
  // ignore: unused_field
  final $Res Function(Peer) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? multiAddresses = freezed,
    Object? alias = freezed,
    Object? relation = freezed,
    Object? connected = freezed,
    Object? gossip = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      multiAddresses: multiAddresses == freezed
          ? _value.multiAddresses
          : multiAddresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: relation == freezed
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      gossip: gossip == freezed
          ? _value.gossip
          : gossip // ignore: cast_nullable_to_non_nullable
              as Gossip?,
    ));
  }

  @override
  $GossipCopyWith<$Res>? get gossip {
    if (_value.gossip == null) {
      return null;
    }

    return $GossipCopyWith<$Res>(_value.gossip!, (value) {
      return _then(_value.copyWith(gossip: value));
    });
  }
}

/// @nodoc
abstract class _$PeerCopyWith<$Res> implements $PeerCopyWith<$Res> {
  factory _$PeerCopyWith(_Peer value, $Res Function(_Peer) then) =
      __$PeerCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'id') String id,
      @JsonKey(name: 'multiAddresses') List<String> multiAddresses,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'relation') String relation,
      @JsonKey(name: 'connected') bool connected,
      @JsonKey(name: 'gossip') Gossip? gossip});

  @override
  $GossipCopyWith<$Res>? get gossip;
}

/// @nodoc
class __$PeerCopyWithImpl<$Res> extends _$PeerCopyWithImpl<$Res>
    implements _$PeerCopyWith<$Res> {
  __$PeerCopyWithImpl(_Peer _value, $Res Function(_Peer) _then)
      : super(_value, (v) => _then(v as _Peer));

  @override
  _Peer get _value => super._value as _Peer;

  @override
  $Res call({
    Object? id = freezed,
    Object? multiAddresses = freezed,
    Object? alias = freezed,
    Object? relation = freezed,
    Object? connected = freezed,
    Object? gossip = freezed,
  }) {
    return _then(_Peer(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      multiAddresses: multiAddresses == freezed
          ? _value.multiAddresses
          : multiAddresses // ignore: cast_nullable_to_non_nullable
              as List<String>,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String?,
      relation: relation == freezed
          ? _value.relation
          : relation // ignore: cast_nullable_to_non_nullable
              as String,
      connected: connected == freezed
          ? _value.connected
          : connected // ignore: cast_nullable_to_non_nullable
              as bool,
      gossip: gossip == freezed
          ? _value.gossip
          : gossip // ignore: cast_nullable_to_non_nullable
              as Gossip?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Peer implements _Peer {
  _$_Peer(
      {@JsonKey(name: 'id') required this.id,
      @JsonKey(name: 'multiAddresses') required this.multiAddresses,
      @JsonKey(name: 'alias') this.alias,
      @JsonKey(name: 'relation') required this.relation,
      @JsonKey(name: 'connected') required this.connected,
      @JsonKey(name: 'gossip') this.gossip});

  factory _$_Peer.fromJson(Map<String, dynamic> json) =>
      _$_$_PeerFromJson(json);

  @override
  @JsonKey(name: 'id')
  final String id;
  @override
  @JsonKey(name: 'multiAddresses')
  final List<String> multiAddresses;
  @override
  @JsonKey(name: 'alias')
  final String? alias;
  @override
  @JsonKey(name: 'relation')
  final String relation;
  @override
  @JsonKey(name: 'connected')
  final bool connected;
  @override
  @JsonKey(name: 'gossip')
  final Gossip? gossip;

  @override
  String toString() {
    return 'Peer(id: $id, multiAddresses: $multiAddresses, alias: $alias, relation: $relation, connected: $connected, gossip: $gossip)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Peer &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.multiAddresses, multiAddresses) ||
                const DeepCollectionEquality()
                    .equals(other.multiAddresses, multiAddresses)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)) &&
            (identical(other.relation, relation) ||
                const DeepCollectionEquality()
                    .equals(other.relation, relation)) &&
            (identical(other.connected, connected) ||
                const DeepCollectionEquality()
                    .equals(other.connected, connected)) &&
            (identical(other.gossip, gossip) ||
                const DeepCollectionEquality().equals(other.gossip, gossip)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(multiAddresses) ^
      const DeepCollectionEquality().hash(alias) ^
      const DeepCollectionEquality().hash(relation) ^
      const DeepCollectionEquality().hash(connected) ^
      const DeepCollectionEquality().hash(gossip);

  @JsonKey(ignore: true)
  @override
  _$PeerCopyWith<_Peer> get copyWith =>
      __$PeerCopyWithImpl<_Peer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PeerToJson(this);
  }
}

abstract class _Peer implements Peer {
  factory _Peer(
      {@JsonKey(name: 'id') required String id,
      @JsonKey(name: 'multiAddresses') required List<String> multiAddresses,
      @JsonKey(name: 'alias') String? alias,
      @JsonKey(name: 'relation') required String relation,
      @JsonKey(name: 'connected') required bool connected,
      @JsonKey(name: 'gossip') Gossip? gossip}) = _$_Peer;

  factory _Peer.fromJson(Map<String, dynamic> json) = _$_Peer.fromJson;

  @override
  @JsonKey(name: 'id')
  String get id => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'multiAddresses')
  List<String> get multiAddresses => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'alias')
  String? get alias => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'relation')
  String get relation => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'connected')
  bool get connected => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'gossip')
  Gossip? get gossip => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PeerCopyWith<_Peer> get copyWith => throw _privateConstructorUsedError;
}
