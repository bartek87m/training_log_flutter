import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/cubit/auth_cubit.dart';
import 'package:auto_route/auto_route.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      bloc: BlocProvider.of<AuthCubit>(context),
      listener: (context, state) {
        print(state);
        state.map(
          initial: (_) {},
          authentificate: (_) {
            context.router.replace(SignInPageRoute());
          },
          unauthentificate: (_) {
            context.router.replace(WorkoutViewPageRoute());
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
