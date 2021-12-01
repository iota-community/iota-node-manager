// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_children_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageChildrenData _$MessageChildrenDataFromJson(Map<String, dynamic> json) {
  return _MessageChildrenData.fromJson(json);
}

/// @nodoc
class _$MessageChildrenDataTearOff {
  const _$MessageChildrenDataTearOff();

  _MessageChildrenData call(
      {@JsonKey(name: 'messageId')
          required String messageId,
      @JsonKey(name: 'maxResults')
          required int maxResults,
      @JsonKey(name: 'count')
          required int count,
      @JsonKey(name: 'childrenMessageIds')
          required List<String> childrenMessageIds}) {
    return _MessageChildrenData(
      messageId: messageId,
      maxResults: maxResults,
      count: count,
      childrenMessageIds: childrenMessageIds,
    );
  }

  MessageChildrenData fromJson(Map<String, Object> json) {
    return MessageChildrenData.fromJson(json);
  }
}

/// @nodoc
const $MessageChildrenData = _$MessageChildrenDataTearOff();

/// @nodoc
mixin _$MessageChildrenData {
  @JsonKey(name: 'messageId')
  String get messageId => throw _privateConstructorUsedError;
  @JsonKey(name: 'maxResults')
  int get maxResults => throw _privateConstructorUsedError;
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @JsonKey(name: 'childrenMessageIds')
  List<String> get childrenMessageIds => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageChildrenDataCopyWith<MessageChildrenData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChildrenDataCopyWith<$Res> {
  factory $MessageChildrenDataCopyWith(
          MessageChildrenData value, $Res Function(MessageChildrenData) then) =
      _$MessageChildrenDataCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'messageId') String messageId,
      @JsonKey(name: 'maxResults') int maxResults,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'childrenMessageIds') List<String> childrenMessageIds});
}

/// @nodoc
class _$MessageChildrenDataCopyWithImpl<$Res>
    implements $MessageChildrenDataCopyWith<$Res> {
  _$MessageChildrenDataCopyWithImpl(this._value, this._then);

  final MessageChildrenData _value;
  // ignore: unused_field
  final $Res Function(MessageChildrenData) _then;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? maxResults = freezed,
    Object? count = freezed,
    Object? childrenMessageIds = freezed,
  }) {
    return _then(_value.copyWith(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      maxResults: maxResults == freezed
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      childrenMessageIds: childrenMessageIds == freezed
          ? _value.childrenMessageIds
          : childrenMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
abstract class _$MessageChildrenDataCopyWith<$Res>
    implements $MessageChildrenDataCopyWith<$Res> {
  factory _$MessageChildrenDataCopyWith(_MessageChildrenData value,
          $Res Function(_MessageChildrenData) then) =
      __$MessageChildrenDataCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'messageId') String messageId,
      @JsonKey(name: 'maxResults') int maxResults,
      @JsonKey(name: 'count') int count,
      @JsonKey(name: 'childrenMessageIds') List<String> childrenMessageIds});
}

/// @nodoc
class __$MessageChildrenDataCopyWithImpl<$Res>
    extends _$MessageChildrenDataCopyWithImpl<$Res>
    implements _$MessageChildrenDataCopyWith<$Res> {
  __$MessageChildrenDataCopyWithImpl(
      _MessageChildrenData _value, $Res Function(_MessageChildrenData) _then)
      : super(_value, (v) => _then(v as _MessageChildrenData));

  @override
  _MessageChildrenData get _value => super._value as _MessageChildrenData;

  @override
  $Res call({
    Object? messageId = freezed,
    Object? maxResults = freezed,
    Object? count = freezed,
    Object? childrenMessageIds = freezed,
  }) {
    return _then(_MessageChildrenData(
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String,
      maxResults: maxResults == freezed
          ? _value.maxResults
          : maxResults // ignore: cast_nullable_to_non_nullable
              as int,
      count: count == freezed
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as int,
      childrenMessageIds: childrenMessageIds == freezed
          ? _value.childrenMessageIds
          : childrenMessageIds // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageChildrenData implements _MessageChildrenData {
  _$_MessageChildrenData(
      {@JsonKey(name: 'messageId') required this.messageId,
      @JsonKey(name: 'maxResults') required this.maxResults,
      @JsonKey(name: 'count') required this.count,
      @JsonKey(name: 'childrenMessageIds') required this.childrenMessageIds});

  factory _$_MessageChildrenData.fromJson(Map<String, dynamic> json) =>
      _$$_MessageChildrenDataFromJson(json);

  @override
  @JsonKey(name: 'messageId')
  final String messageId;
  @override
  @JsonKey(name: 'maxResults')
  final int maxResults;
  @override
  @JsonKey(name: 'count')
  final int count;
  @override
  @JsonKey(name: 'childrenMessageIds')
  final List<String> childrenMessageIds;

  @override
  String toString() {
    return 'MessageChildrenData(messageId: $messageId, maxResults: $maxResults, count: $count, childrenMessageIds: $childrenMessageIds)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MessageChildrenData &&
            (identical(other.messageId, messageId) ||
                const DeepCollectionEquality()
                    .equals(other.messageId, messageId)) &&
            (identical(other.maxResults, maxResults) ||
                const DeepCollectionEquality()
                    .equals(other.maxResults, maxResults)) &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.childrenMessageIds, childrenMessageIds) ||
                const DeepCollectionEquality()
                    .equals(other.childrenMessageIds, childrenMessageIds)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageId) ^
      const DeepCollectionEquality().hash(maxResults) ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(childrenMessageIds);

  @JsonKey(ignore: true)
  @override
  _$MessageChildrenDataCopyWith<_MessageChildrenData> get copyWith =>
      __$MessageChildrenDataCopyWithImpl<_MessageChildrenData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageChildrenDataToJson(this);
  }
}

abstract class _MessageChildrenData implements MessageChildrenData {
  factory _MessageChildrenData(
      {@JsonKey(name: 'messageId')
          required String messageId,
      @JsonKey(name: 'maxResults')
          required int maxResults,
      @JsonKey(name: 'count')
          required int count,
      @JsonKey(name: 'childrenMessageIds')
          required List<String> childrenMessageIds}) = _$_MessageChildrenData;

  factory _MessageChildrenData.fromJson(Map<String, dynamic> json) =
      _$_MessageChildrenData.fromJson;

  @override
  @JsonKey(name: 'messageId')
  String get messageId => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'maxResults')
  int get maxResults => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'count')
  int get count => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'childrenMessageIds')
  List<String> get childrenMessageIds => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MessageChildrenDataCopyWith<_MessageChildrenData> get copyWith =>
      throw _privateConstructorUsedError;
}
