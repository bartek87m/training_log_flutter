import 'package:auto_route/auto_route_annotations.dart';
import 'package:training_log/presentation/auth/createAccount/create_account_page.dart';
import 'package:training_log/presentation/auth/signIn/sign_in_page.dart';
import 'package:training_log/presentation/splash/splash_page.dart';
import 'package:training_log/presentation/training/trainings_page.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashPage, initial: true),
    MaterialRoute(page: CreateAccountPage),
    MaterialRoute(page: SignInPage),
    MaterialRoute(page: TrainingsPage),
  ],
)
class $Router {}
