part of 'workoutform_cubit.dart';

@freezed
abstract class WorkoutformState with _$WorkoutformState {
  const factory WorkoutformState({
    @required UniqueId? id,
    @required Title? title,
    @required DateTime? workoutDate,
    @required List<Exercise>? exercieList,
    // @required List<Wod> wodList,
    DateTime? updateDate,
  }) = _WorkoutformState;

  const factory WorkoutformState.initial() = _Initial;
}
