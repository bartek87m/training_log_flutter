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
          isSaved: false,
          isCanceled: false,
          isDeleted: false,
          showErrorMessagesForExerciseName: List<bool>(),
        );
      },
      addExerciseToWorkout: (_) async* {
        state.showErrorMessagesForExerciseName.add(false);
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList.add(Exercise.newExercise());
        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      workoutCompleted: (_) async* {},
      cancelWorkout: (_) async* {
        yield state.copyWith(
          // workout: Workout.empty(),
          isCanceled: true,
          isEditing: false,
          isSaved: false,
          // showErrorMessagesForExerciseName: List<bool>(),
        );
      },
      saveWorkout: (e) async* {
        // state.showErrorMessagesForExerciseName.clear();
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
            isSaved: false,
            isCanceled: false,
          );
        } else {
          yield state.copyWith(
            isSaved: true,
          );
          iWorkoutFacade.createWorkout(workout: state.workout);
        }
      },
      changeTitle: (e) async* {
        // yield state.copyWith(
        //   workout: state.workout.copyWith(title: Title(e.inputStr)),
        // );
        // print(state);
      },
      addSeriesToExercise: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList.add(Series.newSeries());

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      removeExerciseFromWorkout: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList.removeAt(e.numberOfExercsie);
        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
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
            isDeleted: true, isCanceled: false, isSaved: false);
      },
      clearState: (_) async* {
        yield state.copyWith(
            workout: Workout.empty(),
            showErrorMessagesForExerciseName: List<bool>(),
            isEditing: false,
            isSaved: false,
            isCanceled: false,
            isDeleted: false,
            saveFailureOrSuccessOption: none());
      },
    );
  }
}
