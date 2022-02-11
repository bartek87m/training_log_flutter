import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/series/series.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';

part 'activeseries_state.dart';
part 'activeseries_cubit.freezed.dart';

@lazySingleton
class ActiveseriesCubit extends Cubit<ActiveseriesState> {
  ActiveseriesCubit() : super(ActiveseriesState.initial());

  void getTimeForSeries(Exercise exercise, int serieNumber) {
    String? result = exercise.setsList![serieNumber].result;
    int secoundsToExecute = 0;

    if (result!.contains(new RegExp(r'(["sec"])\w+'))) {
      secoundsToExecute =
          int.parse(result.replaceAll(new RegExp(r'[^0-9]'), ''));
    }

    emit(state.copyWith(timeForTimer: Duration(seconds: secoundsToExecute)));
  }

  // void setActiveExerciseAndSeries(
  //     Exercise exercise, int numberOfActiveSeries, Series activeSeries) {
  //   int? timeInSecounds;
  //   final String? resultFromActiveSeries = activeSeries.result;
  //   bool isResultTime =
  //       resultFromActiveSeries!.contains(new RegExp(r'(["sec"])\w+'));
  //   if (isResultTime) {
  //     timeInSecounds = int.parse(
  //         resultFromActiveSeries.replaceAll(new RegExp(r'[^0-9]'), ''));
  //   } else {
  //     timeInSecounds = 0;
  //   }
  //   emit(
  //     state.copyWith(
  //       activeSeriesNumber: numberOfActiveSeries,
  //       exercise: exercise,
  //       activeSeries: activeSeries,
  //       timeForTimer: Duration(seconds: timeInSecounds),
  //     ),
  //   );
  //   print(state);
  // }

  void findSeriesWithTimeInRes(Workout exercise) {
    final newExercise = exercise.exercieList!
        .map((exercise) => exercise.setsList!.map((series) => series).toList())
        .toList();

    final newExerciseListWithIsPossibleWithTImer = newExercise.map(
      (element) {
        return element.map((element2) {
          if (element2.result!.contains(new RegExp(r'(["sec"])\w+'))) {
            return element2.copyWith(isPossibleWithTimer: true);
          } else {
            return element2.copyWith(isPossibleWithTimer: false);
          }
        }).toList();
      },
    ).toList();

    List<bool>? finalListForTimerPossibility =
        newExerciseListWithIsPossibleWithTImer
            .map((e) => e.map((e) => e.isPossibleWithTimer).toList())
            .toList()
            .expand((element) => element)
            .cast<bool>()
            .toList();

    print(finalListForTimerPossibility);

    emit(state.copyWith(
        finalListForTimerPossibility: finalListForTimerPossibility));
  }
}
