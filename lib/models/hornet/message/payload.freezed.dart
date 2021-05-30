// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payload _$PayloadFromJson(Map<String, dynamic> json) {
  return _Payload.fromJson(json);
}

/// @nodoc
class _$PayloadTearOff {
  const _$PayloadTearOff();

  _Payload call(
      {@JsonKey(name: 'type')
          required int type,
      @JsonKey(name: 'index')
          required int index,
      @JsonKey(name: 'timestamp')
          required int timestamp,
      @JsonKey(name: 'parentMessageIds')
          required List<String> parentMessageIds,
      @JsonKey(name: 'inclusionMerkleProof')
          required String inclusionMerkleProof,
      @JsonKey(name: 'nextPoWScore')
          required int nextPoWScore,
      @JsonKey(name: 'nextPoWScoreMilestoneIndex')
          required int nextPoWScoreMilestoneIndex,
      @JsonKey(name: 'publicKeys')
          required List<String> publicKeys,
      @JsonKey(name: 'receipt')
          Object? receipt,
      @JsonKey(name: 'signatures')
          required List<String> signatures}) {
    return _Payload(
      type: type,
      index: index,
      timestamp: timestamp,
      parentMessageIds: parentMessageIds,
      inclusionMerkleProof: inclusionMerkleProof,
      nextPoWScore: nextPoWScore,
      nextPoWScoreMilestoneIndex: nextPoWScoreMilestoneIndex,
      publicKeys: publicKeys,
      receipt: receipt,
      signatures: signatures,
    );
  }

  Payload fromJson(Map<String, Object> json) {
    return Payload.fromJson(json);
  }
}

/// @nodoc
const $Payload = _$PayloadTearOff();

/// @nodoc
mixin _$Payload {
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  int get index => throw _privateConstructorUsedError;
  @JsonKey(name: 'timestamp')
  int get timestamp => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentMessageIds')
  List<String> get parentMessageIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'inclusionMerkleProof')
  String get inclusionMerkleProof => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextPoWScore')
  int get nextPoWScore => throw _privateConstructorUsedError;
  @JsonKey(name: 'nextPoWScoreMilestoneIndex')
  int get nextPoWScoreMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'publicKeys')
  List<String> get publicKeys => throw _privateConstructorUsedError;
  @JsonKey(name: 'receipt')
  Object? get receipt => throw _privateConstructorUsedError;
  @JsonKey(name: 'signatures')
  List<String> get signatures => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PayloadCopyWith<Payload> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PayloadCopyWith<$Res> {
  factory $PayloadCopyWith(Payload value, $Res Function(Payload) then) =
      _$PayloadCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'type')
          int type,
      @JsonKey(name: 'index')
          int index,
      @JsonKey(name: 'timestamp')
          int timestamp,
      @JsonKey(name: 'parentMessageIds')
          List<String> parentMessageIds,
      @JsonKey(name: 'inclusionMerkleProof')
          String inclusionMerkleProof,
      @JsonKey(name: 'nextPoWScore')
          int nextPoWScore,
      @JsonKey(name: 'nextPoWScoreMilestoneIndex')
          int nextPoWScoreMilestoneIndex,
      @JsonKey(name: 'publicKeys')
          List<String> publicKeys,
      @JsonKey(name: 'receipt')
          Object? receipt,
      @JsonKey(name: 'signatures')
          List<String> signatures});
}

/// @nodoc
class _$PayloadCopyWithImpl<$Res> implements $PayloadCopyWith<$Res> {
  _$PayloadCopyWithImpl(this._value, this._then);

  final Payload _value;
  // ignore: unused_field
  final $Res Function(Payload) _then;

  @override
  $Res call({
    Object? type = freezed,
    Object? index = freezed,
    Object? timestamp = freezed,
    Object? parentMessageIds = freezed,
    Object? inclusionMerkleProof = freezed,
    Object? nextPoWScore = freezed,
    Object? nextPoWScoreMilestoneIndex = freezed,
    Object? publicKeys = freezed,
    Object? receipt = freezed,
    Object? signatures = freezed,
  }) {
    return _then(_value.copyWith(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      parentMessageIds: parentMessageIds == freezed
          ? _value.parentMessageIds
          : parentMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inclusionMerkleProof: inclusionMerkleProof == freezed
          ? _value.inclusionMerkleProof
          : inclusionMerkleProof // ignore: cast_nullable_to_non_nullable
              as String,
      nextPoWScore: nextPoWScore == freezed
          ? _value.nextPoWScore
          : nextPoWScore // ignore: cast_nullable_to_non_nullable
              as int,
      nextPoWScoreMilestoneIndex: nextPoWScoreMilestoneIndex == freezed
          ? _value.nextPoWScoreMilestoneIndex
          : nextPoWScoreMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      publicKeys: publicKeys == freezed
          ? _value.publicKeys
          : publicKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      receipt: receipt == freezed ? _value.receipt : receipt,
      signatures: signatures == freezed
          ? _value.signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$PayloadCopyWith<$Res> implements $PayloadCopyWith<$Res> {
  factory _$PayloadCopyWith(_Payload value, $Res Function(_Payload) then) =
      __$PayloadCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'type')
          int type,
      @JsonKey(name: 'index')
          int index,
      @JsonKey(name: 'timestamp')
          int timestamp,
      @JsonKey(name: 'parentMessageIds')
          List<String> parentMessageIds,
      @JsonKey(name: 'inclusionMerkleProof')
          String inclusionMerkleProof,
      @JsonKey(name: 'nextPoWScore')
          int nextPoWScore,
      @JsonKey(name: 'nextPoWScoreMilestoneIndex')
          int nextPoWScoreMilestoneIndex,
      @JsonKey(name: 'publicKeys')
          List<String> publicKeys,
      @JsonKey(name: 'receipt')
          Object? receipt,
      @JsonKey(name: 'signatures')
          List<String> signatures});
}

/// @nodoc
class __$PayloadCopyWithImpl<$Res> extends _$PayloadCopyWithImpl<$Res>
    implements _$PayloadCopyWith<$Res> {
  __$PayloadCopyWithImpl(_Payload _value, $Res Function(_Payload) _then)
      : super(_value, (v) => _then(v as _Payload));

  @override
  _Payload get _value => super._value as _Payload;

  @override
  $Res call({
    Object? type = freezed,
    Object? index = freezed,
    Object? timestamp = freezed,
    Object? parentMessageIds = freezed,
    Object? inclusionMerkleProof = freezed,
    Object? nextPoWScore = freezed,
    Object? nextPoWScoreMilestoneIndex = freezed,
    Object? publicKeys = freezed,
    Object? receipt = freezed,
    Object? signatures = freezed,
  }) {
    return _then(_Payload(
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
      timestamp: timestamp == freezed
          ? _value.timestamp
          : timestamp // ignore: cast_nullable_to_non_nullable
              as int,
      parentMessageIds: parentMessageIds == freezed
          ? _value.parentMessageIds
          : parentMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      inclusionMerkleProof: inclusionMerkleProof == freezed
          ? _value.inclusionMerkleProof
          : inclusionMerkleProof // ignore: cast_nullable_to_non_nullable
              as String,
      nextPoWScore: nextPoWScore == freezed
          ? _value.nextPoWScore
          : nextPoWScore // ignore: cast_nullable_to_non_nullable
              as int,
      nextPoWScoreMilestoneIndex: nextPoWScoreMilestoneIndex == freezed
          ? _value.nextPoWScoreMilestoneIndex
          : nextPoWScoreMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      publicKeys: publicKeys == freezed
          ? _value.publicKeys
          : publicKeys // ignore: cast_nullable_to_non_nullable
              as List<String>,
      receipt: receipt == freezed ? _value.receipt : receipt,
      signatures: signatures == freezed
          ? _value.signatures
          : signatures // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Payload implements _Payload {
  _$_Payload(
      {@JsonKey(name: 'type')
          required this.type,
      @JsonKey(name: 'index')
          required this.index,
      @JsonKey(name: 'timestamp')
          required this.timestamp,
      @JsonKey(name: 'parentMessageIds')
          required this.parentMessageIds,
      @JsonKey(name: 'inclusionMerkleProof')
          required this.inclusionMerkleProof,
      @JsonKey(name: 'nextPoWScore')
          required this.nextPoWScore,
      @JsonKey(name: 'nextPoWScoreMilestoneIndex')
          required this.nextPoWScoreMilestoneIndex,
      @JsonKey(name: 'publicKeys')
          required this.publicKeys,
      @JsonKey(name: 'receipt')
          this.receipt,
      @JsonKey(name: 'signatures')
          required this.signatures});

  factory _$_Payload.fromJson(Map<String, dynamic> json) =>
      _$_$_PayloadFromJson(json);

  @override
  @JsonKey(name: 'type')
  final int type;
  @override
  @JsonKey(name: 'index')
  final int index;
  @override
  @JsonKey(name: 'timestamp')
  final int timestamp;
  @override
  @JsonKey(name: 'parentMessageIds')
  final List<String> parentMessageIds;
  @override
  @JsonKey(name: 'inclusionMerkleProof')
  final String inclusionMerkleProof;
  @override
  @JsonKey(name: 'nextPoWScore')
  final int nextPoWScore;
  @override
  @JsonKey(name: 'nextPoWScoreMilestoneIndex')
  final int nextPoWScoreMilestoneIndex;
  @override
  @JsonKey(name: 'publicKeys')
  final List<String> publicKeys;
  @override
  @JsonKey(name: 'receipt')
  final Object? receipt;
  @override
  @JsonKey(name: 'signatures')
  final List<String> signatures;

  @override
  String toString() {
    return 'Payload(type: $type, index: $index, timestamp: $timestamp, parentMessageIds: $parentMessageIds, inclusionMerkleProof: $inclusionMerkleProof, nextPoWScore: $nextPoWScore, nextPoWScoreMilestoneIndex: $nextPoWScoreMilestoneIndex, publicKeys: $publicKeys, receipt: $receipt, signatures: $signatures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Payload &&
            (identical(other.type, type) ||
                const DeepCollectionEquality().equals(other.type, type)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)) &&
            (identical(other.timestamp, timestamp) ||
                const DeepCollectionEquality()
                    .equals(other.timestamp, timestamp)) &&
            (identical(other.parentMessageIds, parentMessageIds) ||
                const DeepCollectionEquality()
                    .equals(other.parentMessageIds, parentMessageIds)) &&
            (identical(other.inclusionMerkleProof, inclusionMerkleProof) ||
                const DeepCollectionEquality().equals(
                    other.inclusionMerkleProof, inclusionMerkleProof)) &&
            (identical(other.nextPoWScore, nextPoWScore) ||
                const DeepCollectionEquality()
                    .equals(other.nextPoWScore, nextPoWScore)) &&
            (identical(other.nextPoWScoreMilestoneIndex,
                    nextPoWScoreMilestoneIndex) ||
                const DeepCollectionEquality().equals(
                    other.nextPoWScoreMilestoneIndex,
                    nextPoWScoreMilestoneIndex)) &&
            (identical(other.publicKeys, publicKeys) ||
                const DeepCollectionEquality()
                    .equals(other.publicKeys, publicKeys)) &&
            (identical(other.receipt, receipt) ||
                const DeepCollectionEquality()
                    .equals(other.receipt, receipt)) &&
            (identical(other.signatures, signatures) ||
                const DeepCollectionEquality()
                    .equals(other.signatures, signatures)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(type) ^
      const DeepCollectionEquality().hash(index) ^
      const DeepCollectionEquality().hash(timestamp) ^
      const DeepCollectionEquality().hash(parentMessageIds) ^
      const DeepCollectionEquality().hash(inclusionMerkleProof) ^
      const DeepCollectionEquality().hash(nextPoWScore) ^
      const DeepCollectionEquality().hash(nextPoWScoreMilestoneIndex) ^
      const DeepCollectionEquality().hash(publicKeys) ^
      const DeepCollectionEquality().hash(receipt) ^
      const DeepCollectionEquality().hash(signatures);

  @JsonKey(ignore: true)
  @override
  _$PayloadCopyWith<_Payload> get copyWith =>
      __$PayloadCopyWithImpl<_Payload>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PayloadToJson(this);
  }
}

abstract class _Payload implements Payload {
  factory _Payload(
      {@JsonKey(name: 'type')
          required int type,
      @JsonKey(name: 'index')
          required int index,
      @JsonKey(name: 'timestamp')
          required int timestamp,
      @JsonKey(name: 'parentMessageIds')
          required List<String> parentMessageIds,
      @JsonKey(name: 'inclusionMerkleProof')
          required String inclusionMerkleProof,
      @JsonKey(name: 'nextPoWScore')
          required int nextPoWScore,
      @JsonKey(name: 'nextPoWScoreMilestoneIndex')
          required int nextPoWScoreMilestoneIndex,
      @JsonKey(name: 'publicKeys')
          required List<String> publicKeys,
      @JsonKey(name: 'receipt')
          Object? receipt,
      @JsonKey(name: 'signatures')
          required List<String> signatures}) = _$_Payload;

  factory _Payload.fromJson(Map<String, dynamic> json) = _$_Payload.fromJson;

  @override
  @JsonKey(name: 'type')
  int get type => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'index')
  int get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'timestamp')
  int get timestamp => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'parentMessageIds')
  List<String> get parentMessageIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'inclusionMerkleProof')
  String get inclusionMerkleProof => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nextPoWScore')
  int get nextPoWScore => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'nextPoWScoreMilestoneIndex')
  int get nextPoWScoreMilestoneIndex => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'publicKeys')
  List<String> get publicKeys => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'receipt')
  Object? get receipt => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'signatures')
  List<String> get signatures => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PayloadCopyWith<_Payload> get copyWith =>
      throw _privateConstructorUsedError;
}
