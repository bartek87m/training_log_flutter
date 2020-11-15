import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/auth/signIn/sign_in_cubit.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class SignInForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
          () => null,
          (either) => either.fold(
            (failure) {
              FlushbarHelper.createError(
                message: failure.map(
                    cancelledByUser: (_) => 'Canceled',
                    serverError: (_) => 'Server Error',
                    invalidEmailAndPasswordCombinaion: (_) =>
                        'Invalid email and password combination',
                    emailAlreadiInUse: (_) => 'Email already in use'),
              ).show(context);
              context.read<SignInCubit>().resetLinearProgresssBar();
            },
            (_) {
              ExtendedNavigator.of(context).replace(Routes.trainingsPage);
              context.read<AuthCubit>().checkAuthentification();
            },
          ),
        );
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessage
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) =>
                    BlocProvider.of<SignInCubit>(context).changeEmail(value),
                validator: (_) => BlocProvider.of<SignInCubit>(context)
                    .state
                    .emailAdress
                    .value
                    .fold(
                        //beirzemy context bezpośrednio z Bloc a nie z builder
                        (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid Email',
                              orElse: () => null,
                            ),
                        (r) => null),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.email), labelText: 'Email'),
                autocorrect: false,
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) =>
                    BlocProvider.of<SignInCubit>(context).changePassword(value),
                validator: (_) => BlocProvider.of<SignInCubit>(context)
                    .state
                    .password
                    .value
                    .fold(
                        //beirzemy context bezpośrednio z Bloc a nie z builder
                        (f) => f.maybeMap(
                              shortPassword: (_) => 'Invalid Password',
                              orElse: () => null,
                            ),
                        (r) => null),
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                autocorrect: false,
                obscureText: true,
              ),
              const SizedBox(height: 8),
              FlatButton(
                onPressed: () {
                  BlocProvider.of<SignInCubit>(context)
                      .signInWithEmailAndPassword();
                },
                child: const Text('SIGN IN'),
                color: Colors.white24,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black45),
                ),
              ),
              FlatButton(
                onPressed: () {
                  ExtendedNavigator.of(context).push(
                    Routes.createAccountPage,
                  );
                },
                child: const Text('REGISTER'),
                color: Colors.white24,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18.0),
                  side: BorderSide(color: Colors.black45),
                ),
              ),
              const SizedBox(height: 8),
              if (state.isSubmitting) ...[
                const SizedBox(
                  height: 8,
                ),
                const LinearProgressIndicator()
              ]
            ],
          ),
        );
      },
    );
  }
}
