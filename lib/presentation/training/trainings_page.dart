import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/cubit/sign_in_cubit.dart';
import 'package:training_log/application/auth_cubit.dart';

class TrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Container(
            child: Center(
                child: RaisedButton(
                    child: Text('Sign Out'),
                    onPressed: context.read<AuthCubit>().signOut)),
          );
        },
      )),
    );
  }
}
