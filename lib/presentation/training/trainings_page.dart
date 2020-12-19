import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/createNewWorkout.dart';
import 'package:training_log/presentation/training/widgets/workoutsViewsWidget.dart';

class TrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AuthCubit, AuthState>(
          listener: (context, state) {
            state.map(
                initial: (_) {},
                authentificate: (_) {},
                unauthentificate: (_) {
                  ExtendedNavigator.of(context).replace(Routes.signInPage);
                });
          },
        ),
        BlocListener<WorkoutBloc, WorkoutState>(
          listener: (context, state) {
            if (state.isEditing == true) {
              ExtendedNavigator.of(context).replace(Routes.activeTrainingPage);
            }
          },
        )
      ],
      child: BlocBuilder<AuthCubit, AuthState>(
        builder: (context, state) {
          return Scaffold(
              appBar: AppBar(
                actions: [
                  Padding(
                    padding: EdgeInsets.all(2),
                    child: GestureDetector(
                      child: Icon(Icons.logout),
                      onTap: () => context.read<AuthCubit>().signOut(),
                    ),
                  )
                ],
              ),
              body: Column(
                children: [
                  CreateNewWorkout(),
                  WorkoutsViewsWidget(),
                ],
              ));
        },
      ),
    );
  }
}
