import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/training/widgets/exerciseWidget.dart';
import 'package:training_log/presentation/training/widgets/workoutTitleWidget.dart';

class EditHistoricalWorkoutPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WorkoutBloc, WorkoutState>(
        listener: (BuildContext context, state) {
      if (state.isCanceled == true || state.isEditing == false) {
        ExtendedNavigator.of(context).pop();
      }
    }, builder: (context, state) {
      return Scaffold(
        resizeToAvoidBottomPadding: true,
        body: SingleChildScrollView(
            child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 15),
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 1),
              child: WorkoutTitleWidget(),
            ),
            Container(
              child: Column(
                children: state.workout.exercieList != null
                    ? <Widget>[
                        for (var exerciseNumber = 0;
                            exerciseNumber < state.workout.exercieList.length;
                            exerciseNumber++)
                          Container(
                            child: ExerciseWidget(
                              exerciseNumber,
                              key: UniqueKey(),
                            ),
                          )
                      ]
                    : <Widget>[Container()],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                FlatButton(
                  onPressed: () {
                    context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.updateWorkout());
                    context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.finishWorkout());
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
                    context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.cancelWorkout());
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
        )),
      );
    });
  }
}
