import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:training_log/domain/exercise/exercise.dart';
import 'package:training_log/domain/series/series.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/domain/workout/workout_failure.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  final IWorkoutFacade iWorkoutFacade;

  WorkoutBloc(this.iWorkoutFacade) : super(WorkoutState.initial());

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    yield* event.map(
      createNewWorkout: (_) async* {
        yield state.copyWith(
          workout: Workout.newWorkout(),
          isEditing: true,
          isCreated: false,
          isCanceled: false,
          isDeleted: false,
          showErrorMessagesForExerciseName: List<bool>(),
        );
      },
      editWorkout: (e) async* {
        final showErrorMessagesForExerciseNameList = state.workout.exercieList
            .map((e) => !e.exerciseName.isValid())
            .toList();
        yield state.copyWith(
          workout: e.workout,
          isEditing: true,
          isCreated: false,
          isCanceled: false,
          isDeleted: false,
          showErrorMessagesForExerciseName:
              showErrorMessagesForExerciseNameList,
        );
      },
      createNewWorkoutFromExistingOne: (e) async* {
        final showErrorMessagesForExerciseNameList = state.workout.exercieList
            .map((e) => !e.exerciseName.isValid())
            .toList();
        yield state.copyWith(
          workout: Workout.fromExistingOne(e.workout),
          isEditing: true,
          isCreated: false,
          isCanceled: false,
          isDeleted: false,
          showErrorMessagesForExerciseName:
              showErrorMessagesForExerciseNameList,
        );
      },
      addExerciseToWorkout: (_) async* {
        List<bool> showErrorMessagesForExerciseNameList = state
            .workout.exercieList
            .map((e) => !e.exerciseName.isValid())
            .toList();
        // List<bool> showErrorMessagesForExerciseName =
        //     state.showErrorMessagesForExerciseName;
        showErrorMessagesForExerciseNameList.add(false);
        List<Exercise> exercieList = state.workout.exercieList;
        exercieList.add(Exercise.newExercise());

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exercieList),
          refreshState: !state.refreshState,
          showErrorMessagesForExerciseName:
              showErrorMessagesForExerciseNameList,
        );
      },
      workoutCompleted: (_) async* {},
      cancelWorkout: (_) async* {
        yield state.copyWith(
          // workout: Workout.empty(),
          isCanceled: true,
          isEditing: false,
          isCreated: false,
          // showErrorMessagesForExerciseName: List<bool>(),
        );
      },
      createWorkout: (e) async* {
        final isExerciseNameValid = !state.workout.exercieList
            .map((e) => e.exerciseName.isValid())
            .any((element) => element == false);

        if (!isExerciseNameValid) {
          final showErrorMessagesForExerciseNameList = state.workout.exercieList
              .map((e) => !e.exerciseName.isValid())
              .toList();

          yield state.copyWith(
            showErrorMessagesForExerciseName:
                showErrorMessagesForExerciseNameList,
            isEditing: true,
            isCreated: false,
            isCanceled: false,
          );
        } else {
          print("Active isSaved");
          yield state.copyWith(
            isCreated: true,
            isUpdated: true,
          );
          await iWorkoutFacade.createWorkout(workout: state.workout);
        }
      },
      addSeriesToExercise: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList.add(Series.newSeries());

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
          refreshState: !state.refreshState,
        );
      },
      removeExerciseFromWorkout: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList.removeAt(e.numberOfExercsie);
        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
          refreshState: !state.refreshState,
        );
      },
      addExerciseName: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.numberOfExercise] = exerciseList[e.numberOfExercise]
            .copyWith(exerciseName: ExerciseName(e.name));

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      removeSeriesFromExercise: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList.removeAt(e.numberOfSeries);

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
          refreshState: !state.refreshState,
        );
      },
      addRepsToSeries: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList[e.seriesNumber] =
            exerciseList[e.exerciseNumber].setsList[e.seriesNumber].copyWith(
                  reps: e.reps,
                );

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      addWeightToSeries: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList[e.seriesNumber] =
            exerciseList[e.exerciseNumber]
                .setsList[e.seriesNumber]
                .copyWith(result: e.weight);

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      deleteWorkout: (e) async* {
        iWorkoutFacade.removeWorkout(workoutId: e.workoutId);
        yield state.copyWith(
            isDeleted: true, isCanceled: false, isCreated: false);
      },
      changeWorkoutToUnsaved: (_) async* {
        yield state.copyWith(
          isUpdated: false,
        );
      },
      updateWorkout: (e) async* {
        print('update workout');
        print(state.workout);
        await iWorkoutFacade.update(workout: state.workout);
      },
      changeTitle: (e) async* {
        yield state.copyWith(
          workout: state.workout.copyWith(title: Title(e.workoutTitle)),
        );
      },
      clearState: (_) async* {
        yield state.copyWith(
          isEditing: false,
          isCreated: false,
          isCanceled: false,
          isDeleted: false,
          isUpdated: false,
          refreshState: false,
        );
      },
      finishWorkout: (_) async* {
        yield state.copyWith(
          isEditing: false,
          isCreated: false,
          isCanceled: false,
          isDeleted: false,
          isUpdated: false,
          // refreshState: !state.refreshState,
        );
      },
    );
  }
}
