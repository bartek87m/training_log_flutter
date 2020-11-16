// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../auth/createAccount/create_account_page.dart';
import '../auth/signIn/sign_in_page.dart';
import '../splash/splash_page.dart';
import '../training/trainings_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String createAccountPage = '/create-account-page';
  static const String signInPage = '/sign-in-page';
  static const String trainingsPage = '/trainings-page';
  static const all = <String>{
    splashPage,
    createAccountPage,
    signInPage,
    trainingsPage,
  };
}

class Router extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashPage, page: SplashPage),
    RouteDef(Routes.createAccountPage, page: CreateAccountPage),
    RouteDef(Routes.signInPage, page: SignInPage),
    RouteDef(Routes.trainingsPage, page: TrainingsPage),
  ];
  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashPage(),
        settings: data,
      );
    },
    CreateAccountPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => CreateAccountPage(),
        settings: data,
      );
    },
    SignInPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInPage(),
        settings: data,
      );
    },
    TrainingsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TrainingsPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension RouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashPage() => push<dynamic>(Routes.splashPage);

  Future<dynamic> pushCreateAccountPage() =>
      push<dynamic>(Routes.createAccountPage);

  Future<dynamic> pushSignInPage() => push<dynamic>(Routes.signInPage);

  Future<dynamic> pushTrainingsPage() => push<dynamic>(Routes.trainingsPage);
}
