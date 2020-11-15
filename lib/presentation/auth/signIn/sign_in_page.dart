import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/signIn/sign_in_cubit.dart';
import 'package:training_log/injection.dart';
import 'package:training_log/presentation/auth/signIn/widgets/sing_in_form.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign In'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInCubit>(),
        child: SignInForm(),
      ),
    );
  }
}
