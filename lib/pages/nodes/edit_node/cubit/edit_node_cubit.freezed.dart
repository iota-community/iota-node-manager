// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'edit_node_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$EditNodeStateTearOff {
  const _$EditNodeStateTearOff();

  _EditNodeState call(
      {required Name name, required Url url, required FormzStatus status}) {
    return _EditNodeState(
      name: name,
      url: url,
      status: status,
    );
  }
}

/// @nodoc
const $EditNodeState = _$EditNodeStateTearOff();

/// @nodoc
mixin _$EditNodeState {
  Name get name => throw _privateConstructorUsedError;
  Url get url => throw _privateConstructorUsedError;
  FormzStatus get status => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditNodeStateCopyWith<EditNodeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditNodeStateCopyWith<$Res> {
  factory $EditNodeStateCopyWith(
          EditNodeState value, $Res Function(EditNodeState) then) =
      _$EditNodeStateCopyWithImpl<$Res>;
  $Res call({Name name, Url url, FormzStatus status});
}

/// @nodoc
class _$EditNodeStateCopyWithImpl<$Res>
    implements $EditNodeStateCopyWith<$Res> {
  _$EditNodeStateCopyWithImpl(this._value, this._then);

  final EditNodeState _value;
  // ignore: unused_field
  final $Res Function(EditNodeState) _then;

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
abstract class _$EditNodeStateCopyWith<$Res>
    implements $EditNodeStateCopyWith<$Res> {
  factory _$EditNodeStateCopyWith(
          _EditNodeState value, $Res Function(_EditNodeState) then) =
      __$EditNodeStateCopyWithImpl<$Res>;
  @override
  $Res call({Name name, Url url, FormzStatus status});
}

/// @nodoc
class __$EditNodeStateCopyWithImpl<$Res>
    extends _$EditNodeStateCopyWithImpl<$Res>
    implements _$EditNodeStateCopyWith<$Res> {
  __$EditNodeStateCopyWithImpl(
      _EditNodeState _value, $Res Function(_EditNodeState) _then)
      : super(_value, (v) => _then(v as _EditNodeState));

  @override
  _EditNodeState get _value => super._value as _EditNodeState;

  @override
  $Res call({
    Object? name = freezed,
    Object? url = freezed,
    Object? status = freezed,
  }) {
    return _then(_EditNodeState(
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

class _$_EditNodeState implements _EditNodeState {
  const _$_EditNodeState(
      {required this.name, required this.url, required this.status});

  @override
  final Name name;
  @override
  final Url url;
  @override
  final FormzStatus status;

  @override
  String toString() {
    return 'EditNodeState(name: $name, url: $url, status: $status)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EditNodeState &&
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
  _$EditNodeStateCopyWith<_EditNodeState> get copyWith =>
      __$EditNodeStateCopyWithImpl<_EditNodeState>(this, _$identity);
}

abstract class _EditNodeState implements EditNodeState {
  const factory _EditNodeState(
      {required Name name,
      required Url url,
      required FormzStatus status}) = _$_EditNodeState;

  @override
  Name get name => throw _privateConstructorUsedError;
  @override
  Url get url => throw _privateConstructorUsedError;
  @override
  FormzStatus get status => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$EditNodeStateCopyWith<_EditNodeState> get copyWith =>
      throw _privateConstructorUsedError;
}
