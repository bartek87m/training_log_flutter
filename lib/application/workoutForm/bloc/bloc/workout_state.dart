part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    @required Workout workout,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isCanceled,
    @required bool isSaved,
    @required bool isDeleted,
    @required Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
        workout: Workout.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaved: false,
        isCanceled: false,
        isDeleted: false,
        saveFailureOrSuccessOption: none(),
      );
}
