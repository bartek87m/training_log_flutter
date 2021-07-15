// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i4;
import 'package:firebase_auth/firebase_auth.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i12;
import 'application/auth/signIn/sign_in_cubit.dart' as _i9;
import 'application/workoutForm/workoutform_cubit.dart' as _i10;
import 'application/workoutWatcher/workoutwatcher_bloc.dart' as _i11;
import 'domain/auth/i_auth_facade.dart' as _i5;
import 'domain/workout/i_workout_facade.dart' as _i7;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i6;
import 'infrastructure/core/firebase_auth_injection.dart' as _i13;
import 'infrastructure/workout/firebase_workout_facade.dart'
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
  gh.lazySingleton<_i7.IWorkoutFacade>(
      () => _i8.FirebaseWorkoutFacade(get<_i4.FirebaseFirestore>()));
  gh.factory<_i9.SignInCubit>(() => _i9.SignInCubit(get<_i5.IAuthFacade>()));
  gh.lazySingleton<_i10.WorkoutformCubit>(() => _i10.WorkoutformCubit());
  gh.factory<_i11.WorkoutwatcherBloc>(
      () => _i11.WorkoutwatcherBloc(get<_i7.IWorkoutFacade>()));
  gh.lazySingleton<_i12.AuthCubit>(
      () => _i12.AuthCubit(get<_i5.IAuthFacade>()));
  return get;
}

class _$FirebaseAuthInjection extends _i13.FirebaseAuthInjection {}
