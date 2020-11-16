part of 'workout_bloc.dart';

@freezed
abstract class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.createNewWorkout() = _WorkoutCreated;
  const factory WorkoutEvent.addExerciseToWorkout() = _AddExerciseToWorkout;
  const factory WorkoutEvent.workoutCompleted() = _WorkoutCompleted;
}
