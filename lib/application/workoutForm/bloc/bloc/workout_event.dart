part of 'workout_bloc.dart';

@freezed
abstract class WorkoutEvent with _$WorkoutEvent {
  const factory WorkoutEvent.createNewWorkout() = _WorkoutCreated;
  const factory WorkoutEvent.addExerciseToWorkout() = _AddExerciseToWorkout;
  const factory WorkoutEvent.workoutCompleted() = _WorkoutCompleted;
  const factory WorkoutEvent.deleteWorkout(String workoutId) = _DeleteWorkout;
  const factory WorkoutEvent.cancelWorkout() = _CancelWorkout;
  const factory WorkoutEvent.finishWorkout() = _FinishWorkout;
  const factory WorkoutEvent.createWorkout() = _CreateWorkout;
  const factory WorkoutEvent.changeTitle(String workoutTitle) = _ChangeTitle;
  const factory WorkoutEvent.updateWorkout() = _UpdateWorkout;
  const factory WorkoutEvent.addSeriesToExercise(int exerciseNumber) =
      _AddSeriesToExercise;
  const factory WorkoutEvent.clearState() = _ClearState;
  const factory WorkoutEvent.removeExerciseFromWorkout(int numberOfExercsie) =
      _RemoveExerciseFromWorkout;
  const factory WorkoutEvent.removeSeriesFromExercise(
      int exerciseNumber, int numberOfSeries) = _RemoveSeriesFromExercise;
  const factory WorkoutEvent.addWeightToSeries(
      int exerciseNumber, int seriesNumber, String weight) = _AddWeightToSeries;
  const factory WorkoutEvent.addRepsToSeries(
      int exerciseNumber, int seriesNumber, String reps) = _AddRepsToSeries;
  const factory WorkoutEvent.addExerciseName(
      String name, int numberOfExercise) = _AddExerciseName;
  const factory WorkoutEvent.changeWorkoutToUnsaved() = _ChangeWorkoutToUnsaved;
  const factory WorkoutEvent.editWorkout(Workout workout) = _EditWorkout;
  const factory WorkoutEvent.createNewWorkoutFromExistingOne(Workout workout) =
      _CreateNewWorkoutFromExistingOne;
  const factory WorkoutEvent.reorderExerciseInWorkout(
      int oldIndex, int newIndex) = _ReorderExerciseInWorkout;
}
