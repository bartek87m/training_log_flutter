// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/workout/workout.dart';
import '../auth/createAccount/create_account_page.dart';
import '../auth/signIn/sign_in_page.dart';
import '../splash/splash_page.dart';
import '../training/activeTrainingPage.dart';
import '../training/editHistoricalWorkoutPage.dart';
import '../training/historicalWorkoutPage.dart';
import '../training/trainings_page.dart';

class Routes {
  static const String splashPage = '/';
  static const String createAccountPage = '/create-account-page';
  static const String signInPage = '/sign-in-page';
  static const String trainingsPage = '/trainings-page';
  static const String activeTrainingPage = '/active-training-page';
  static const String historicalWorkoutPage = '/historical-workout-page';
  static const String editHistoricalWorkoutPage =
      '/edit-historical-workout-page';
  static const all = <String>{
    splashPage,
    createAccountPage,
    signInPage,
    trainingsPage,
    activeTrainingPage,
    historicalWorkoutPage,
    editHistoricalWorkoutPage,
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
    RouteDef(Routes.activeTrainingPage, page: ActiveTrainingPage),
    RouteDef(Routes.historicalWorkoutPage, page: HistoricalWorkoutPage),
    RouteDef(Routes.editHistoricalWorkoutPage, page: EditHistoricalWorkoutPage),
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
    ActiveTrainingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => ActiveTrainingPage(),
        settings: data,
      );
    },
    HistoricalWorkoutPage: (data) {
      final args = data.getArgs<HistoricalWorkoutPageArguments>(nullOk: false);
      return MaterialPageRoute<dynamic>(
        builder: (context) => HistoricalWorkoutPage(args.workout),
        settings: data,
      );
    },
    EditHistoricalWorkoutPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => EditHistoricalWorkoutPage(),
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

  Future<dynamic> pushActiveTrainingPage() =>
      push<dynamic>(Routes.activeTrainingPage);

  Future<dynamic> pushHistoricalWorkoutPage({
    @required Workout workout,
  }) =>
      push<dynamic>(
        Routes.historicalWorkoutPage,
        arguments: HistoricalWorkoutPageArguments(workout: workout),
      );

  Future<dynamic> pushEditHistoricalWorkoutPage() =>
      push<dynamic>(Routes.editHistoricalWorkoutPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// HistoricalWorkoutPage arguments holder class
class HistoricalWorkoutPageArguments {
  final Workout workout;
  HistoricalWorkoutPageArguments({@required this.workout});
}
