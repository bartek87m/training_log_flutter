// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'sign_in_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SignInFromStateTearOff {
  const _$SignInFromStateTearOff();

// ignore: unused_element
  _SignInFromState call(
      {@required EmailAdress emailAdress,
      @required Password password,
      @required PasswordConfirmed passwordConfirmed,
      @required bool isSubmitting,
      @required bool showErrorMessage,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      Password passwordToCompare}) {
    return _SignInFromState(
      emailAdress: emailAdress,
      password: password,
      passwordConfirmed: passwordConfirmed,
      isSubmitting: isSubmitting,
      showErrorMessage: showErrorMessage,
      authFailureOrSuccess: authFailureOrSuccess,
      passwordToCompare: passwordToCompare,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $SignInFromState = _$SignInFromStateTearOff();

/// @nodoc
mixin _$SignInFromState {
  EmailAdress get emailAdress;
  Password get password;
  PasswordConfirmed get passwordConfirmed;
  bool get isSubmitting;
  bool get showErrorMessage;
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  Password get passwordToCompare;

  $SignInFromStateCopyWith<SignInFromState> get copyWith;
}

/// @nodoc
abstract class $SignInFromStateCopyWith<$Res> {
  factory $SignInFromStateCopyWith(
          SignInFromState value, $Res Function(SignInFromState) then) =
      _$SignInFromStateCopyWithImpl<$Res>;
  $Res call(
      {EmailAdress emailAdress,
      Password password,
      PasswordConfirmed passwordConfirmed,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      Password passwordToCompare});
}

/// @nodoc
class _$SignInFromStateCopyWithImpl<$Res>
    implements $SignInFromStateCopyWith<$Res> {
  _$SignInFromStateCopyWithImpl(this._value, this._then);

  final SignInFromState _value;
  // ignore: unused_field
  final $Res Function(SignInFromState) _then;

  @override
  $Res call({
    Object emailAdress = freezed,
    Object password = freezed,
    Object passwordConfirmed = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessage = freezed,
    Object authFailureOrSuccess = freezed,
    Object passwordToCompare = freezed,
  }) {
    return _then(_value.copyWith(
      emailAdress: emailAdress == freezed
          ? _value.emailAdress
          : emailAdress as EmailAdress,
      password: password == freezed ? _value.password : password as Password,
      passwordConfirmed: passwordConfirmed == freezed
          ? _value.passwordConfirmed
          : passwordConfirmed as PasswordConfirmed,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
      passwordToCompare: passwordToCompare == freezed
          ? _value.passwordToCompare
          : passwordToCompare as Password,
    ));
  }
}

/// @nodoc
abstract class _$SignInFromStateCopyWith<$Res>
    implements $SignInFromStateCopyWith<$Res> {
  factory _$SignInFromStateCopyWith(
          _SignInFromState value, $Res Function(_SignInFromState) then) =
      __$SignInFromStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {EmailAdress emailAdress,
      Password password,
      PasswordConfirmed passwordConfirmed,
      bool isSubmitting,
      bool showErrorMessage,
      Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      Password passwordToCompare});
}

/// @nodoc
class __$SignInFromStateCopyWithImpl<$Res>
    extends _$SignInFromStateCopyWithImpl<$Res>
    implements _$SignInFromStateCopyWith<$Res> {
  __$SignInFromStateCopyWithImpl(
      _SignInFromState _value, $Res Function(_SignInFromState) _then)
      : super(_value, (v) => _then(v as _SignInFromState));

  @override
  _SignInFromState get _value => super._value as _SignInFromState;

  @override
  $Res call({
    Object emailAdress = freezed,
    Object password = freezed,
    Object passwordConfirmed = freezed,
    Object isSubmitting = freezed,
    Object showErrorMessage = freezed,
    Object authFailureOrSuccess = freezed,
    Object passwordToCompare = freezed,
  }) {
    return _then(_SignInFromState(
      emailAdress: emailAdress == freezed
          ? _value.emailAdress
          : emailAdress as EmailAdress,
      password: password == freezed ? _value.password : password as Password,
      passwordConfirmed: passwordConfirmed == freezed
          ? _value.passwordConfirmed
          : passwordConfirmed as PasswordConfirmed,
      isSubmitting:
          isSubmitting == freezed ? _value.isSubmitting : isSubmitting as bool,
      showErrorMessage: showErrorMessage == freezed
          ? _value.showErrorMessage
          : showErrorMessage as bool,
      authFailureOrSuccess: authFailureOrSuccess == freezed
          ? _value.authFailureOrSuccess
          : authFailureOrSuccess as Option<Either<AuthFailure, Unit>>,
      passwordToCompare: passwordToCompare == freezed
          ? _value.passwordToCompare
          : passwordToCompare as Password,
    ));
  }
}

/// @nodoc
class _$_SignInFromState implements _SignInFromState {
  const _$_SignInFromState(
      {@required this.emailAdress,
      @required this.password,
      @required this.passwordConfirmed,
      @required this.isSubmitting,
      @required this.showErrorMessage,
      @required this.authFailureOrSuccess,
      this.passwordToCompare})
      : assert(emailAdress != null),
        assert(password != null),
        assert(passwordConfirmed != null),
        assert(isSubmitting != null),
        assert(showErrorMessage != null),
        assert(authFailureOrSuccess != null);

  @override
  final EmailAdress emailAdress;
  @override
  final Password password;
  @override
  final PasswordConfirmed passwordConfirmed;
  @override
  final bool isSubmitting;
  @override
  final bool showErrorMessage;
  @override
  final Option<Either<AuthFailure, Unit>> authFailureOrSuccess;
  @override
  final Password passwordToCompare;

  @override
  String toString() {
    return 'SignInFromState(emailAdress: $emailAdress, password: $password, passwordConfirmed: $passwordConfirmed, isSubmitting: $isSubmitting, showErrorMessage: $showErrorMessage, authFailureOrSuccess: $authFailureOrSuccess, passwordToCompare: $passwordToCompare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SignInFromState &&
            (identical(other.emailAdress, emailAdress) ||
                const DeepCollectionEquality()
                    .equals(other.emailAdress, emailAdress)) &&
            (identical(other.password, password) ||
                const DeepCollectionEquality()
                    .equals(other.password, password)) &&
            (identical(other.passwordConfirmed, passwordConfirmed) ||
                const DeepCollectionEquality()
                    .equals(other.passwordConfirmed, passwordConfirmed)) &&
            (identical(other.isSubmitting, isSubmitting) ||
                const DeepCollectionEquality()
                    .equals(other.isSubmitting, isSubmitting)) &&
            (identical(other.showErrorMessage, showErrorMessage) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessage, showErrorMessage)) &&
            (identical(other.authFailureOrSuccess, authFailureOrSuccess) ||
                const DeepCollectionEquality().equals(
                    other.authFailureOrSuccess, authFailureOrSuccess)) &&
            (identical(other.passwordToCompare, passwordToCompare) ||
                const DeepCollectionEquality()
                    .equals(other.passwordToCompare, passwordToCompare)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(emailAdress) ^
      const DeepCollectionEquality().hash(password) ^
      const DeepCollectionEquality().hash(passwordConfirmed) ^
      const DeepCollectionEquality().hash(isSubmitting) ^
      const DeepCollectionEquality().hash(showErrorMessage) ^
      const DeepCollectionEquality().hash(authFailureOrSuccess) ^
      const DeepCollectionEquality().hash(passwordToCompare);

  @override
  _$SignInFromStateCopyWith<_SignInFromState> get copyWith =>
      __$SignInFromStateCopyWithImpl<_SignInFromState>(this, _$identity);
}

abstract class _SignInFromState implements SignInFromState {
  const factory _SignInFromState(
      {@required EmailAdress emailAdress,
      @required Password password,
      @required PasswordConfirmed passwordConfirmed,
      @required bool isSubmitting,
      @required bool showErrorMessage,
      @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
      Password passwordToCompare}) = _$_SignInFromState;

  @override
  EmailAdress get emailAdress;
  @override
  Password get password;
  @override
  PasswordConfirmed get passwordConfirmed;
  @override
  bool get isSubmitting;
  @override
  bool get showErrorMessage;
  @override
  Option<Either<AuthFailure, Unit>> get authFailureOrSuccess;
  @override
  Password get passwordToCompare;
  @override
  _$SignInFromStateCopyWith<_SignInFromState> get copyWith;
}
