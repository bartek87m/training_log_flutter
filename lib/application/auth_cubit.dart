import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/auth/i_auth_facade.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@injectable
class AuthCubit extends Cubit<AuthState> {
  IAuthFacade _authFacade;

  AuthCubit(this._authFacade) : super(AuthState.initial());

  Future<void> checkAuthentification() async {
    final auth = await _authFacade.getSignedInUser();
    auth.fold(() => emit(AuthState.unauthentificate()),
        (_) => emit(AuthState.authentificate()));
  }

  Future<void> signOut() async {
    await _authFacade.signOut();
    emit(AuthState.unauthentificate());
  }
}
