import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/exercise/exercise.dart';
import 'package:training_log/domain/workout/value_objects.dart';

part 'workout.freezed.dart';

@freezed
abstract class Workout with _$Workout {
  const factory Workout({
    @required UniqueId id,
    @required Title title,
    @required DateTime workoutDate,
    @required List<Exercise> exercieList,
    DateTime updateDate,
  }) = _Workout;

  factory Workout.newWorkout() => Workout(
        id: UniqueId(),
        title: Title('Workout title'),
        workoutDate: DateTime.now(),
        exercieList: List<Exercise>(),
      );

  factory Workout.empty() => Workout(
        id: UniqueId.fromUniqueString(''),
        title: Title(''),
        workoutDate: DateTime.now(),
        exercieList: List<Exercise>(),
      );
}
