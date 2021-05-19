// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'health_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$HealthStateTearOff {
  const _$HealthStateTearOff();

  _Initial initial() {
    return const _Initial();
  }

  _Healthy healthy() {
    return const _Healthy();
  }

  _Unhealthy unhealthy() {
    return const _Unhealthy();
  }
}

/// @nodoc
const $HealthState = _$HealthStateTearOff();

/// @nodoc
mixin _$HealthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() healthy,
    required TResult Function() unhealthy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? healthy,
    TResult Function()? unhealthy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Healthy value) healthy,
    required TResult Function(_Unhealthy value) unhealthy,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Healthy value)? healthy,
    TResult Function(_Unhealthy value)? unhealthy,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HealthStateCopyWith<$Res> {
  factory $HealthStateCopyWith(
          HealthState value, $Res Function(HealthState) then) =
      _$HealthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$HealthStateCopyWithImpl<$Res> implements $HealthStateCopyWith<$Res> {
  _$HealthStateCopyWithImpl(this._value, this._then);

  final HealthState _value;
  // ignore: unused_field
  final $Res Function(HealthState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$HealthStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc

class _$_Initial with DiagnosticableTreeMixin implements _Initial {
  const _$_Initial();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HealthState.initial()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HealthState.initial'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() healthy,
    required TResult Function() unhealthy,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? healthy,
    TResult Function()? unhealthy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Healthy value) healthy,
    required TResult Function(_Unhealthy value) unhealthy,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Healthy value)? healthy,
    TResult Function(_Unhealthy value)? unhealthy,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements HealthState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$HealthyCopyWith<$Res> {
  factory _$HealthyCopyWith(_Healthy value, $Res Function(_Healthy) then) =
      __$HealthyCopyWithImpl<$Res>;
}

/// @nodoc
class __$HealthyCopyWithImpl<$Res> extends _$HealthStateCopyWithImpl<$Res>
    implements _$HealthyCopyWith<$Res> {
  __$HealthyCopyWithImpl(_Healthy _value, $Res Function(_Healthy) _then)
      : super(_value, (v) => _then(v as _Healthy));

  @override
  _Healthy get _value => super._value as _Healthy;
}

/// @nodoc

class _$_Healthy with DiagnosticableTreeMixin implements _Healthy {
  const _$_Healthy();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HealthState.healthy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HealthState.healthy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Healthy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() healthy,
    required TResult Function() unhealthy,
  }) {
    return healthy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? healthy,
    TResult Function()? unhealthy,
    required TResult orElse(),
  }) {
    if (healthy != null) {
      return healthy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Healthy value) healthy,
    required TResult Function(_Unhealthy value) unhealthy,
  }) {
    return healthy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Healthy value)? healthy,
    TResult Function(_Unhealthy value)? unhealthy,
    required TResult orElse(),
  }) {
    if (healthy != null) {
      return healthy(this);
    }
    return orElse();
  }
}

abstract class _Healthy implements HealthState {
  const factory _Healthy() = _$_Healthy;
}

/// @nodoc
abstract class _$UnhealthyCopyWith<$Res> {
  factory _$UnhealthyCopyWith(
          _Unhealthy value, $Res Function(_Unhealthy) then) =
      __$UnhealthyCopyWithImpl<$Res>;
}

/// @nodoc
class __$UnhealthyCopyWithImpl<$Res> extends _$HealthStateCopyWithImpl<$Res>
    implements _$UnhealthyCopyWith<$Res> {
  __$UnhealthyCopyWithImpl(_Unhealthy _value, $Res Function(_Unhealthy) _then)
      : super(_value, (v) => _then(v as _Unhealthy));

  @override
  _Unhealthy get _value => super._value as _Unhealthy;
}

/// @nodoc

class _$_Unhealthy with DiagnosticableTreeMixin implements _Unhealthy {
  const _$_Unhealthy();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'HealthState.unhealthy()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'HealthState.unhealthy'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Unhealthy);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() healthy,
    required TResult Function() unhealthy,
  }) {
    return unhealthy();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? healthy,
    TResult Function()? unhealthy,
    required TResult orElse(),
  }) {
    if (unhealthy != null) {
      return unhealthy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Healthy value) healthy,
    required TResult Function(_Unhealthy value) unhealthy,
  }) {
    return unhealthy(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Healthy value)? healthy,
    TResult Function(_Unhealthy value)? unhealthy,
    required TResult orElse(),
  }) {
    if (unhealthy != null) {
      return unhealthy(this);
    }
    return orElse();
  }
}

abstract class _Unhealthy implements HealthState {
  const factory _Unhealthy() = _$_Unhealthy;
}
