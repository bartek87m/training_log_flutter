import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/cubit/signIn/sign_in_cubit.dart';

class SignInWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInCubit, SignInFromState>(
      listener: (context, state) {
        state.authFailureOrSuccess!
            .fold(() => null, (a) => a.fold((failure) => null, (_) => null));
      },
      builder: (context, state) {
        return Container();
      },
    );
  }
}
