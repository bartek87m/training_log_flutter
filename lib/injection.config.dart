// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/auth/auth_cubit.dart' as _i13;
import 'application/auth/signIn/sign_in_cubit.dart' as _i10;
import 'application/cubit/activeseries_cubit.dart' as _i3;
import 'application/workoutForm/workoutform_cubit.dart' as _i11;
import 'application/workoutWatcher/workoutwatcher_bloc.dart' as _i12;
import 'domain/auth/i_auth_facade.dart' as _i6;
import 'domain/workout/i_workout_repositry.dart' as _i8;
import 'infrastructure/auth/firebase_auth_facade.dart' as _i7;
import 'infrastructure/core/firebase_auth_injection.dart' as _i14;
import 'infrastructure/workout/firebase_workout_repository.dart'
    as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final firebaseAuthInjection = _$FirebaseAuthInjection();
  gh.lazySingleton<_i3.ActiveseriesCubit>(() => _i3.ActiveseriesCubit());
  gh.lazySingleton<_i4.FirebaseAuth>(() => firebaseAuthInjection.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(
      () => firebaseAuthInjection.firestore);
  gh.lazySingleton<_i6.IAuthFacade>(
      () => _i7.FirebaseAuthFacade(get<_i4.FirebaseAuth>()));
  gh.lazySingleton<_i8.IWorkoutFacade>(
      () => _i9.FirebaseWorkoutFacade(get<_i5.FirebaseFirestore>()));
  gh.factory<_i10.SignInCubit>(() => _i10.SignInCubit(get<_i6.IAuthFacade>()));
  gh.lazySingleton<_i11.WorkoutformCubit>(
      () => _i11.WorkoutformCubit(get<_i8.IWorkoutFacade>()));
  gh.factory<_i12.WorkoutwatcherBloc>(
      () => _i12.WorkoutwatcherBloc(get<_i8.IWorkoutFacade>()));
  gh.lazySingleton<_i13.AuthCubit>(
      () => _i13.AuthCubit(get<_i6.IAuthFacade>()));
  return get;
}

class _$FirebaseAuthInjection extends _i14.FirebaseAuthInjection {}
