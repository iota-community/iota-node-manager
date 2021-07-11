// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'add_peer_body.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AddPeerBody _$AddPeerBodyFromJson(Map<String, dynamic> json) {
  return _AddPeerBody.fromJson(json);
}

/// @nodoc
class _$AddPeerBodyTearOff {
  const _$AddPeerBodyTearOff();

  _AddPeerBody call(
      {@JsonKey(name: 'multiAddress') required String multiAddress,
      @JsonKey(name: 'alias') required String alias}) {
    return _AddPeerBody(
      multiAddress: multiAddress,
      alias: alias,
    );
  }

  AddPeerBody fromJson(Map<String, Object> json) {
    return AddPeerBody.fromJson(json);
  }
}

/// @nodoc
const $AddPeerBody = _$AddPeerBodyTearOff();

/// @nodoc
mixin _$AddPeerBody {
  @JsonKey(name: 'multiAddress')
  String get multiAddress => throw _privateConstructorUsedError;
  @JsonKey(name: 'alias')
  String get alias => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddPeerBodyCopyWith<AddPeerBody> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddPeerBodyCopyWith<$Res> {
  factory $AddPeerBodyCopyWith(
          AddPeerBody value, $Res Function(AddPeerBody) then) =
      _$AddPeerBodyCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'multiAddress') String multiAddress,
      @JsonKey(name: 'alias') String alias});
}

/// @nodoc
class _$AddPeerBodyCopyWithImpl<$Res> implements $AddPeerBodyCopyWith<$Res> {
  _$AddPeerBodyCopyWithImpl(this._value, this._then);

  final AddPeerBody _value;
  // ignore: unused_field
  final $Res Function(AddPeerBody) _then;

  @override
  $Res call({
    Object? multiAddress = freezed,
    Object? alias = freezed,
  }) {
    return _then(_value.copyWith(
      multiAddress: multiAddress == freezed
          ? _value.multiAddress
          : multiAddress // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$AddPeerBodyCopyWith<$Res>
    implements $AddPeerBodyCopyWith<$Res> {
  factory _$AddPeerBodyCopyWith(
          _AddPeerBody value, $Res Function(_AddPeerBody) then) =
      __$AddPeerBodyCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'multiAddress') String multiAddress,
      @JsonKey(name: 'alias') String alias});
}

/// @nodoc
class __$AddPeerBodyCopyWithImpl<$Res> extends _$AddPeerBodyCopyWithImpl<$Res>
    implements _$AddPeerBodyCopyWith<$Res> {
  __$AddPeerBodyCopyWithImpl(
      _AddPeerBody _value, $Res Function(_AddPeerBody) _then)
      : super(_value, (v) => _then(v as _AddPeerBody));

  @override
  _AddPeerBody get _value => super._value as _AddPeerBody;

  @override
  $Res call({
    Object? multiAddress = freezed,
    Object? alias = freezed,
  }) {
    return _then(_AddPeerBody(
      multiAddress: multiAddress == freezed
          ? _value.multiAddress
          : multiAddress // ignore: cast_nullable_to_non_nullable
              as String,
      alias: alias == freezed
          ? _value.alias
          : alias // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AddPeerBody implements _AddPeerBody {
  _$_AddPeerBody(
      {@JsonKey(name: 'multiAddress') required this.multiAddress,
      @JsonKey(name: 'alias') required this.alias});

  factory _$_AddPeerBody.fromJson(Map<String, dynamic> json) =>
      _$_$_AddPeerBodyFromJson(json);

  @override
  @JsonKey(name: 'multiAddress')
  final String multiAddress;
  @override
  @JsonKey(name: 'alias')
  final String alias;

  @override
  String toString() {
    return 'AddPeerBody(multiAddress: $multiAddress, alias: $alias)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddPeerBody &&
            (identical(other.multiAddress, multiAddress) ||
                const DeepCollectionEquality()
                    .equals(other.multiAddress, multiAddress)) &&
            (identical(other.alias, alias) ||
                const DeepCollectionEquality().equals(other.alias, alias)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(multiAddress) ^
      const DeepCollectionEquality().hash(alias);

  @JsonKey(ignore: true)
  @override
  _$AddPeerBodyCopyWith<_AddPeerBody> get copyWith =>
      __$AddPeerBodyCopyWithImpl<_AddPeerBody>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_AddPeerBodyToJson(this);
  }
}

abstract class _AddPeerBody implements AddPeerBody {
  factory _AddPeerBody(
      {@JsonKey(name: 'multiAddress') required String multiAddress,
      @JsonKey(name: 'alias') required String alias}) = _$_AddPeerBody;

  factory _AddPeerBody.fromJson(Map<String, dynamic> json) =
      _$_AddPeerBody.fromJson;

  @override
  @JsonKey(name: 'multiAddress')
  String get multiAddress => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'alias')
  String get alias => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$AddPeerBodyCopyWith<_AddPeerBody> get copyWith =>
      throw _privateConstructorUsedError;
}
