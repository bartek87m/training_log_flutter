part of 'workout_bloc.dart';

@freezed
abstract class WorkoutState with _$WorkoutState {
  const factory WorkoutState({
    @required Workout workout,
    @required bool showErrorMessages,
    @required bool isEditing,
    @required bool isSaved,
    @required Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption,
  }) = _WorkoutState;

  factory WorkoutState.initial() => WorkoutState(
        workout: Workout.empty(),
        showErrorMessages: false,
        isEditing: false,
        isSaved: false,
        saveFailureOrSuccessOption: none(),
      );
}
