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
    int? timeInSecounds;
    final String? resultFromActiveSeries = activeSeries.result;
    bool isResultTime =
        resultFromActiveSeries!.contains(new RegExp(r'(["sec"])\w+'));
    if (isResultTime) {
      timeInSecounds = int.parse(
          resultFromActiveSeries.replaceAll(new RegExp(r'[^0-9]'), ''));
    } else {
      timeInSecounds = 0;
    }
    emit(
      state.copyWith(
        activeSeriesNumber: numberOfActiveSeries,
        exercise: exercise,
        activeSeries: activeSeries,
        timeForTimer: Duration(seconds: timeInSecounds),
      ),
    );
    print(state);
  }
}
