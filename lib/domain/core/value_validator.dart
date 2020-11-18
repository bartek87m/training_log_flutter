import 'package:dartz/dartz.dart';
import 'package:training_log/domain/auth/value_objects.dart';
import 'package:training_log/domain/core/failures.dart';
import 'package:intl/intl.dart';

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
  } else if (input.length == null) {
    // final DateFormat formatter = DateFormat('yyyy-MM-dd');
    // return right(formatter.format(DateTime.now()));
    return right('Workout title');
  } else {
    return left(ValueFailure.workoutTitleTolong(failedValue: input));
  }
}
