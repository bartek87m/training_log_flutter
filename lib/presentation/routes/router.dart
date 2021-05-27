import 'package:auto_route/annotations.dart';
import 'package:training_log/presentation/auth/signInPage.dart';
import 'package:training_log/presentation/splash/splash_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(path: '/signInPage', page: SignInPage),
])
class $AppRouter {}
