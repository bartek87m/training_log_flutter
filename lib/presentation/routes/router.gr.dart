// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:auto_route/auto_route.dart' as _i1;
import 'package:flutter/material.dart' as _i2;

import '../auth/refister_new_user_page.dart' as _i5;
import '../auth/sign_in_page.dart' as _i4;
import '../splash/splash_page.dart' as _i3;
import '../workout/workout_view_page.dart' as _i6;

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
    WorkoutViewPageRoute.name: (routeData) => _i1.MaterialPageX<dynamic>(
        routeData: routeData,
        builder: (_) {
          return const _i6.WorkoutViewPage();
        })
  };

  @override
  List<_i1.RouteConfig> get routes => [
        _i1.RouteConfig(SplashPageRoute.name, path: '/'),
        _i1.RouteConfig(SignInPageRoute.name, path: '/signInPage'),
        _i1.RouteConfig(RegisterNewUserPageRoute.name,
            path: '/registerNewUser'),
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

class WorkoutViewPageRoute extends _i1.PageRouteInfo {
  const WorkoutViewPageRoute() : super(name, path: '/workoutView');

  static const String name = 'WorkoutViewPageRoute';
}
