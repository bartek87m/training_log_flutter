import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class ActiveTrainingPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (BuildContext context, state) {
      if (state.isEditing == false) {
        ExtendedNavigator.of(context).replace(Routes.trainingsPage);
      }
    }, builder: (context, state) {
      return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.only(top: 10),
                padding: const EdgeInsets.all(12.0),
                child: TextFormField(
                  initialValue: state.workout.title.toString(),
                  maxLines: 1,
                ),
              ),
              Column(
                children: [
                  FlatButton(
                    onPressed: () => context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.finishWorkout()),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: const Text(
                      'Finish Workout',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ),
                  FlatButton(
                    onPressed: () => context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.cancelWorkout()),
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: const Text(
                      'Cancel Workout',
                      style: TextStyle(color: Colors.redAccent),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      );
    });
  }
}
