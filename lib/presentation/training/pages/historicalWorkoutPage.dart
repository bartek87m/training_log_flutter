import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/bloc/bloc/workout_bloc.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/presentation/routes/router.gr.dart';
import 'package:training_log/presentation/training/widgets/historicalExerciseWidget.dart';

class HistoricalWorkoutPage extends StatelessWidget {
  final Workout workout;

  HistoricalWorkoutPage(this.workout);

  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context).size;
    final textFieldHeight = (mediaQuery.height * 0.035);
    final textFieldWidth = (mediaQuery.width * 0.25);
    const leftPadding = 10.0;

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            GestureDetector(
              child: Icon(Icons.arrow_back),
              onTap: () => ExtendedNavigator.of(context)
                  .popAndPush(Routes.trainingsPage),
            ),
          ],
        ),
        actions: [
          GestureDetector(
            child: Container(
              alignment: Alignment.center,
              margin: const EdgeInsets.only(right: 20),
              child: Text(
                "New Workout",
                style: TextStyle(fontSize: 16),
              ),
            ),
            onTap: () {
              context.read<WorkoutBloc>().add(
                  WorkoutEvent.createNewWorkoutFromExistingOne(this.workout));
              context.read<WorkoutBloc>().add(WorkoutEvent.createWorkout());
              ExtendedNavigator.of(context)
                  .push(Routes.editHistoricalWorkoutPage);
            },
          ),
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              child: Icon(Icons.edit),
            ),
            onTap: () {
              context
                  .read<WorkoutBloc>()
                  .add(WorkoutEvent.editWorkout(this.workout));
              ExtendedNavigator.of(context)
                  .push(Routes.editHistoricalWorkoutPage);
            },
          ),
          GestureDetector(
            child: Container(
              margin: const EdgeInsets.only(right: 10),
              child: Icon(Icons.delete),
            ),
            onTap: () => {
              context.read<WorkoutBloc>().add(
                  WorkoutEvent.deleteWorkout(this.workout.id.getOrCrash())),
            },
          ),
        ],
      ),
      body: BlocConsumer<WorkoutBloc, WorkoutState>(listener: (context, state) {
        if (state.isDeleted == true)
          ExtendedNavigator.of(context).replace(Routes.trainingsPage);
      }, builder: (context, state) {
        return Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: leftPadding),
                alignment: Alignment.centerLeft,
                child: Text(
                  "${this.workout.title.getOrCrash()}",
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
            Expanded(
              flex: 18,
              child: Container(
                alignment: Alignment.center,
                child: ReorderableListView(
                    children: state.workout.exercieList.map((exercise) {
                      return Container(
                        height: 60.0 + (exercise.setsList.length + 1) * 32,
                        key: UniqueKey(),
                        child: HistoricalExerciseWidget(
                          leftPadding: leftPadding,
                          textFieldHeight: textFieldHeight,
                          textFieldWidth: textFieldWidth,
                          exercise: exercise,
                        ),
                      );
                    }).toList(),
                    onReorder: (newIndex, oldIndex) => context
                        .read<WorkoutBloc>()
                        .add(WorkoutEvent.reorderExerciseInWorkout(
                            newIndex, oldIndex))),
              ),
            ),
          ],
        );
      }),
    );
  }
}
