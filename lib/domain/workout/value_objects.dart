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

  @override
  String toString() => 'Value($value)';

  const Title._(this.value);
}
