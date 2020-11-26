import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/series/series.dart';
import 'package:training_log/domain/workout/value_objects.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    @required ExerciseName exerciseName,
    @required List<Series> setsList,
    String note,
  }) = _Exercise;
}
