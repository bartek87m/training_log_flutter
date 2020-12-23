part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    @required Workout workout,
    @required List<bool> showErrorMessagesForExerciseName,
    @required List<bool> showErrorMessagesForSeries,
    @required List<bool> showErrorMessagesForResults,
    @required bool isEditing,
    @required bool isCanceled,
    @required bool isSaved,
    @required bool isDeleted,
    @required Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
        workout: Workout.empty(),
        showErrorMessagesForExerciseName: List<bool>(),
        showErrorMessagesForSeries: List<bool>(),
        showErrorMessagesForResults: List<bool>(),
        isEditing: false,
        isSaved: false,
        isCanceled: false,
        isDeleted: false,
        saveFailureOrSuccessOption: none(),
      );
}
