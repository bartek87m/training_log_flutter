// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'application/auth/auth_cubit.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_auth_injection.dart';
import 'domain/auth/i_auth_facade.dart';
import 'application/auth/signIn/sign_in_cubit.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseAuthInjection = _$FirebaseAuthInjection();
  gh.lazySingleton<FirebaseAuth>(() => firebaseAuthInjection.firebaseAuth);
  gh.lazySingleton<IAuthFacade>(() => FirebaseAuthFacade(get<FirebaseAuth>()));
  gh.factory<SignInCubit>(() => SignInCubit(get<IAuthFacade>()));
  gh.factory<AuthCubit>(() => AuthCubit(get<IAuthFacade>()));
  return get;
}

class _$FirebaseAuthInjection extends FirebaseAuthInjection {}
