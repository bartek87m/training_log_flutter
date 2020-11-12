import 'package:dartz/dartz.dart';
import 'package:training_log/domain/core/failures.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/core/value_validator.dart';

class EmailAdress extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAdress(String input) {
    assert(input != null);

    return EmailAdress._(validateEmail(input));
  }

  const EmailAdress._(this.value);
}

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    assert(input != null);

    return Password._(validatePassword(input));
  }

  Password._(this.value);
}

class PasswordConfirmed extends ValueObject<List<Password>> {
  @override
  final Either<ValueFailure<List<Password>>, List<Password>> value;

  factory PasswordConfirmed(List<Password> input) {
    assert(input != null);
    return PasswordConfirmed._(validatePasswordAreIdentical(input));
  }
  PasswordConfirmed._(this.value);
}
