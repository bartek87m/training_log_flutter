import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:training_log/domain/workout/workout_failure.dart';

abstract class IWorkoutFacade {
  // Future<void> createNewWorkout({@required Workout workout});

  Future<Either<WorkoutFailure, Unit>> addExerciseToWorkout(
      {@required String workoutId, @required String exerciseName});

  Future<Either<WorkoutFailure, Unit>> removeExerciseFromWorkout(
      {@required String exerciseId});
}
