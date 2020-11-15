part of 'auth_cubit.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;
  const factory AuthState.authentificate() = Authentificate;
  const factory AuthState.unauthentificate() = UnAuthentificate;
}
