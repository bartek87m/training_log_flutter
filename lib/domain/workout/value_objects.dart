import 'package:dartz/dartz.dart';
import 'package:training_log/domain/core/failures.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/core/value_validator.dart';

class Title extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Title(input) {
    assert(input != null);

    return Title._(validateWorkoutTitleLength(input));
  }

  const Title._(this.value);
}

class ExerciseName extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory ExerciseName(input) {
    assert(input != null);
    return ExerciseName._(validateExerciseIsNotEmpty(input));
  }

  const ExerciseName._(this.value);
}
