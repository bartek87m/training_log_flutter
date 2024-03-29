import 'package:fpdart/fpdart.dart';
import 'package:training_log/domain/auth/value_objects.dart';
import 'package:training_log/domain/core/failures.dart';

Either<ValueFailure<String>, String> validateEmail(String input) {
  const emailRegex =
      r"""^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6) {
    return right(input);
  } else {
    return left(ValueFailure.shortPassword(failedValue: input));
  }
}

Either<ValueFailure<List<Password>>, List<Password>>
    validatePasswordAreIdentical(List<Password> input) {
  if (input[0].value == input[1].value) {
    return right(input);
  } else {
    return left(ValueFailure.passwordsNotIdentical(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateWorkoutTitleLength(String input) {
  if (input.length < 50) {
    return right(input);
  } else {
    return left(ValueFailure.workoutTitleTolong(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validateStringIsNotEmpty(String input) {
  if (input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.workoutStringEmpty(failedValue: input));
  }
}
