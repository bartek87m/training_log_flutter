// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i7;
import 'package:flutter/material.dart' as _i8;

import '../../domain/workout/workout.dart' as _i9;
import '../auth/refister_new_user_page.dart' as _i4;
import '../auth/sign_in_page.dart' as _i3;
import '../splash/splash_page.dart' as _i1;
import '../workout/workout_view_page.dart' as _i6;
import '../workout/workouts_main_page.dart' as _i2;
import '../workout/workouts_view_page.dart' as _i5;

class AppRouter extends _i7.RootStackRouter {
  AppRouter([_i8.GlobalKey<_i8.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i7.PageFactory> pagesMap = {
    SplashPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i1.SplashPage());
    },
    WorkoutsMainPageRoute.name: (routeData) {
      final args = routeData.argsAs<WorkoutsMainPageRouteArgs>(
          orElse: () => const WorkoutsMainPageRouteArgs());
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.WorkoutsMainPage(key: args.key));
    },
    SignInPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.SignInPage());
    },
    RegisterNewUserPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.RegisterNewUserPage());
    },
    WorkoutsViewPageRoute.name: (routeData) {
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.WorkoutsViewPage());
    },
    WorkoutViewPageRoute.name: (routeData) {
      final args = routeData.argsAs<WorkoutViewPageRouteArgs>();
      return _i7.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i6.WorkoutViewPage(key: args.key, workout: args.workout));
    }
  };

  @override
  List<_i7.RouteConfig> get routes => [
        _i7.RouteConfig(SplashPageRoute.name, path: '/'),
        _i7.RouteConfig(WorkoutsMainPageRoute.name, path: '/workoutsMainPage'),
        _i7.RouteConfig(SignInPageRoute.name, path: '/signInPage'),
        _i7.RouteConfig(RegisterNewUserPageRoute.name,
            path: '/registerNewUser'),
        _i7.RouteConfig(WorkoutsViewPageRoute.name, path: '/workoutsView'),
        _i7.RouteConfig(WorkoutViewPageRoute.name, path: '/workoutView')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashPageRoute extends _i7.PageRouteInfo<void> {
  const SplashPageRoute() : super(SplashPageRoute.name, path: '/');

  static const String name = 'SplashPageRoute';
}

/// generated route for
/// [_i2.WorkoutsMainPage]
class WorkoutsMainPageRoute
    extends _i7.PageRouteInfo<WorkoutsMainPageRouteArgs> {
  WorkoutsMainPageRoute({_i8.Key? key})
      : super(WorkoutsMainPageRoute.name,
            path: '/workoutsMainPage',
            args: WorkoutsMainPageRouteArgs(key: key));

  static const String name = 'WorkoutsMainPageRoute';
}

class WorkoutsMainPageRouteArgs {
  const WorkoutsMainPageRouteArgs({this.key});

  final _i8.Key? key;

  @override
  String toString() {
    return 'WorkoutsMainPageRouteArgs{key: $key}';
  }
}

/// generated route for
/// [_i3.SignInPage]
class SignInPageRoute extends _i7.PageRouteInfo<void> {
  const SignInPageRoute() : super(SignInPageRoute.name, path: '/signInPage');

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i4.RegisterNewUserPage]
class RegisterNewUserPageRoute extends _i7.PageRouteInfo<void> {
  const RegisterNewUserPageRoute()
      : super(RegisterNewUserPageRoute.name, path: '/registerNewUser');

  static const String name = 'RegisterNewUserPageRoute';
}

/// generated route for
/// [_i5.WorkoutsViewPage]
class WorkoutsViewPageRoute extends _i7.PageRouteInfo<void> {
  const WorkoutsViewPageRoute()
      : super(WorkoutsViewPageRoute.name, path: '/workoutsView');

  static const String name = 'WorkoutsViewPageRoute';
}

/// generated route for
/// [_i6.WorkoutViewPage]
class WorkoutViewPageRoute extends _i7.PageRouteInfo<WorkoutViewPageRouteArgs> {
  WorkoutViewPageRoute({_i8.Key? key, required _i9.Workout workout})
      : super(WorkoutViewPageRoute.name,
            path: '/workoutView',
            args: WorkoutViewPageRouteArgs(key: key, workout: workout));

  static const String name = 'WorkoutViewPageRoute';
}

class WorkoutViewPageRouteArgs {
  const WorkoutViewPageRouteArgs({this.key, required this.workout});

  final _i8.Key? key;

  final _i9.Workout workout;

  @override
  String toString() {
    return 'WorkoutViewPageRouteArgs{key: $key, workout: $workout}';
  }
}
