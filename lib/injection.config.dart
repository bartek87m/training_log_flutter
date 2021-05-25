// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/cubit/auth_cubit.dart' as _i7;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_auth_injection.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseAuthInjection = _$FirebaseAuthInjection();
  gh.lazySingleton<_i3.FirebaseAuth>(() => firebaseAuthInjection.firebaseAuth);
  gh.lazySingleton<_i4.FirebaseFirestore>(
      () => firebaseAuthInjection.firestore);
  gh.lazySingleton<_i5.IAuthFacade>(
      () => _i6.FirebaseAuthFacade(get<_i3.FirebaseAuth>()));
  gh.factory<_i7.AuthCubit>(() => _i7.AuthCubit(get<_i5.IAuthFacade>()));
  return get;
}

class _$FirebaseAuthInjection extends _i8.FirebaseAuthInjection {}
