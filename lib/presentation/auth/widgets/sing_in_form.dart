import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:training_log/application/cubit/auth_cubit.dart';
import 'package:training_log/application/cubit/signIn/sign_in_cubit.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/auth/widgets/custom_text_form_field.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:auto_route/auto_route.dart';

class SignInFormWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccess!.fold(
          () => null,
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
            (_) async {
              await context.read<AuthCubit>().checkAuthentification();
              context.read<AuthCubit>().state.maybeMap(
                    authentificate: (_) {
                      context.read<SignInCubit>().resetSignInCubitState();
                      context.router.replace(WorkoutViewPageRoute());
                    },
                    orElse: () => null,
                  );
            },
          ),
        );
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
                validatorCallback: (_) =>
                    context.watch<SignInCubit>().state.emailAdress?.value.fold(
                        (failure) => failure.maybeMap(
                              orElse: () => null,
                              invalidEmail: (_) => 'invalid email',
                            ),
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
                              shortPassword: (_) => 'invalid password',
                            ), //TODO - add more password combination
                        (r) => null),
              ),
              SizedBox(
                height: 5.h,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<SignInCubit>(context)
                        .signInWithEmailAndPassword();
                  },
                  child: Text(
                    'Sign in',
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
              SizedBox(
                height: 5.h,
                width: double.infinity,
                child: TextButton(
                  style: ButtonStyle(
                    overlayColor: MaterialStateProperty.resolveWith<Color>(
                      (Set<MaterialState> states) {
                        return Colors.transparent;
                      },
                    ),
                  ),
                  onPressed: () {
                    context.router.push(RegisterNewUserPageRoute());
                  },
                  child: Text(
                    //TODO - add posibility to register new user
                    'No account? Register',
                    style: TextStyle(fontSize: 12.sp),
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
