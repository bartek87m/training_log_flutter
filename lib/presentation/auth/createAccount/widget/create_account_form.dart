import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/cubit/sign_in_cubit.dart';
import 'package:training_log/application/auth_cubit.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class CreateAccount extends StatelessWidget {
  String validatePassword(context) {
    final state = context.bloc<SignInCubit>().state;

    if (state.password.value.isLeft()) {
      return state.password.value.fold(
          //beirzemy context bezpośrednio z Bloc a nie z builder
          (f) => f.maybeMap(
                shortPassword: (_) => 'Invalid Password',
                orElse: () => null,
              ),
          (r) => null);
    } else if (state.passwordConfirmed.value.isLeft()) {
      state.passwordConfirmed.value.leftMap(
        (f) => f.maybeMap(
          passwordsNotIdentical: (_) => 'Passwords are not identical',
          orElse: () => 'null',
        ),
      );
    } else
      return null;

    return state.passwordConfirmed.value.fold(
        //beirzemy context bezpośrednio z Bloc a nie z builder
        (f) => f.maybeMap(
              passwordsNotIdentical: (_) => 'Passwords are not identical',
              orElse: () => 'null',
            ),
        (r) => null);
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccess.fold(
            () => null,
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                    message: failure.map(
                        cancelledByUser: (_) => 'Canceled',
                        serverError: (_) => 'Server Error',
                        invalidEmailAndPasswordCombinaion: (_) =>
                            'Invalid email and password combination',
                        emailAlreadiInUse: (_) => 'Email already in use'),
                  ).show(context);
                  context.read<SignInCubit>().resetLinearProgresssBar();
                }, (_) {
                  ExtendedNavigator.of(context).replace(Routes.trainingsPage);
                  context.read<AuthCubit>().checkAuthentification();
                }));
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessage,
          child: ListView(
            padding: const EdgeInsets.all(8),
            children: [
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) =>
                    context.bloc<SignInCubit>().changeEmail(value),
                validator: (_) =>
                    context.bloc<SignInCubit>().state.emailAdress.value.fold(
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
                    context.bloc<SignInCubit>().changePassword(value),
                validator: (_) {
                  final state = context.bloc<SignInCubit>().state;

                  if (state.password.value.isLeft()) {
                    return state.password.value.fold(
                        //beirzemy context bezpośrednio z Bloc a nie z builder
                        (f) => f.maybeMap(
                              shortPassword: (_) => 'Invalid Password',
                              orElse: () => null,
                            ),
                        (r) => null);
                  } else if (state.passwordConfirmed.value.isLeft()) {
                    return state.passwordConfirmed.value.fold(
                        (f) => f.maybeMap(
                              passwordsNotIdentical: (_) =>
                                  'Passwords are not identical',
                              orElse: () => 'null',
                            ),
                        (r) => null);
                  } else
                    return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock), labelText: 'Password'),
                autocorrect: false,
                obscureText: true,
              ),
              const SizedBox(height: 8),
              TextFormField(
                onChanged: (value) =>
                    context.bloc<SignInCubit>().changePasswordToCompare(value),
                validator: (_) {
                  final state = context.bloc<SignInCubit>().state;

                  if (state.passwordToCompare.value.isLeft()) {
                    return state.passwordToCompare.value.fold(
                        //beirzemy context bezpośrednio z Bloc a nie z builder
                        (f) => f.maybeMap(
                              shortPassword: (_) => 'Invalid Password',
                              orElse: () => null,
                            ),
                        (r) => null);
                  } else if (state.passwordConfirmed.value.isLeft()) {
                    return state.passwordConfirmed.value.fold(
                        (f) => f.maybeMap(
                              passwordsNotIdentical: (_) =>
                                  'Passwords are not identical',
                              orElse: () => 'null',
                            ),
                        (r) => null);
                  } else
                    return null;
                },
                decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),
                    labelText: 'Confirm Password'),
                autocorrect: false,
                obscureText: true,
              ),
              const SizedBox(height: 8),
              FlatButton(
                onPressed: () {
                  context.bloc<SignInCubit>().registerWithEmailAndPassword();
                },
                child: const Text('CREATE ACCOUNT'),
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
