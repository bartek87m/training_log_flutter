import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class ActiveTrainingBottomButtonsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        TextButton(
          onPressed: () {
            context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout());
            context.read<WorkoutBloc>().add(WorkoutEvent.finishWorkout());
          },
       
          child: const Text(
            'Finish Workout',
            style: TextStyle(color: Colors.blue),
          ),
        ),
        TextButton(
          onPressed: () {
            context
                .read<WorkoutBloc>()
                .add(WorkoutEvent.addExerciseToWorkout());
          },
       
          child: const Text('Add Exercise'),
        ),
        TextButton(
          onPressed: () {
            var id = context.read<WorkoutBloc>().state.workout.id.getOrCrash();
            context.read<WorkoutBloc>().add(WorkoutEvent.cancelWorkout());
            context.read<WorkoutBloc>().add(WorkoutEvent.deleteWorkout(id));
          },

          child: const Text(
            'Cancel Workout',
            style: TextStyle(color: Colors.redAccent),
          ),
        ),
      ],
    );
  }
}
