import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/routes/router.gr.dart';

class CreateNewWorkout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topCenter,
      child: FlatButton(
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onPressed: () {
          context.read<WorkoutBloc>().add(WorkoutEvent.createNewWorkout());
          ExtendedNavigator.of(context).replace(Routes.activeTrainingPage);
        },
        child: Text('CREATE NEW WORKOUT'),
      ),
    );
  }
}
