import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class WorkoutTitleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5, right: 5),
      child: TextFormField(
        onChanged: (value) {
          context
              .read<WorkoutBloc>()
              .add(WorkoutEvent.changeTitle(value.trim()));
          context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout());
        },
        // controller: myController,
        initialValue:
            context.watch<WorkoutBloc>().state.workout.title.getOrCrash(),

        decoration: InputDecoration(
          counter: Offstage(),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 0),
        ),
        // autofocus: false,
        // focusNode: fn,
        // focusNode: fn,
        maxLines: 1,
        maxLength: 50,
        maxLengthEnforced: true,
      ),
    );
  }
}
