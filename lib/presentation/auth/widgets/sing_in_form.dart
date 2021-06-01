import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/cubit/signIn/sign_in_cubit.dart';

class SignInFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccess!.fold(
            () => null,
            (a) => a.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          failure.map(
                              cancelledByUser: (_) => 'Cancel',
                              serverError: (_) => 'Server Error',
                              invalidEmailAndPasswordCombinaion: (_) =>
                                  'Invalid email and pasword combination',
                              emailAlreadiInUse: (_) => 'Email already in use'),
                        ),
                      ),
                    ),
                (_) => null));
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessage!
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              TextFormField(
                onChanged: (value) =>
                    BlocProvider.of<SignInCubit>(context).changeEmail(value),
                validator: (_) =>
                    context.watch()<SignInCubit>().state.emailAdress.value.fold(
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
              TextFormField(
                onChanged: (value) =>
                    BlocProvider.of<SignInCubit>(context).changePassword(value),
                validator: (_) =>
                    context.watch()<SignInCubit>().state.password.value.fold(
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
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SignInCubit>(context)
                        .signInWithEmailAndPassword();
                  },
                  child: const Text('SIGN IN'),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
