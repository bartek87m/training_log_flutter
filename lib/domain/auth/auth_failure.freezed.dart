// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  InvalidEmailAndPasswordCombinaion invalidEmailAndPasswordCombinaion() {
    return const InvalidEmailAndPasswordCombinaion();
  }

// ignore: unused_element
  EmailAlreadiInUse emailAlreadiInUse() {
    return const EmailAlreadiInUse();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombinaion(),
    @required Result emailAlreadiInUse(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombinaion(),
    Result emailAlreadiInUse(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombinaion(
            InvalidEmailAndPasswordCombinaion value),
    @required Result emailAlreadiInUse(EmailAlreadiInUse value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombinaion(
        InvalidEmailAndPasswordCombinaion value),
    Result emailAlreadiInUse(EmailAlreadiInUse value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc
class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombinaion(),
    @required Result emailAlreadiInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombinaion(),
    Result emailAlreadiInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombinaion(
            InvalidEmailAndPasswordCombinaion value),
    @required Result emailAlreadiInUse(EmailAlreadiInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombinaion(
        InvalidEmailAndPasswordCombinaion value),
    Result emailAlreadiInUse(EmailAlreadiInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombinaion(),
    @required Result emailAlreadiInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombinaion(),
    Result emailAlreadiInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombinaion(
            InvalidEmailAndPasswordCombinaion value),
    @required Result emailAlreadiInUse(EmailAlreadiInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombinaion(
        InvalidEmailAndPasswordCombinaion value),
    Result emailAlreadiInUse(EmailAlreadiInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinaionCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinaionCopyWith(
          InvalidEmailAndPasswordCombinaion value,
          $Res Function(InvalidEmailAndPasswordCombinaion) then) =
      _$InvalidEmailAndPasswordCombinaionCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinaionCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinaionCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinaionCopyWithImpl(
      InvalidEmailAndPasswordCombinaion _value,
      $Res Function(InvalidEmailAndPasswordCombinaion) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombinaion));

  @override
  InvalidEmailAndPasswordCombinaion get _value =>
      super._value as InvalidEmailAndPasswordCombinaion;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinaion
    implements InvalidEmailAndPasswordCombinaion {
  const _$InvalidEmailAndPasswordCombinaion();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombinaion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombinaion);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombinaion(),
    @required Result emailAlreadiInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return invalidEmailAndPasswordCombinaion();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombinaion(),
    Result emailAlreadiInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombinaion != null) {
      return invalidEmailAndPasswordCombinaion();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombinaion(
            InvalidEmailAndPasswordCombinaion value),
    @required Result emailAlreadiInUse(EmailAlreadiInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return invalidEmailAndPasswordCombinaion(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombinaion(
        InvalidEmailAndPasswordCombinaion value),
    Result emailAlreadiInUse(EmailAlreadiInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombinaion != null) {
      return invalidEmailAndPasswordCombinaion(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombinaion implements AuthFailure {
  const factory InvalidEmailAndPasswordCombinaion() =
      _$InvalidEmailAndPasswordCombinaion;
}

/// @nodoc
abstract class $EmailAlreadiInUseCopyWith<$Res> {
  factory $EmailAlreadiInUseCopyWith(
          EmailAlreadiInUse value, $Res Function(EmailAlreadiInUse) then) =
      _$EmailAlreadiInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadiInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadiInUseCopyWith<$Res> {
  _$EmailAlreadiInUseCopyWithImpl(
      EmailAlreadiInUse _value, $Res Function(EmailAlreadiInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadiInUse));

  @override
  EmailAlreadiInUse get _value => super._value as EmailAlreadiInUse;
}

/// @nodoc
class _$EmailAlreadiInUse implements EmailAlreadiInUse {
  const _$EmailAlreadiInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadiInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadiInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result cancelledByUser(),
    @required Result serverError(),
    @required Result invalidEmailAndPasswordCombinaion(),
    @required Result emailAlreadiInUse(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return emailAlreadiInUse();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result cancelledByUser(),
    Result serverError(),
    Result invalidEmailAndPasswordCombinaion(),
    Result emailAlreadiInUse(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadiInUse != null) {
      return emailAlreadiInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result cancelledByUser(CancelledByUser value),
    @required Result serverError(ServerError value),
    @required
        Result invalidEmailAndPasswordCombinaion(
            InvalidEmailAndPasswordCombinaion value),
    @required Result emailAlreadiInUse(EmailAlreadiInUse value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(invalidEmailAndPasswordCombinaion != null);
    assert(emailAlreadiInUse != null);
    return emailAlreadiInUse(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result cancelledByUser(CancelledByUser value),
    Result serverError(ServerError value),
    Result invalidEmailAndPasswordCombinaion(
        InvalidEmailAndPasswordCombinaion value),
    Result emailAlreadiInUse(EmailAlreadiInUse value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadiInUse != null) {
      return emailAlreadiInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadiInUse implements AuthFailure {
  const factory EmailAlreadiInUse() = _$EmailAlreadiInUse;
}
