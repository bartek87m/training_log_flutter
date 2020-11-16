import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';

class CreateNewWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WorkoutBloc, WorkoutState>(
      builder: (context, state) {
        return Container(
            child: FlatButton(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onPressed: () => {
                      BlocProvider.of<WorkoutBloc>(context)
                          .add(WorkoutEvent.createNewWorkout())
                    },
                child: Text('CREATE NEW WORKOUT')));
      },
    );
  }
}
