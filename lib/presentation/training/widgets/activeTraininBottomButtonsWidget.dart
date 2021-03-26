import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

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
            ExtendedNavigator.of(context).popAndPush(Routes.trainingsPage);
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
            ExtendedNavigator.of(context).popAndPush(Routes.trainingsPage);
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
