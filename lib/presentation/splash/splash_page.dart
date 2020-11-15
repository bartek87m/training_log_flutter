import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      cubit: BlocProvider.of<AuthCubit>(context),
      listener: (context, state) {
        state.map(
          initial: (_) {
            print(state);
          },
          authentificate: (_) {
            ExtendedNavigator.of(context).push(Routes.trainingsPage);
          },
          unauthentificate: (_) {
            ExtendedNavigator.of(context).replace(Routes.signInPage);
          },
        );
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
