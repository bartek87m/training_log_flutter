import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class WorkoutTitleWidget extends StatelessWidget {
  final state;

  WorkoutTitleWidget(this.state);

  @override
  Widget build(BuildContext context) {
    print('Build');
    return Container(
      child: TextFormField(
        // onTap: () => print("Editing complete"),
        onChanged: (value) =>
            context.read<WorkoutBloc>().add(WorkoutEvent.changeTitle(value)),
        initialValue: state.workout.title.value.fold((l) => null, (r) => r),
        decoration: InputDecoration(
          counter: Offstage(),
          border: InputBorder.none,
          focusedBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
          errorBorder: InputBorder.none,
          disabledBorder: InputBorder.none,
          contentPadding: const EdgeInsets.only(bottom: 0),
        ),
        maxLines: 1,
        maxLength: 50,
        maxLengthEnforced: true,
      ),
    );
  }
}
