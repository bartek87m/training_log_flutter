// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../domain/workout/workout.dart' as _i8;
import '../auth/refister_new_user_page.dart' as _i3;
import '../auth/sign_in_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;
import '../workout/workout_view_page.dart' as _i5;
import '../workout/workouts_view_page.dart' as _i4;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    SignInPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.SignInPage());
    },
    RegisterNewUserPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.RegisterNewUserPage());
    },
    WorkoutsViewPageRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.WorkoutsViewPage());
    },
    WorkoutViewPageRoute.name: (routeData) {
      final args = routeData.argsAs<WorkoutViewPageRouteArgs>();
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i5.WorkoutViewPage(args.exerciseNumber,
              key: args.key, workout: args.workout));
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(SplashPageRoute.name, path: '/'),
        _i6.RouteConfig(SignInPageRoute.name, path: '/signInPage'),
        _i6.RouteConfig(RegisterNewUserPageRoute.name,
            path: '/registerNewUser'),
        _i6.RouteConfig(WorkoutsViewPageRoute.name, path: '/workoutsView'),
        _i6.RouteConfig(WorkoutViewPageRoute.name, path: '/workoutView')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i6.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i6.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/signInPage');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.RegisterNewUserPage]
class RegisterNewUserPageRoute extends _i6.PageRouteInfo<void> {
  const RegisterNewUserPageRoute()
      : super(RegisterNewUserPageRoute.name, path: '/registerNewUser');

  static const String name = 'RegisterNewUserPageRoute';
}

/// generated route for
/// [_i4.WorkoutsViewPage]
class WorkoutsViewPageRoute extends _i6.PageRouteInfo<void> {
  const WorkoutsViewPageRoute()
      : super(WorkoutsViewPageRoute.name, path: '/workoutsView');

  static const String name = 'WorkoutsViewPageRoute';
}

/// generated route for
/// [_i5.WorkoutViewPage]
class WorkoutViewPageRoute extends _i6.PageRouteInfo<WorkoutViewPageRouteArgs> {
  WorkoutViewPageRoute(
      {required dynamic exerciseNumber,
      _i7.Key? key,
      required _i8.Workout workout})
      : super(WorkoutViewPageRoute.name,
            path: '/workoutView',
            args: WorkoutViewPageRouteArgs(
                exerciseNumber: exerciseNumber, key: key, workout: workout));

  static const String name = 'WorkoutViewPageRoute';
}

class WorkoutViewPageRouteArgs {
  const WorkoutViewPageRouteArgs(
      {required this.exerciseNumber, this.key, required this.workout});

  final dynamic exerciseNumber;

  final _i7.Key? key;

  final _i8.Workout workout;

  @override
  String toString() {
    return 'WorkoutViewPageRouteArgs{exerciseNumber: $exerciseNumber, key: $key, workout: $workout}';
  }
}
