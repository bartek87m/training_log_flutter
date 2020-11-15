import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class TrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: BlocConsumer<AuthCubit, AuthState>(
        listener: (context, state) {
          state.map(
              initial: (_) {
                print('initial');
              },
              authentificate: (_) {},
              unauthentificate: (_) {
                ExtendedNavigator.of(context).replace(Routes.signInPage);
              });
        },
        builder: (context, state) {
          return Container(
            child: Center(
              child: RaisedButton(
                child: Text('Sign Out'),
                onPressed: () => BlocProvider.of<AuthCubit>(context).signOut(),
              ),
            ),
          );
        },
      )),
    );
  }
}
