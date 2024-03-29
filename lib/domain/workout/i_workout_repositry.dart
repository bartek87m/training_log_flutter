import 'package:fpdart/fpdart.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/domain/workout/workout_failure.dart';

abstract class IWorkoutFacade {
  Future<Either<WorkoutFailure, Unit>> createWorkout({Workout workout});
  Future<Either<WorkoutFailure, Unit>> update({Workout workout});
  Future<Either<WorkoutFailure, Unit>> removeWorkout({String workoutId});
  Stream<Either<WorkoutFailure, List<Workout>>> watchAll();
  Stream<Either<WorkoutFailure, List<Workout>>> watchForCertainAmount(
      int amount);
}
