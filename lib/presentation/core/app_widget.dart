import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/auth/signIn/sign_in_cubit.dart';
import 'package:training_log/application/workoutForm/workoutform_cubit.dart';

import 'package:training_log/injection.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..checkAuthentification(),
        ),
        BlocProvider(
          create: (context) => getIt<SignInCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<WorkoutformCubit>(),
        )
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) {
          return MaterialApp.router(
            title: 'Note Your Passion',
            debugShowCheckedModeBanner: false,
            routerDelegate: _appRouter.delegate(),
            routeInformationParser: _appRouter.defaultRouteParser(),
          );
        },
      ),
    );
  }
}
