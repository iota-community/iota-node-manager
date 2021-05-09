// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'ms.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Ms _$MsFromJson(Map<String, dynamic> json) {
  return _Ms.fromJson(json);
}

/// @nodoc
class _$MsTearOff {
  const _$MsTearOff();

  _Ms call(
      {@JsonKey(name: 'messageID') required String messageID,
      @JsonKey(name: 'index') required double index}) {
    return _Ms(
      messageID: messageID,
      index: index,
    );
  }

  Ms fromJson(Map<String, Object> json) {
    return Ms.fromJson(json);
  }
}

/// @nodoc
const $Ms = _$MsTearOff();

/// @nodoc
mixin _$Ms {
  @JsonKey(name: 'messageID')
  String get messageID => throw _privateConstructorUsedError;
  @JsonKey(name: 'index')
  double get index => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsCopyWith<Ms> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsCopyWith<$Res> {
  factory $MsCopyWith(Ms value, $Res Function(Ms) then) =
      _$MsCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(name: 'messageID') String messageID,
      @JsonKey(name: 'index') double index});
}

/// @nodoc
class _$MsCopyWithImpl<$Res> implements $MsCopyWith<$Res> {
  _$MsCopyWithImpl(this._value, this._then);

  final Ms _value;
  // ignore: unused_field
  final $Res Function(Ms) _then;

  @override
  $Res call({
    Object? messageID = freezed,
    Object? index = freezed,
  }) {
    return _then(_value.copyWith(
      messageID: messageID == freezed
          ? _value.messageID
          : messageID // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$MsCopyWith<$Res> implements $MsCopyWith<$Res> {
  factory _$MsCopyWith(_Ms value, $Res Function(_Ms) then) =
      __$MsCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(name: 'messageID') String messageID,
      @JsonKey(name: 'index') double index});
}

/// @nodoc
class __$MsCopyWithImpl<$Res> extends _$MsCopyWithImpl<$Res>
    implements _$MsCopyWith<$Res> {
  __$MsCopyWithImpl(_Ms _value, $Res Function(_Ms) _then)
      : super(_value, (v) => _then(v as _Ms));

  @override
  _Ms get _value => super._value as _Ms;

  @override
  $Res call({
    Object? messageID = freezed,
    Object? index = freezed,
  }) {
    return _then(_Ms(
      messageID: messageID == freezed
          ? _value.messageID
          : messageID // ignore: cast_nullable_to_non_nullable
              as String,
      index: index == freezed
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Ms implements _Ms {
  _$_Ms(
      {@JsonKey(name: 'messageID') required this.messageID,
      @JsonKey(name: 'index') required this.index});

  factory _$_Ms.fromJson(Map<String, dynamic> json) => _$_$_MsFromJson(json);

  @override
  @JsonKey(name: 'messageID')
  final String messageID;
  @override
  @JsonKey(name: 'index')
  final double index;

  @override
  String toString() {
    return 'Ms(messageID: $messageID, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Ms &&
            (identical(other.messageID, messageID) ||
                const DeepCollectionEquality()
                    .equals(other.messageID, messageID)) &&
            (identical(other.index, index) ||
                const DeepCollectionEquality().equals(other.index, index)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(messageID) ^
      const DeepCollectionEquality().hash(index);

  @JsonKey(ignore: true)
  @override
  _$MsCopyWith<_Ms> get copyWith => __$MsCopyWithImpl<_Ms>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_MsToJson(this);
  }
}

abstract class _Ms implements Ms {
  factory _Ms(
      {@JsonKey(name: 'messageID') required String messageID,
      @JsonKey(name: 'index') required double index}) = _$_Ms;

  factory _Ms.fromJson(Map<String, dynamic> json) = _$_Ms.fromJson;

  @override
  @JsonKey(name: 'messageID')
  String get messageID => throw _privateConstructorUsedError;
  @override
  @JsonKey(name: 'index')
  double get index => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$MsCopyWith<_Ms> get copyWith => throw _privateConstructorUsedError;
}
