import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:dartz/dartz.dart';
import 'package:training_log/domain/workout/workout_failure.dart';

part 'workout_event.dart';
part 'workout_state.dart';
part 'workout_bloc.freezed.dart';

class WorkoutBloc extends Bloc<WorkoutEvent, WorkoutState> {
  WorkoutBloc() : super(WorkoutState.initial());

  @override
  Stream<WorkoutState> mapEventToState(
    WorkoutEvent event,
  ) async* {
    yield* event.map(
        createNewWorkout: (_) async* {
          print('create workout');
        },
        addExerciseToWorkout: null,
        workoutCompleted: null);
  }
}
