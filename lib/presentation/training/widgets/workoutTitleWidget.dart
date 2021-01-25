import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class WorkoutTitleWidget extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final enableEditing = useState(false);
    return GestureDetector(
      onTap: () => enableEditing.value = true,
      child: Container(
        child: TextFormField(
          onChanged: (value) {
            context
                .read<WorkoutBloc>()
                .add(WorkoutEvent.changeTitle(value.trim()));
            context.read<WorkoutBloc>().add(WorkoutEvent.updateWorkout());
          },
          initialValue:
              context.watch<WorkoutBloc>().state.workout.title.value.fold(
                    (l) => null,
                    (r) => r,
                  ),
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
          enabled: enableEditing.value,
          maxLines: 1,
          maxLength: 50,
          maxLengthEnforced: true,
        ),
      ),
    );
  }
}
