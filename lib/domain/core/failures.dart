import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/auth/value_objects.dart';

part 'failures.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.invalidEmail({
    @required String failedValue,
  }) = InvalidEmail<T>;
  const factory ValueFailure.shortPassword({
    @required String failedValue,
  }) = ShortPassword<T>;
  const factory ValueFailure.passwordsNotIdentical({
    @required List<Password> failedValue,
  }) = PasswordsNotIdentical<T>;
  const factory ValueFailure.workoutTitleTolong({
    @required String failedValue,
  }) = WorkoutTItleToLong<T>;
  const factory ValueFailure.workoutStringEmpty({
    @required String failedValue,
  }) = WorkoutTItleEmpty<T>;
  const factory ValueFailure.exerciseNameEmpty({
    @required String failedValue,
  }) = ExerciseNameEmpty<T>;
}
