import 'package:auto_route/auto_route.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/auth/auth_cubit.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/application/workoutWatcher/workoutwatcher_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/createNewWorkout.dart';
import 'package:training_log/presentation/training/widgets/workoutsViewsWidget.dart';

import '../../injection.dart';

class TrainingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<WorkoutwatcherBloc>(
          create: (context) => getIt<WorkoutwatcherBloc>()
            ..add(WorkoutwatcherEvent.downloadWorkouts()),
        ),
      ],
      child: MultiBlocListener(
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
              print(state);
              if (state.isEditing == true) {
                print("isEditing");
                ExtendedNavigator.of(context)
                    .replace(Routes.activeTrainingPage);
              }
              if (state.isCanceled == true) {
                ExtendedNavigator.of(context).replace(Routes.trainingsPage);
              }
              if (state.isSaved == true) {
                FlushbarHelper.createSuccess(
                  message: "Workout saved",
                  duration: Duration(seconds: 2),
                ).show(context);
              }
            },
          ),
        ],
        child: Scaffold(
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
          ),
        ),
      ),
    );
  }
}
