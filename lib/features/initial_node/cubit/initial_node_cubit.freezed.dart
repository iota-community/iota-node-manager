// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'initial_node_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$InitialNodeStateTearOff {
  const _$InitialNodeStateTearOff();

  _InitialNodeState call(
      {required Name name,
      required Url url,
      required Jwt jwt,
      required FormzStatus status,
      required Type type}) {
    return _InitialNodeState(
      name: name,
      url: url,
      jwt: jwt,
      status: status,
      type: type,
    );
  }
}

/// @nodoc
const $InitialNodeState = _$InitialNodeStateTearOff();

/// @nodoc
mixin _$InitialNodeState {
  Name get name => throw _privateConstructorUsedError;
  Url get url => throw _privateConstructorUsedError;
  Jwt get jwt => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;
  Type get type => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $InitialNodeStateCopyWith<InitialNodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InitialNodeStateCopyWith<$Res> {
  factory $InitialNodeStateCopyWith(
          InitialNodeState value, $Res Function(InitialNodeState) then) =
      _$InitialNodeStateCopyWithImpl<$Res>;
  $Res call({Name name, Url url, Jwt jwt, FormzStatus status, Type type});
}

/// @nodoc
class _$InitialNodeStateCopyWithImpl<$Res>
    implements $InitialNodeStateCopyWith<$Res> {
  _$InitialNodeStateCopyWithImpl(this._value, this._then);

  final InitialNodeState _value;
  // ignore: unused_field
  final $Res Function(InitialNodeState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? jwt = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Url,
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as Jwt,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc
abstract class _$InitialNodeStateCopyWith<$Res>
    implements $InitialNodeStateCopyWith<$Res> {
  factory _$InitialNodeStateCopyWith(
          _InitialNodeState value, $Res Function(_InitialNodeState) then) =
      __$InitialNodeStateCopyWithImpl<$Res>;
  @override
  $Res call({Name name, Url url, Jwt jwt, FormzStatus status, Type type});
}

/// @nodoc
class __$InitialNodeStateCopyWithImpl<$Res>
    extends _$InitialNodeStateCopyWithImpl<$Res>
    implements _$InitialNodeStateCopyWith<$Res> {
  __$InitialNodeStateCopyWithImpl(
      _InitialNodeState _value, $Res Function(_InitialNodeState) _then)
      : super(_value, (v) => _then(v as _InitialNodeState));

  @override
  _InitialNodeState get _value => super._value as _InitialNodeState;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? jwt = freezed,
    Object? status = freezed,
    Object? type = freezed,
  }) {
    return _then(_InitialNodeState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Url,
      jwt: jwt == freezed
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as Jwt,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as Type,
    ));
  }
}

/// @nodoc

class _$_InitialNodeState implements _InitialNodeState {
  const _$_InitialNodeState(
      {required this.name,
      required this.url,
      required this.jwt,
      required this.status,
      required this.type});

  @override
  final Name name;
  @override
  final Url url;
  @override
  final Jwt jwt;
  @override
  final FormzStatus status;
  @override
  final Type type;

  @override
  String toString() {
    return 'InitialNodeState(name: $name, url: $url, jwt: $jwt, status: $status, type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InitialNodeState &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.url, url) &&
            const DeepCollectionEquality().equals(other.jwt, jwt) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.type, type));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(url),
      const DeepCollectionEquality().hash(jwt),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(type));

  @JsonKey(ignore: true)
  @override
  _$InitialNodeStateCopyWith<_InitialNodeState> get copyWith =>
      __$InitialNodeStateCopyWithImpl<_InitialNodeState>(this, _$identity);
}

abstract class _InitialNodeState implements InitialNodeState {
  const factory _InitialNodeState(
      {required Name name,
      required Url url,
      required Jwt jwt,
      required FormzStatus status,
      required Type type}) = _$_InitialNodeState;

  @override
  Name get name;
  @override
  Url get url;
  @override
  Jwt get jwt;
  @override
  FormzStatus get status;
  @override
  Type get type;
  @override
  @JsonKey(ignore: true)
  _$InitialNodeStateCopyWith<_InitialNodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
