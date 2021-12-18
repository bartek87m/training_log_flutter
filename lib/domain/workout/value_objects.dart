import 'package:fpdart/fpdart.dart';
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
    return ExerciseName._(validateStringIsNotEmpty(input));
  }

  const ExerciseName._(this.value);
}

class Reps extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Reps(input) {
    assert(input != null);
    return Reps._(validateStringIsNotEmpty(input));
  }

  const Reps._(this.value);
}

class Result extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Result(input) {
    assert(input != null);
    return Result._(validateStringIsNotEmpty(input));
  }

  const Result._(this.value);
}
