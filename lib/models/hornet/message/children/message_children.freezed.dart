// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'message_children.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MessageChildren _$MessageChildrenFromJson(Map<String, dynamic> json) {
  return _MessageChildren.fromJson(json);
}

/// @nodoc
class _$MessageChildrenTearOff {
  const _$MessageChildrenTearOff();

  _MessageChildren call(
      {@JsonKey(name: 'data') required MessageChildrenData data}) {
    return _MessageChildren(
      data: data,
    );
  }

  MessageChildren fromJson(Map<String, Object?> json) {
    return MessageChildren.fromJson(json);
  }
}

/// @nodoc
const $MessageChildren = _$MessageChildrenTearOff();

/// @nodoc
mixin _$MessageChildren {
  @JsonKey(name: 'data')
  MessageChildrenData get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessageChildrenCopyWith<MessageChildren> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessageChildrenCopyWith<$Res> {
  factory $MessageChildrenCopyWith(
          MessageChildren value, $Res Function(MessageChildren) then) =
      _$MessageChildrenCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'data') MessageChildrenData data});

  $MessageChildrenDataCopyWith<$Res> get data;
}

/// @nodoc
class _$MessageChildrenCopyWithImpl<$Res>
    implements $MessageChildrenCopyWith<$Res> {
  _$MessageChildrenCopyWithImpl(this._value, this._then);

  final MessageChildren _value;
  // ignore: unused_field
  final $Res Function(MessageChildren) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessageChildrenData,
    ));
  }

  @override
  $MessageChildrenDataCopyWith<$Res> get data {
    return $MessageChildrenDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class _$MessageChildrenCopyWith<$Res>
    implements $MessageChildrenCopyWith<$Res> {
  factory _$MessageChildrenCopyWith(
          _MessageChildren value, $Res Function(_MessageChildren) then) =
      __$MessageChildrenCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'data') MessageChildrenData data});

  @override
  $MessageChildrenDataCopyWith<$Res> get data;
}

/// @nodoc
class __$MessageChildrenCopyWithImpl<$Res>
    extends _$MessageChildrenCopyWithImpl<$Res>
    implements _$MessageChildrenCopyWith<$Res> {
  __$MessageChildrenCopyWithImpl(
      _MessageChildren _value, $Res Function(_MessageChildren) _then)
      : super(_value, (v) => _then(v as _MessageChildren));

  @override
  _MessageChildren get _value => super._value as _MessageChildren;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_MessageChildren(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as MessageChildrenData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MessageChildren implements _MessageChildren {
  _$_MessageChildren({@JsonKey(name: 'data') required this.data});

  factory _$_MessageChildren.fromJson(Map<String, dynamic> json) =>
      _$$_MessageChildrenFromJson(json);

  @override
  @JsonKey(name: 'data')
  final MessageChildrenData data;

  @override
  String toString() {
    return 'MessageChildren(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MessageChildren &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$MessageChildrenCopyWith<_MessageChildren> get copyWith =>
      __$MessageChildrenCopyWithImpl<_MessageChildren>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessageChildrenToJson(this);
  }
}

abstract class _MessageChildren implements MessageChildren {
  factory _MessageChildren(
          {@JsonKey(name: 'data') required MessageChildrenData data}) =
      _$_MessageChildren;

  factory _MessageChildren.fromJson(Map<String, dynamic> json) =
      _$_MessageChildren.fromJson;

  @override
  @JsonKey(name: 'data')
  MessageChildrenData get data;
  @override
  @JsonKey(ignore: true)
  _$MessageChildrenCopyWith<_MessageChildren> get copyWith =>
      throw _privateConstructorUsedError;
}
