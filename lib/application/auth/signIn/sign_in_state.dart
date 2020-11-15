part of 'sign_in_cubit.dart';

@freezed
abstract class SignInFromState with _$SignInFromState {
  const factory SignInFromState({
    @required EmailAdress emailAdress,
    @required Password password,
    @required PasswordConfirmed passwordConfirmed,
    @required bool isSubmitting,
    @required bool showErrorMessage,
    @required Option<Either<AuthFailure, Unit>> authFailureOrSuccess,
    Password passwordToCompare,
  }) = _SignInFromState;

  factory SignInFromState.initial() => SignInFromState(
        emailAdress: EmailAdress(''),
        password: Password(''),
        passwordToCompare: Password(''),
        passwordConfirmed: PasswordConfirmed([Password(''), Password('')]),
        isSubmitting: false,
        showErrorMessage: false,
        authFailureOrSuccess: none(),
      );
}
