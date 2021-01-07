part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    @required Workout workout,
    @required List<bool> showErrorMessagesForExerciseName,
    @required bool isEditing,
    @required bool isCanceled,
    @required bool isCreated,
    @required bool isUpdated,
    @required bool isDeleted,
    @required bool refreshState,
    @required Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
        workout: Workout.empty(),
        showErrorMessagesForExerciseName: List<bool>(),
        isEditing: false,
        isCreated: false,
        isCanceled: false,
        isDeleted: false,
        isUpdated: false,
        refreshState: false,
        saveFailureOrSuccessOption: none(),
      );
}
