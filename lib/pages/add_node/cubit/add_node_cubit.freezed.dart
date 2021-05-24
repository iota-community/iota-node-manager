// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_node_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AddNoteStateTearOff {
  const _$AddNoteStateTearOff();

  _AddNoteState call(
      {required Name name, required Url url, required FormzStatus status}) {
    return _AddNoteState(
      name: name,
      url: url,
      status: status,
    );
  }
}

/// @nodoc
const $AddNoteState = _$AddNoteStateTearOff();

/// @nodoc
mixin _$AddNoteState {
  Name get name => throw _privateConstructorUsedError;
  Url get url => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AddNoteStateCopyWith<AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddNoteStateCopyWith<$Res> {
  factory $AddNoteStateCopyWith(
          AddNoteState value, $Res Function(AddNoteState) then) =
      _$AddNoteStateCopyWithImpl<$Res>;
  $Res call({Name name, Url url, FormzStatus status});
}

/// @nodoc
class _$AddNoteStateCopyWithImpl<$Res> implements $AddNoteStateCopyWith<$Res> {
  _$AddNoteStateCopyWithImpl(this._value, this._then);

  final AddNoteState _value;
  // ignore: unused_field
  final $Res Function(AddNoteState) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? status = freezed,
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
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc
abstract class _$AddNoteStateCopyWith<$Res>
    implements $AddNoteStateCopyWith<$Res> {
  factory _$AddNoteStateCopyWith(
          _AddNoteState value, $Res Function(_AddNoteState) then) =
      __$AddNoteStateCopyWithImpl<$Res>;
  @override
  $Res call({Name name, Url url, FormzStatus status});
}

/// @nodoc
class __$AddNoteStateCopyWithImpl<$Res> extends _$AddNoteStateCopyWithImpl<$Res>
    implements _$AddNoteStateCopyWith<$Res> {
  __$AddNoteStateCopyWithImpl(
      _AddNoteState _value, $Res Function(_AddNoteState) _then)
      : super(_value, (v) => _then(v as _AddNoteState));

  @override
  _AddNoteState get _value => super._value as _AddNoteState;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? status = freezed,
  }) {
    return _then(_AddNoteState(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      url: url == freezed
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as Url,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as FormzStatus,
    ));
  }
}

/// @nodoc

class _$_AddNoteState implements _AddNoteState {
  const _$_AddNoteState(
      {required this.name, required this.url, required this.status});

  @override
  final Name name;
  @override
  final Url url;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'AddNoteState(name: $name, url: $url, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddNoteState &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.url, url) ||
                const DeepCollectionEquality().equals(other.url, url)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(url) ^
      const DeepCollectionEquality().hash(status);

  @JsonKey(ignore: true)
  @override
  _$AddNoteStateCopyWith<_AddNoteState> get copyWith =>
      __$AddNoteStateCopyWithImpl<_AddNoteState>(this, _$identity);
}

abstract class _AddNoteState implements AddNoteState {
  const factory _AddNoteState(
      {required Name name,
      required Url url,
      required FormzStatus status}) = _$_AddNoteState;

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Url get url => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddNoteStateCopyWith<_AddNoteState> get copyWith =>
      throw _privateConstructorUsedError;
}
