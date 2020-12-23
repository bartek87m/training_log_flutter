import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/workout/value_objects.dart';

part 'series.freezed.dart';

@freezed
abstract class Series with _$Series {
  const factory Series({
    Reps reps,
    Result result,
    String
        resultFromlastTraining, //rezultat z poprzedniego treningu z tym ćwiczeniem
    bool completed,
  }) = _Series;

  factory Series.newSeries() => Series(
        reps: Reps(""),
        result: Result(""),
        resultFromlastTraining: "",
        completed: false,
      );
}
