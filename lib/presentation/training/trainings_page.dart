import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/create_new_workout.dart';

class TrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: EdgeInsets.all(2),
            child: GestureDetector(
              child: Icon(Icons.logout),
              onTap: () => BlocProvider.of<AuthCubit>(context).signOut(),
            ),
          )
        ],
      ),
      body: Container(
        child: BlocListener<AuthCubit, AuthState>(
            listener: (context, state) {
              state.map(
                  initial: (_) {},
                  authentificate: (_) {},
                  unauthentificate: (_) {
                    ExtendedNavigator.of(context).replace(Routes.signInPage);
                  });
            },
            // child: CreateNewWorkout(),
            child: Container()),
      ),
    );
  }
}
