part of 'activeseries_cubit.dart';

@freezed
class ActiveseriesState with _$ActiveseriesState {
  const factory ActiveseriesState({
    @required Exercise? exercise,
    @required Series? activeSeries,
    @required int? activeSeriesNumber,
  }) = _ActiveseriesState;

  factory ActiveseriesState.initial() => ActiveseriesState(
        exercise: Exercise(exerciseName: ExerciseName(''), setsList: []),
        activeSeries: Series.newSeries(),
        activeSeriesNumber: 0,
      );
}
