import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/cubit/sign_in_cubit.dart';
import 'package:training_log/application/auth_cubit.dart';
import 'package:training_log/injection.dart';
import 'package:training_log/presentation/routes/router.gr.dart' as router;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<SignInCubit>(),
        ),
        BlocProvider(
          create: (context) => getIt<AuthCubit>()..checkAuthentification(),
        )
      ],
      child: MaterialApp(
        title: 'Training Log',
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator(
          router: router.Router(),
        ),
        theme: ThemeData.dark().copyWith(),
      ),
    );
  }
}
