part of 'workout_bloc.dart';

@freezed
abstract class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.createNewWorkout() = _WorkoutCreated;
  const factory WorkoutEvent.addExerciseToWorkout() = _AddExerciseToWorkout;
  const factory WorkoutEvent.workoutCompleted() = _WorkoutCompleted;
  const factory WorkoutEvent.cancelWorkout() = _CancelWorkout;
  const factory WorkoutEvent.finishWorkout() = _FinishWorkout;
  const factory WorkoutEvent.changeTitle(String inputStr) = _ChangeTitle;
  const factory WorkoutEvent.addSeriesToExercise(int exerciseNumber) =
      _AddSeriesToExercise;
  const factory WorkoutEvent.removeExerciseFromWorkout(int numberOfExercsie) =
      _RemoveExerciseFromWorkout;
  const factory WorkoutEvent.addExerciseName(
      String name, int numberOfExercise) = _AddExerciseName;
}
