import 'package:freezed_annotation/freezed_annotation.dart';

part 'series.freezed.dart';

@freezed
abstract class Series with _$Series {
  const factory Series({
    String reps,
    String weight,
    String time,
    String
        resultFromlastTraining, //rezultat z poprzedniego treningu z tym ćwiczeniem
    bool completed,
  }) = _Series;
}
