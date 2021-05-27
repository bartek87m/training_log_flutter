import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/auth/i_auth_facade.dart';

part 'auth_state.dart';
part 'auth_cubit.freezed.dart';

@lazySingleton
class AuthCubit extends Cubit<AuthState> {
  IAuthFacade _iAuthFacade;

  AuthCubit(this._iAuthFacade) : super(AuthState.initial());

  Future<void> checkAuthentification() async {
    final auth = await _iAuthFacade.getSignedInUser();
    auth.fold(() => emit(AuthState.authentificate()),
        (a) => emit(AuthState.authentificate()));
  }

  Future<void> signOut() async {
    await _iAuthFacade.signOut();
    await checkAuthentification();
  }
}
