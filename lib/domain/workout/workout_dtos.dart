import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/series/series.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';

part 'workout_dtos.freezed.dart';
part 'workout_dtos.g.dart';

@freezed
abstract class WorkoutDto implements _$WorkoutDto {
  const WorkoutDto._();

  const factory WorkoutDto({
    @required String? id,
    @required String? title,
    @required DateTime? workoutDate,
    @required List<ExerciseDto>? exercieList,
    // @required @ServerTimestampConverter() FieldValue? serverTimeStamp,
  }) = _WorkoutDto;

  factory WorkoutDto.fromDomain(Workout workout) {
    return WorkoutDto(
      id: workout.id!.getOrCrash(),
      title: workout.title!.getOrCrash(),
      workoutDate: workout.workoutDate!,
      exercieList: workout.exercieList!
          .map((exercise) => ExerciseDto.fromDomain(exercise))
          .toList(),
      // serverTimeStamp: FieldValue.serverTimestamp(),
    );
  }

  Workout toDomain() {
    return Workout(
      id: UniqueId.fromUniqueString(id!),
      title: Title(title),
      workoutDate: workoutDate,
      updateDate: null,
      exercieList: exercieList!.map((workout) => workout.toDomain()).toList(),
    );
  }

  factory WorkoutDto.fromJson(Map<String, dynamic> json) =>
      _$WorkoutDtoFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

@freezed
abstract class ExerciseDto implements _$ExerciseDto {
  const ExerciseDto._();

  const factory ExerciseDto({
    // @required String exerciseNumber,
    @required String? exerciseName,
    @required List<SeriesDto>? setsList,
  }) = _ExerciseDto;

  factory ExerciseDto.fromDomain(Exercise exercise) {
    return ExerciseDto(
      exerciseName: exercise.exerciseName!.getOrCrash(),
      setsList: exercise.setsList!
          .map(
            (series) => SeriesDto.fromDomain(series),
          )
          .toList(),
    );
  }

  Exercise toDomain() {
    return Exercise(
      exerciseName: ExerciseName(exerciseName),
      setsList: setsList!.map((series) => series.toDomain()).toList(),
    );
  }

  factory ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$ExerciseDtoFromJson(json);
}

@freezed
abstract class SeriesDto implements _$SeriesDto {
  const SeriesDto._();

  const factory SeriesDto({
    // @required String seriesNumber,
    @required String? reps,
    @required String? result, //reps or time,
    String? resultFromLastTraining,
    bool? completed,
  }) = _SeriesDto;

  factory SeriesDto.fromDomain(Series series) {
    return SeriesDto(
      reps: series.reps!,
      result: series.result!,
      completed: series.completed!,
    );
  }

  Series toDomain() {
    return Series(
      completed: completed,
      resultFromlastTraining: resultFromLastTraining,
      reps: reps,
      result: result,
    );
  }

  factory SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$SeriesDtoFromJson(json);
}
