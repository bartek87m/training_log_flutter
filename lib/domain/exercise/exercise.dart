import 'package:freezed_annotation/freezed_annotation.dart';

part 'exercise.freezed.dart';

@freezed
abstract class Exercise with _$Exercise {
  const factory Exercise({
    @required String exerciseName,
    @required List<Set> setsList,
    String note,
  }) = _Exercise;
}
