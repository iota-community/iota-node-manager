// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'children.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Children _$ChildrenFromJson(Map<String, dynamic> json) {
  return _Children.fromJson(json);
}

/// @nodoc
class _$ChildrenTearOff {
  const _$ChildrenTearOff();

  _Children call({@JsonKey(name: 'size') required double size}) {
    return _Children(
      size: size,
    );
  }

  Children fromJson(Map<String, Object> json) {
    return Children.fromJson(json);
  }
}

/// @nodoc
const $Children = _$ChildrenTearOff();

/// @nodoc
mixin _$Children {
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChildrenCopyWith<Children> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChildrenCopyWith<$Res> {
  factory $ChildrenCopyWith(Children value, $Res Function(Children) then) =
      _$ChildrenCopyWithImpl<$Res>;
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class _$ChildrenCopyWithImpl<$Res> implements $ChildrenCopyWith<$Res> {
  _$ChildrenCopyWithImpl(this._value, this._then);

  final Children _value;
  // ignore: unused_field
  final $Res Function(Children) _then;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_value.copyWith(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ChildrenCopyWith<$Res> implements $ChildrenCopyWith<$Res> {
  factory _$ChildrenCopyWith(_Children value, $Res Function(_Children) then) =
      __$ChildrenCopyWithImpl<$Res>;
  @override
  $Res call({@JsonKey(name: 'size') double size});
}

/// @nodoc
class __$ChildrenCopyWithImpl<$Res> extends _$ChildrenCopyWithImpl<$Res>
    implements _$ChildrenCopyWith<$Res> {
  __$ChildrenCopyWithImpl(_Children _value, $Res Function(_Children) _then)
      : super(_value, (v) => _then(v as _Children));

  @override
  _Children get _value => super._value as _Children;

  @override
  $Res call({
    Object? size = freezed,
  }) {
    return _then(_Children(
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Children implements _Children {
  _$_Children({@JsonKey(name: 'size') required this.size});

  factory _$_Children.fromJson(Map<String, dynamic> json) =>
      _$_$_ChildrenFromJson(json);

  @override
  @JsonKey(name: 'size')
  final double size;

  @override
  String toString() {
    return 'Children(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Children &&
            (identical(other.size, size) ||
                const DeepCollectionEquality().equals(other.size, size)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(size);

  @JsonKey(ignore: true)
  @override
  _$ChildrenCopyWith<_Children> get copyWith =>
      __$ChildrenCopyWithImpl<_Children>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ChildrenToJson(this);
  }
}

abstract class _Children implements Children {
  factory _Children({@JsonKey(name: 'size') required double size}) =
      _$_Children;

  factory _Children.fromJson(Map<String, dynamic> json) = _$_Children.fromJson;

  @override
  @JsonKey(name: 'size')
  double get size => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ChildrenCopyWith<_Children> get copyWith =>
      throw _privateConstructorUsedError;
}
