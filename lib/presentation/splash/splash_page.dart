import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/cubit/auth_cubit.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthCubit, AuthState>(
      bloc: BlocProvider.of<AuthCubit>(context),
      listener: (context, state) {
        // state.map(
        //   initial: (_) {},
        //   authentificate: (_) {
        //     ExtendedNavigator.of(context).replace(Routes.trainingsPage);
        //   },
        //   unauthentificate: (_) {
        //     ExtendedNavigator.of(context).replace(Routes.signInPage);
        //   },
        // );
      },
      child: Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
