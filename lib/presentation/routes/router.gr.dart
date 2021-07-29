// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../../domain/workout/workout.dart' as _i8;
import '../auth/refister_new_user_page.dart' as _i5;
import '../auth/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;
import '../workout/workout_view_page.dart' as _i7;
import '../workout/workouts_view_page.dart' as _i6;

class AppRouter extends _i1.RootStackRouter {
  AppRouter([_i2.GlobalKey<_i2.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i1.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i3.SplashPage();
        }),
    SignInPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i4.SignInPage();
        }),
    RegisterNewUserPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return _i5.RegisterNewUserPage();
        }),
    WorkoutsViewPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.WorkoutsViewPage();
        }),
    WorkoutViewPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (data) {
          final args = data.argsAs<WorkoutViewPageRouteArgs>();
          return _i7.WorkoutViewPage(args.exerciseNumber,
              key: args.key, workout: args.workout);
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/signInPage'),
        _i1.RouteConfig(RegisterNewUserPageRoute.name,
            path: '/registerNewUser'),
        _i1.RouteConfig(WorkoutsViewPageRoute.name, path: '/workoutsView'),
        _i1.RouteConfig(WorkoutViewPageRoute.name, path: '/workoutView')
      ];
}

class SplashPageRoute extends _i1.PageRouteInfo {
  const SplashPageRoute() : super(name, path: '/');

  static const String name = 'SplashPageRoute';
}

class SignInPageRoute extends _i1.PageRouteInfo {
  const SignInPageRoute() : super(name, path: '/signInPage');

  static const String name = 'SignInPageRoute';
}

class RegisterNewUserPageRoute extends _i1.PageRouteInfo {
  const RegisterNewUserPageRoute() : super(name, path: '/registerNewUser');

  static const String name = 'RegisterNewUserPageRoute';
}

class WorkoutsViewPageRoute extends _i1.PageRouteInfo {
  const WorkoutsViewPageRoute() : super(name, path: '/workoutsView');

  static const String name = 'WorkoutsViewPageRoute';
}

class WorkoutViewPageRoute extends _i1.PageRouteInfo<WorkoutViewPageRouteArgs> {
  WorkoutViewPageRoute(
      {required dynamic exerciseNumber,
      _i2.Key? key,
      required _i8.Workout workout})
      : super(name,
            path: '/workoutView',
            args: WorkoutViewPageRouteArgs(
                exerciseNumber: exerciseNumber, key: key, workout: workout));

  static const String name = 'WorkoutViewPageRoute';
}

class WorkoutViewPageRouteArgs {
  const WorkoutViewPageRouteArgs(
      {required this.exerciseNumber, this.key, required this.workout});

  final dynamic exerciseNumber;

  final _i2.Key? key;

  final _i8.Workout workout;
}
