import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class ActiveTraining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BlocBuilder<WorkoutBloc, WorkoutState>(
            buildWhen: (prevState, state) {
              return true;
            },
            builder: (context, state) {
              print(state);
              return Container();
            },
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              FlatButton(
                onPressed: () {
                  // context
                  //     .read<WorkoutBloc>()
                  //     .add(WorkoutEvent.updateWorkout());
                  // context
                  //     .read<WorkoutBloc>()
                  //     .add(WorkoutEvent.finishWorkout());
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text(
                  'Finish Workout',
                  style: TextStyle(color: Colors.blue),
                ),
              ),
              FlatButton(
                onPressed: () {
                  context
                      .read<WorkoutBloc>()
                      .add(WorkoutEvent.addExerciseToWorkout());
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text('Add Exercise'),
              ),
              FlatButton(
                onPressed: () {
                  // var id = context
                  //     .read<WorkoutBloc>()
                  //     .state
                  //     .workout
                  //     .id
                  //     .getOrCrash();
                  // context
                  //     .read<WorkoutBloc>()
                  //     .add(WorkoutEvent.cancelWorkout());
                  // context
                  //     .read<WorkoutBloc>()
                  //     .add(WorkoutEvent.deleteWorkout(id));
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                child: const Text(
                  'Cancel Workout',
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
