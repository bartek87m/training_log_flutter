import 'package:freezed_annotation/freezed_annotation.dart';

part 'series.freezed.dart';

@freezed
abstract class Series with _$Series {
  const factory Series({
    String? reps,
    String? result,
    String?
        resultFromlastTraining, //rezultat z poprzedniego treningu z tym ćwiczeniem
    bool? completed,
    bool? isPossibleWithTimer,
  }) = _Series;

  factory Series.newSeries() => Series(
        reps: "",
        result: "",
        resultFromlastTraining: "",
        completed: false,
        isPossibleWithTimer: false,
      );
}
