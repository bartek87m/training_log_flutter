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
        );
      },
      addExerciseToWorkout: (_) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList.add(
            Exercise(exerciseName: ExerciseName(''), setsList: List<Series>()));
        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      workoutCompleted: (_) async* {},
      cancelWorkout: (_) async* {
        yield state.copyWith(
          workout: Workout.empty(),
          isEditing: false,
        );
      },
      finishWorkout: (_) async* {
        iWorkoutFacade.createWorkout(workout: state.workout);

        yield state.copyWith(
          isSaved: true,
          isEditing: false,
        );
      },
      changeTitle: (e) async* {
        yield state.copyWith(
          workout: state.workout.copyWith(title: Title(e.inputStr)),
        );
      },
      addSeriesToExercise: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList.add(Series());

        yield state.copyWith(
            workout: state.workout.copyWith(exercieList: exerciseList));
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
            workout: state.workout.copyWith(exercieList: exerciseList));
      },
      removeSeriesFromExercise: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList.removeAt(e.numberOfSeries);

        yield state.copyWith(
            workout: state.workout.copyWith(exercieList: exerciseList));
      },
      addRepsToSeries: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList[e.seriesNumber] =
            exerciseList[e.exerciseNumber]
                .setsList[e.seriesNumber]
                .copyWith(reps: e.reps);

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
      },
      addWeightToSeries: (e) async* {
        List<Exercise> exerciseList = state.workout.exercieList;
        exerciseList[e.exerciseNumber].setsList[e.seriesNumber] =
            exerciseList[e.exerciseNumber]
                .setsList[e.seriesNumber]
                .copyWith(weight: e.weight);

        yield state.copyWith(
          workout: state.workout.copyWith(exercieList: exerciseList),
        );
        print(state.workout);
      },
      deleteWorkout: (e) async* {
        print("deleted workout");
        iWorkoutFacade.removeWorkout(workoutId: e.workoutId);
      },
    );
  }
}
