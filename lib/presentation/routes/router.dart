import 'package:auto_route/annotations.dart';
import 'package:training_log/presentation/auth/refister_new_user_page.dart';
import 'package:training_log/presentation/auth/sign_in_page.dart';
import 'package:training_log/presentation/splash/splash_page.dart';
import 'package:training_log/presentation/workout/workout_view_page.dart';
import 'package:training_log/presentation/workout/workouts_main_page.dart';
import 'package:training_log/presentation/workout/workouts_view_page.dart';

@MaterialAutoRouter(routes: <AutoRoute>[
  AutoRoute(page: SplashPage, initial: true),
  AutoRoute(path: '/workoutsMainPage', page: WorkoutsMainPage),
  AutoRoute(path: '/signInPage', page: SignInPage),
  AutoRoute(path: '/registerNewUser', page: RegisterNewUserPage),
  AutoRoute(path: '/workoutsView', page: WorkoutsViewPage),
  AutoRoute(path: '/workoutView', page: WorkoutViewPage),
])
class $AppRouter {}
