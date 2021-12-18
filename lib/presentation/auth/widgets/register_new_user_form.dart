import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';

import 'package:sizer/sizer.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/auth/signIn/sign_in_cubit.dart';
import 'package:training_log/presentation/auth/widgets/custom_text_form_field.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class RegisterNewUserForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccess!.match(
            (a) => a.fold(
                  (failure) => {
                    showTopSnackBar(
                      context,
                      CustomSnackBar.error(
                        message: failure.map(
                            cancelledByUser: (_) => 'Cancel',
                            serverError: (_) => 'Server Error',
                            invalidEmailAndPasswordCombinaion: (_) =>
                                'Invalid email and pasword combination',
                            emailAlreadiInUse: (_) => 'Email already in use'),
                      ),
                    ),
                  },
                  (_) => {
                    context.read<AuthCubit>().checkAuthentification(),
                    context.read<AuthCubit>().state.maybeMap(
                          authentificate: (_) {
                            context.router.replace(WorkoutsViewPageRoute());
                          },
                          orElse: () => null,
                        )
                  },
                ),
            () => none());
      },
      builder: (context, state) {
        return Form(
          autovalidateMode: state.showErrorMessage!
              ? AutovalidateMode.always
              : AutovalidateMode.disabled,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomTextFormField(
                labelText: 'Email',
                callback: (value) =>
                    BlocProvider.of<SignInCubit>(context).changeEmail(value),
                validatorCallback: (_) => context
                    .watch<SignInCubit>()
                    .state
                    .emailAdress
                    ?.value
                    .fold(
                        (failure) => failure.maybeMap(
                            orElse: () => null,
                            invalidEmail: (_) => 'invalid email'),
                        (r) => null),
              ),
              CustomTextFormField(
                labelText: 'Password',
                obscureText: true,
                callback: (value) =>
                    BlocProvider.of<SignInCubit>(context).changePassword(value),
                validatorCallback: (_) =>
                    context.watch<SignInCubit>().state.password?.value.fold(
                        (failure) => failure.maybeMap(
                              orElse: () => null,
                              shortPassword: (_) => 'Invalid Password',
                            ), //TODO - add more password combination
                        (r) => null),
              ),
              CustomTextFormField(
                labelText: 'Confirm Password',
                obscureText: true,
                callback: (value) => BlocProvider.of<SignInCubit>(context)
                    .changePasswordToCompare(value),
                validatorCallback: (_) => context
                    .watch<SignInCubit>()
                    .state
                    .passwordConfirmed
                    ?.value
                    .fold(
                        (failure) => failure.maybeMap(
                              orElse: () => null,
                              passwordsNotIdentical: (_) =>
                                  'Passwords are not identical',
                            ), //TODO - add more password combination
                        (r) => null),
              ),
              SizedBox(
                height: 5.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SignInCubit>(context)
                        .registerWithEmailAndPassword();
                  },
                  child: Text(
                    'Create User',
                    style: TextStyle(fontSize: 12.sp),
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(16),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
