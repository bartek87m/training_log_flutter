import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/series/series.dart';
import 'package:training_log/domain/workout/value_objects.dart';

part 'activeseries_state.dart';
part 'activeseries_cubit.freezed.dart';

@lazySingleton
class ActiveseriesCubit extends Cubit<ActiveseriesState> {
  ActiveseriesCubit() : super(ActiveseriesState.initial());

  void setActiveExerciseAndSeries(
      Exercise exercise, int numberOfActiveSeries, Series activeSeries) {
    print(numberOfActiveSeries);
    emit(
      state.copyWith(
        activeSeriesNumber: numberOfActiveSeries,
        exercise: exercise,
        activeSeries: activeSeries,
      ),
    );
    print(state);
  }
}
