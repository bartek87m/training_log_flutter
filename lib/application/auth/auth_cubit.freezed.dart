// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

  Initial initial() {
    return const Initial();
  }

  Authentificate authentificate() {
    return const Authentificate();
  }

  UnAuthentificate unauthentificate() {
    return const UnAuthentificate();
  }
}

/// @nodoc
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authentificate,
    required TResult Function() unauthentificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authentificate value) authentificate,
    required TResult Function(UnAuthentificate value) unauthentificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authentificate,
    required TResult Function() unauthentificate,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
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
    required TResult Function(Initial value) initial,
    required TResult Function(Authentificate value) authentificate,
    required TResult Function(UnAuthentificate value) unauthentificate,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $AuthentificateCopyWith<$Res> {
  factory $AuthentificateCopyWith(
          Authentificate value, $Res Function(Authentificate) then) =
      _$AuthentificateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthentificateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthentificateCopyWith<$Res> {
  _$AuthentificateCopyWithImpl(
      Authentificate _value, $Res Function(Authentificate) _then)
      : super(_value, (v) => _then(v as Authentificate));

  @override
  Authentificate get _value => super._value as Authentificate;
}

/// @nodoc

class _$Authentificate implements Authentificate {
  const _$Authentificate();

  @override
  String toString() {
    return 'AuthState.authentificate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Authentificate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authentificate,
    required TResult Function() unauthentificate,
  }) {
    return authentificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
  }) {
    return authentificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
    required TResult orElse(),
  }) {
    if (authentificate != null) {
      return authentificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authentificate value) authentificate,
    required TResult Function(UnAuthentificate value) unauthentificate,
  }) {
    return authentificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
  }) {
    return authentificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
    required TResult orElse(),
  }) {
    if (authentificate != null) {
      return authentificate(this);
    }
    return orElse();
  }
}

abstract class Authentificate implements AuthState {
  const factory Authentificate() = _$Authentificate;
}

/// @nodoc
abstract class $UnAuthentificateCopyWith<$Res> {
  factory $UnAuthentificateCopyWith(
          UnAuthentificate value, $Res Function(UnAuthentificate) then) =
      _$UnAuthentificateCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnAuthentificateCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnAuthentificateCopyWith<$Res> {
  _$UnAuthentificateCopyWithImpl(
      UnAuthentificate _value, $Res Function(UnAuthentificate) _then)
      : super(_value, (v) => _then(v as UnAuthentificate));

  @override
  UnAuthentificate get _value => super._value as UnAuthentificate;
}

/// @nodoc

class _$UnAuthentificate implements UnAuthentificate {
  const _$UnAuthentificate();

  @override
  String toString() {
    return 'AuthState.unauthentificate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is UnAuthentificate);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() authentificate,
    required TResult Function() unauthentificate,
  }) {
    return unauthentificate();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
  }) {
    return unauthentificate?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? authentificate,
    TResult Function()? unauthentificate,
    required TResult orElse(),
  }) {
    if (unauthentificate != null) {
      return unauthentificate();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Authentificate value) authentificate,
    required TResult Function(UnAuthentificate value) unauthentificate,
  }) {
    return unauthentificate(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
  }) {
    return unauthentificate?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Authentificate value)? authentificate,
    TResult Function(UnAuthentificate value)? unauthentificate,
    required TResult orElse(),
  }) {
    if (unauthentificate != null) {
      return unauthentificate(this);
    }
    return orElse();
  }
}

abstract class UnAuthentificate implements AuthState {
  const factory UnAuthentificate() = _$UnAuthentificate;
}
