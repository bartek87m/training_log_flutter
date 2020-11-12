import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/cubit/sign_in_cubit.dart';
import 'package:training_log/presentation/auth/createAccount/widget/create_account_form.dart';

import '../../../injection.dart';

class CreateAccountPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('REGSISTER'),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInCubit>(),
        child: CreateAccount(),
      ),
    );
  }
}
