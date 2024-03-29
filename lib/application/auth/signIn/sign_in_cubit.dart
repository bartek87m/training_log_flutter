import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/auth/auth_failure.dart';
import 'package:training_log/domain/auth/i_auth_facade.dart';
import 'package:training_log/domain/auth/value_objects.dart';

part 'sign_in_state.dart';
part 'sign_in_cubit.freezed.dart';

@injectable
class SignInCubit extends Cubit<SignInFromState> {
  final IAuthFacade _authFacade;
  SignInCubit(this._authFacade) : super(SignInFromState.initial());

  void resetSignInCubitState() {
    emit(
      state.copyWith(
        emailAdress: EmailAdress(''),
        password: Password(''),
        passwordToCompare: Password(''),
        passwordConfirmed: PasswordConfirmed([Password(''), Password('')]),
        isSubmitting: false,
        showErrorMessage: false,
        authFailureOrSuccess: none(),
      ),
    );
  }

  void changeEmail(String input) {
    emit(
      state.copyWith(
        emailAdress: EmailAdress(input),
        authFailureOrSuccess: none(),
      ),
    );
  }

  void changePassword(String input) {
    emit(
      state.copyWith(
        password: Password(input),
        authFailureOrSuccess: none(),
        passwordConfirmed: PasswordConfirmed([Password(''), Password('')]),
      ),
    );
  }

  void changePasswordToCompare(String input) {
    emit(
      state.copyWith(
        passwordToCompare: Password(input),
        authFailureOrSuccess: none(),
        passwordConfirmed: PasswordConfirmed([Password(''), Password('')]),
      ),
    );
  }

  Future<void> signInWithEmailAndPassword() async {
    final isEmailValid = state.emailAdress!.isValid();
    final isPasswordValid = state.password!.isValid();

    Either<AuthFailure, Unit>? failureOrSuccess;

    if (isEmailValid && isPasswordValid) {
      failureOrSuccess = await _authFacade.signInWithEmailAndPassword(
          emailAdress: state.emailAdress, password: state.password);
      emit(
        state.copyWith(
          isSubmitting: true,
          authFailureOrSuccess: none(),
        ),
      );
    }

    emit(
      state.copyWith(
        showErrorMessage: true,
        authFailureOrSuccess: optionOf(failureOrSuccess),
      ),
    );
  }

  void resetLinearProgresssBar() {
    emit(state.copyWith(isSubmitting: false));
  }

  Future<void> registerWithEmailAndPassword() async {
    final isEmailValid = state.emailAdress!.isValid();
    final isPasswordValid = state.password!.isValid();
    // final isPasswordToCompareValid = state.passwordToCompare!.isValid();
    emit(
      state.copyWith(
        passwordConfirmed:
            PasswordConfirmed([state.password!, state.passwordToCompare!]),
      ),
    );

    final isPasswordsIdentical = state.passwordConfirmed!.isValid();
    Either<AuthFailure, Unit>? failureOrSuccess;

    if (isEmailValid && isPasswordValid && isPasswordsIdentical) {
      emit(state.copyWith(
        isSubmitting: true,
        showErrorMessage: false,
        authFailureOrSuccess: none(),
      ));
      failureOrSuccess = await _authFacade.regiseterWithEmailAndPassword(
          emailAdress: state.emailAdress, password: state.password);
    } else {
      emit(
        state.copyWith(
          showErrorMessage: true,
          authFailureOrSuccess: optionOf(failureOrSuccess),
        ),
      );
    }
  }
}
