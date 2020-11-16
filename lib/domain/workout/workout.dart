import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/exercise/exercise.dart';

part 'workout.freezed.dart';

@freezed
abstract class Workout with _$Workout {
  const factory Workout({
    @required UniqueId id,
    @required String title,
    @required DateTime workoutDate,
    @required List<Exercise> exercieList,
    DateTime updateDate,
  }) = _Workout;

  factory Workout.newWorkout() => Workout(
        id: UniqueId(),
        title: '',
        workoutDate: DateTime.now(),
        exercieList: [],
      );
}
