import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:kt_dart/kt.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/exercise/exercise.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/exerciseWidget.dart';

class ActiveTrainingPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final list = useState(List<Exercise>.empty());

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
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 10),
                    padding: const EdgeInsets.all(12.0),
                    child: TextFormField(
                      onChanged: (value) => context
                          .read<WorkoutBloc>()
                          .add(WorkoutEvent.changeTitle(value)),
                      initialValue:
                          state.workout.title.value.fold((l) => null, (r) => r),
                      maxLines: 1,
                      maxLength: 50,
                      maxLengthEnforced: true,
                    ),
                  ),
                  Column(
                    children: list.value.isNotEmpty
                        ? <Widget>[
                            for (var exercise in list.value) ExerciseWidget()
                          ]
                        : <Widget>[],
                  ), //column do exercises
                  FlatButton(
                    onPressed: () => {
                      list.value = List<Exercise>.empty(),
                      context
                          .read<WorkoutBloc>()
                          .add(WorkoutEvent.addExerciseToWorkout()),
                      list.value = state.workout.exercieList,
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: const Text('Add Exercise'),
                  ),
                ],
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
