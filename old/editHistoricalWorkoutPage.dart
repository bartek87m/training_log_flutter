import 'dart:html';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/workoutTitleWidget.dart';

class EditHistoricalWorkoutPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final workout = useState(context.watch<WorkoutBloc>().state.workout);

    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 15),
            padding:
                const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 1),
            child: WorkoutTitleWidget(),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: workout.value.exercieList.length,
              itemBuilder: (context, int index) {
                return Container();
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: () {
                  context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout());
                  context.read<WorkoutBloc>().add(WorkoutEvent.finishWorkout());
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text(
                  'Save Workout',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton(
                onPressed: () => {
                  context
                      .read<WorkoutBloc>()
                      .add(WorkoutEvent.addExerciseToWorkout()),
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text('Add Exercise'),
              ),
              FlatButton(
                onPressed: () {
                  ExtendedNavigator.of(context)
                      .popAndPush(Routes.trainingsPage);
                  context.read<WorkoutBloc>().add(WorkoutEvent.cancelWorkout());
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text(
                  'Cancel',
                  style: TextStyle(color: Colors.redAccent),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
