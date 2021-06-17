import 'package:freezed_annotation/freezed_annotation.dart';

part 'workout_failure.freezed.dart';

@freezed
abstract class WorkoutFailure with _$WorkoutFailure {
  const factory WorkoutFailure.serverError() = ServerError;
  const factory WorkoutFailure.permissionDenied() = PermissionDenied;
  const factory WorkoutFailure.unexpected() = Unexpected;
}
