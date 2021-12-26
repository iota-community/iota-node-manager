// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_metadata_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageMetadataData _$MessageMetadataDataFromJson(Map<String, dynamic> json) {
  return _MessageMetadataData.fromJson(json);
}

/// @nodoc
class _$MessageMetadataDataTearOff {
  const _$MessageMetadataDataTearOff();

  _MessageMetadataData call(
      {@JsonKey(name: 'messageId')
          required String messageId,
      @JsonKey(name: 'parentMessageIds')
          required List<String> parentMessageIds,
      @JsonKey(name: 'isSolid')
          bool? isSolid,
      @JsonKey(name: 'shouldPromote')
          bool? shouldPromote,
      @JsonKey(name: 'shouldReattach')
          bool? shouldReattach,
      @JsonKey(name: 'referencedByMilestoneIndex')
          required int referencedByMilestoneIndex,
      @JsonKey(name: 'milestoneIndex')
          int? milestoneIndex,
      @JsonKey(name: 'ledgerInclusionState')
          String? ledgerInclusionState}) {
    return _MessageMetadataData(
      messageId: messageId,
      parentMessageIds: parentMessageIds,
      isSolid: isSolid,
      shouldPromote: shouldPromote,
      shouldReattach: shouldReattach,
      referencedByMilestoneIndex: referencedByMilestoneIndex,
      milestoneIndex: milestoneIndex,
      ledgerInclusionState: ledgerInclusionState,
    );
  }

  MessageMetadataData fromJson(Map<String, Object?> json) {
    return MessageMetadataData.fromJson(json);
  }
}

/// @nodoc
const $MessageMetadataData = _$MessageMetadataDataTearOff();

/// @nodoc
mixin _$MessageMetadataData {
  @JsonKey(name: 'messageId')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'parentMessageIds')
  List<String> get parentMessageIds => throw _privateConstructorUsedError;
  @JsonKey(name: 'isSolid')
  bool? get isSolid => throw _privateConstructorUsedError;
  @JsonKey(name: 'shouldPromote')
  bool? get shouldPromote => throw _privateConstructorUsedError;
  @JsonKey(name: 'shouldReattach')
  bool? get shouldReattach => throw _privateConstructorUsedError;
  @JsonKey(name: 'referencedByMilestoneIndex')
  int get referencedByMilestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'milestoneIndex')
  int? get milestoneIndex => throw _privateConstructorUsedError;
  @JsonKey(name: 'ledgerInclusionState')
  String? get ledgerInclusionState => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageMetadataDataCopyWith<MessageMetadataData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageMetadataDataCopyWith<$Res> {
  factory $MessageMetadataDataCopyWith(
          MessageMetadataData value, $Res Function(MessageMetadataData) then) =
      _$MessageMetadataDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'messageId')
          String messageId,
      @JsonKey(name: 'parentMessageIds')
          List<String> parentMessageIds,
      @JsonKey(name: 'isSolid')
          bool? isSolid,
      @JsonKey(name: 'shouldPromote')
          bool? shouldPromote,
      @JsonKey(name: 'shouldReattach')
          bool? shouldReattach,
      @JsonKey(name: 'referencedByMilestoneIndex')
          int referencedByMilestoneIndex,
      @JsonKey(name: 'milestoneIndex')
          int? milestoneIndex,
      @JsonKey(name: 'ledgerInclusionState')
          String? ledgerInclusionState});
}

/// @nodoc
class _$MessageMetadataDataCopyWithImpl<$Res>
    implements $MessageMetadataDataCopyWith<$Res> {
  _$MessageMetadataDataCopyWithImpl(this._value, this._then);

  final MessageMetadataData _value;
  // ignore: unused_field
  final $Res Function(MessageMetadataData) _then;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? parentMessageIds = freezed,
    Object? isSolid = freezed,
    Object? shouldPromote = freezed,
    Object? shouldReattach = freezed,
    Object? referencedByMilestoneIndex = freezed,
    Object? milestoneIndex = freezed,
    Object? ledgerInclusionState = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      parentMessageIds: parentMessageIds == freezed
          ? _value.parentMessageIds
          : parentMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSolid: isSolid == freezed
          ? _value.isSolid
          : isSolid // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldPromote: shouldPromote == freezed
          ? _value.shouldPromote
          : shouldPromote // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldReattach: shouldReattach == freezed
          ? _value.shouldReattach
          : shouldReattach // ignore: cast_nullable_to_non_nullable
              as bool?,
      referencedByMilestoneIndex: referencedByMilestoneIndex == freezed
          ? _value.referencedByMilestoneIndex
          : referencedByMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      milestoneIndex: milestoneIndex == freezed
          ? _value.milestoneIndex
          : milestoneIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      ledgerInclusionState: ledgerInclusionState == freezed
          ? _value.ledgerInclusionState
          : ledgerInclusionState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MessageMetadataDataCopyWith<$Res>
    implements $MessageMetadataDataCopyWith<$Res> {
  factory _$MessageMetadataDataCopyWith(_MessageMetadataData value,
          $Res Function(_MessageMetadataData) then) =
      __$MessageMetadataDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'messageId')
          String messageId,
      @JsonKey(name: 'parentMessageIds')
          List<String> parentMessageIds,
      @JsonKey(name: 'isSolid')
          bool? isSolid,
      @JsonKey(name: 'shouldPromote')
          bool? shouldPromote,
      @JsonKey(name: 'shouldReattach')
          bool? shouldReattach,
      @JsonKey(name: 'referencedByMilestoneIndex')
          int referencedByMilestoneIndex,
      @JsonKey(name: 'milestoneIndex')
          int? milestoneIndex,
      @JsonKey(name: 'ledgerInclusionState')
          String? ledgerInclusionState});
}

/// @nodoc
class __$MessageMetadataDataCopyWithImpl<$Res>
    extends _$MessageMetadataDataCopyWithImpl<$Res>
    implements _$MessageMetadataDataCopyWith<$Res> {
  __$MessageMetadataDataCopyWithImpl(
      _MessageMetadataData _value, $Res Function(_MessageMetadataData) _then)
      : super(_value, (v) => _then(v as _MessageMetadataData));

  @override
  _MessageMetadataData get _value => super._value as _MessageMetadataData;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? parentMessageIds = freezed,
    Object? isSolid = freezed,
    Object? shouldPromote = freezed,
    Object? shouldReattach = freezed,
    Object? referencedByMilestoneIndex = freezed,
    Object? milestoneIndex = freezed,
    Object? ledgerInclusionState = freezed,
  }) {
    return _then(_MessageMetadataData(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      parentMessageIds: parentMessageIds == freezed
          ? _value.parentMessageIds
          : parentMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
      isSolid: isSolid == freezed
          ? _value.isSolid
          : isSolid // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldPromote: shouldPromote == freezed
          ? _value.shouldPromote
          : shouldPromote // ignore: cast_nullable_to_non_nullable
              as bool?,
      shouldReattach: shouldReattach == freezed
          ? _value.shouldReattach
          : shouldReattach // ignore: cast_nullable_to_non_nullable
              as bool?,
      referencedByMilestoneIndex: referencedByMilestoneIndex == freezed
          ? _value.referencedByMilestoneIndex
          : referencedByMilestoneIndex // ignore: cast_nullable_to_non_nullable
              as int,
      milestoneIndex: milestoneIndex == freezed
          ? _value.milestoneIndex
          : milestoneIndex // ignore: cast_nullable_to_non_nullable
              as int?,
      ledgerInclusionState: ledgerInclusionState == freezed
          ? _value.ledgerInclusionState
          : ledgerInclusionState // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageMetadataData implements _MessageMetadataData {
  _$_MessageMetadataData(
      {@JsonKey(name: 'messageId')
          required this.messageId,
      @JsonKey(name: 'parentMessageIds')
          required this.parentMessageIds,
      @JsonKey(name: 'isSolid')
          this.isSolid,
      @JsonKey(name: 'shouldPromote')
          this.shouldPromote,
      @JsonKey(name: 'shouldReattach')
          this.shouldReattach,
      @JsonKey(name: 'referencedByMilestoneIndex')
          required this.referencedByMilestoneIndex,
      @JsonKey(name: 'milestoneIndex')
          this.milestoneIndex,
      @JsonKey(name: 'ledgerInclusionState')
          this.ledgerInclusionState});

  factory _$_MessageMetadataData.fromJson(Map<String, dynamic> json) =>
      _$$_MessageMetadataDataFromJson(json);

  @override
  @JsonKey(name: 'messageId')
  final String messageId;
  @override
  @JsonKey(name: 'parentMessageIds')
  final List<String> parentMessageIds;
  @override
  @JsonKey(name: 'isSolid')
  final bool? isSolid;
  @override
  @JsonKey(name: 'shouldPromote')
  final bool? shouldPromote;
  @override
  @JsonKey(name: 'shouldReattach')
  final bool? shouldReattach;
  @override
  @JsonKey(name: 'referencedByMilestoneIndex')
  final int referencedByMilestoneIndex;
  @override
  @JsonKey(name: 'milestoneIndex')
  final int? milestoneIndex;
  @override
  @JsonKey(name: 'ledgerInclusionState')
  final String? ledgerInclusionState;

  @override
  String toString() {
    return 'MessageMetadataData(messageId: $messageId, parentMessageIds: $parentMessageIds, isSolid: $isSolid, shouldPromote: $shouldPromote, shouldReattach: $shouldReattach, referencedByMilestoneIndex: $referencedByMilestoneIndex, milestoneIndex: $milestoneIndex, ledgerInclusionState: $ledgerInclusionState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageMetadataData &&
            const DeepCollectionEquality().equals(other.messageId, messageId) &&
            const DeepCollectionEquality()
                .equals(other.parentMessageIds, parentMessageIds) &&
            const DeepCollectionEquality().equals(other.isSolid, isSolid) &&
            const DeepCollectionEquality()
                .equals(other.shouldPromote, shouldPromote) &&
            const DeepCollectionEquality()
                .equals(other.shouldReattach, shouldReattach) &&
            const DeepCollectionEquality().equals(
                other.referencedByMilestoneIndex, referencedByMilestoneIndex) &&
            const DeepCollectionEquality()
                .equals(other.milestoneIndex, milestoneIndex) &&
            const DeepCollectionEquality()
                .equals(other.ledgerInclusionState, ledgerInclusionState));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(messageId),
      const DeepCollectionEquality().hash(parentMessageIds),
      const DeepCollectionEquality().hash(isSolid),
      const DeepCollectionEquality().hash(shouldPromote),
      const DeepCollectionEquality().hash(shouldReattach),
      const DeepCollectionEquality().hash(referencedByMilestoneIndex),
      const DeepCollectionEquality().hash(milestoneIndex),
      const DeepCollectionEquality().hash(ledgerInclusionState));

  @JsonKey(ignore: true)
  @override
  _$MessageMetadataDataCopyWith<_MessageMetadataData> get copyWith =>
      __$MessageMetadataDataCopyWithImpl<_MessageMetadataData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageMetadataDataToJson(this);
  }
}

abstract class _MessageMetadataData implements MessageMetadataData {
  factory _MessageMetadataData(
      {@JsonKey(name: 'messageId')
          required String messageId,
      @JsonKey(name: 'parentMessageIds')
          required List<String> parentMessageIds,
      @JsonKey(name: 'isSolid')
          bool? isSolid,
      @JsonKey(name: 'shouldPromote')
          bool? shouldPromote,
      @JsonKey(name: 'shouldReattach')
          bool? shouldReattach,
      @JsonKey(name: 'referencedByMilestoneIndex')
          required int referencedByMilestoneIndex,
      @JsonKey(name: 'milestoneIndex')
          int? milestoneIndex,
      @JsonKey(name: 'ledgerInclusionState')
          String? ledgerInclusionState}) = _$_MessageMetadataData;

  factory _MessageMetadataData.fromJson(Map<String, dynamic> json) =
      _$_MessageMetadataData.fromJson;

  @override
  @JsonKey(name: 'messageId')
  String get messageId;
  @override
  @JsonKey(name: 'parentMessageIds')
  List<String> get parentMessageIds;
  @override
  @JsonKey(name: 'isSolid')
  bool? get isSolid;
  @override
  @JsonKey(name: 'shouldPromote')
  bool? get shouldPromote;
  @override
  @JsonKey(name: 'shouldReattach')
  bool? get shouldReattach;
  @override
  @JsonKey(name: 'referencedByMilestoneIndex')
  int get referencedByMilestoneIndex;
  @override
  @JsonKey(name: 'milestoneIndex')
  int? get milestoneIndex;
  @override
  @JsonKey(name: 'ledgerInclusionState')
  String? get ledgerInclusionState;
  @override
  @JsonKey(ignore: true)
  _$MessageMetadataDataCopyWith<_MessageMetadataData> get copyWith =>
      throw _privateConstructorUsedError;
}
