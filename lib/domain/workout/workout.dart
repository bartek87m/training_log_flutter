import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';

import 'package:training_log/domain/workout/value_objects.dart';

part 'workout.freezed.dart';

@freezed
abstract class Workout with _$Workout {
  const factory Workout({
    @required UniqueId? id,
    @required Title? title,
    @required DateTime? workoutDate,
    @required List<Exercise>? exercieList,
    // @required List<Wod> wodList,
    DateTime? updateDate,
  }) = _Workout;

  factory Workout.newWorkout() => Workout(
        id: UniqueId(),
        title: Title('Workout title'),
        workoutDate: DateTime.now(),
        exercieList: [
          Exercise(exerciseName: ExerciseName('Exercise name'), setsList: [])
        ],
        // wodList: List<Wod>(),
      );

  // factory Workout.fromExistingOne(Workout workout) => Workout(
  //       id: UniqueId(),
  //       title: workout.title,
  //       workoutDate: DateTime.now(),
  //       exercieList: workout.exercieList,
  //     );

  // factory Workout.empty() => Workout(
  //       id: UniqueId.fromUniqueString(''),
  //       title: Title(''),
  //       workoutDate: DateTime.now(),
  //       exercieList: [],
  //       // wodList: List<Wod>(),
  //     );
}
