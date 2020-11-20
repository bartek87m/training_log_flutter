part of 'workout_bloc.dart';

@freezed
abstract class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.createNewWorkout() = _WorkoutCreated;
  const factory WorkoutEvent.addExerciseToWorkout() = _AddExerciseToWorkout;
  const factory WorkoutEvent.workoutCompleted() = _WorkoutCompleted;
  const factory WorkoutEvent.cancelWorkout() = _CancelWorkout;
  const factory WorkoutEvent.finishWorkout() = _FinishWorkout;
  const factory WorkoutEvent.changeTitle(String inputStr) = _ChangeTitle;
  const factory WorkoutEvent.addSeriesToExercise(String inputStr) =
      _AddSeriesToExercise;
}
