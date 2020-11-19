import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:dartz/dartz.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/domain/workout/workout_failure.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

@injectable
class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  // final IWorkoutFacade iTrainingFacade;

  WorkoutBloc() : super(WorkoutState.initial());

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
      addExerciseToWorkout: (_) async* {},
      workoutCompleted: (_) async* {},
      cancelWorkout: (_) async* {
        yield state.copyWith(
          workout: Workout.empty(),
          isEditing: false,
        );
      },
      finishWorkout: (_) async* {
        final isTitleValid = state.workout.title.isValid();

        yield state.copyWith(
          isSaving: true,
          isEditing: false,
        );
      },
      changeTitle: (e) async* {
        yield state.copyWith(
          workout: state.workout.copyWith(title: Title(e.inputStr)),
        );
        print(state.workout.title);
      },
    );
  }
}
