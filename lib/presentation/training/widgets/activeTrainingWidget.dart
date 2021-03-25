import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/presentation/training/widgets/activeTraininBottomButtonsWidget.dart';
import 'package:training_log/presentation/training/widgets/exerciseWidget.dart';
import 'package:training_log/presentation/training/widgets/workoutTitleWidget.dart';

class ActiveTraining extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          WorkoutTitleWidget(),
          BlocConsumer<WorkoutBloc, WorkoutState>(
            listener: (context, state) {},
            buildWhen: (prevState, currentState) {
              return prevState.workout.exercieList.length !=
                  currentState.workout.exercieList.length;
            },
            builder: (context, state) {
              print(state.showErrorMessagesForExerciseName);
              return ListView.builder(
                shrinkWrap: true,
                itemCount: state.workout.exercieList.length,
                itemBuilder: (context, index) {
                  return ExerciseWidget(index);
                },
              );
            },
          ),
          ActiveTrainingBottomButtonsWidget(),
        ],
      ),
    );
  }
}
