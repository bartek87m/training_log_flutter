import 'package:training_log/domain/core/failures.dart';

class UnexpectedValueError extends Error {
  final ValueFailure valueFailure;

  UnexpectedValueError(this.valueFailure);

  @override
  String toString() {
    // const explanation = 'Eccountered a ValueFailure at an unrecoverable point.';
    return Error.safeToString('Terminating. Failure was: $valueFailure');
  }
}
