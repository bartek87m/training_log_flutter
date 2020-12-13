// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workout_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_WorkoutDto _$_$_WorkoutDtoFromJson(Map<String, dynamic> json) {
  return _$_WorkoutDto(
    id: json['id'] as String,
    title: json['title'] as String,
    workoutDate: json['workoutDate'] == null
        ? null
        : DateTime.parse(json['workoutDate'] as String),
    exercieList: (json['exercieList'] as List)
        ?.map((e) =>
            e == null ? null : ExerciseDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    serverTimeStamp:
        const ServerTimestampConverter().fromJson(json['serverTimeStamp']),
  );
}

Map<String, dynamic> _$_$_WorkoutDtoToJson(_$_WorkoutDto instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'workoutDate': instance.workoutDate?.toIso8601String(),
      'exercieList': instance.exercieList?.map((e) => e?.toJson())?.toList(),
      'serverTimeStamp':
          const ServerTimestampConverter().toJson(instance.serverTimeStamp),
    };

_$_ExerciseDto _$_$_ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _$_ExerciseDto(
    exerciseName: json['exerciseName'] as String,
    setsList: (json['setsList'] as List)
        ?.map((e) =>
            e == null ? null : SeriesDto.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_ExerciseDtoToJson(_$_ExerciseDto instance) =>
    <String, dynamic>{
      'exerciseName': instance.exerciseName,
      'setsList': instance.setsList?.map((e) => e?.toJson())?.toList(),
    };

_$_SeriesDto _$_$_SeriesDtoFromJson(Map<String, dynamic> json) {
  return _$_SeriesDto(
    reps: json['reps'] as String,
    result: json['result'] as String,
    resultFromLastTraining: json['resultFromLastTraining'] as String,
    completed: json['completed'] as bool,
  );
}

Map<String, dynamic> _$_$_SeriesDtoToJson(_$_SeriesDto instance) =>
    <String, dynamic>{
      'reps': instance.reps,
      'result': instance.result,
      'resultFromLastTraining': instance.resultFromLastTraining,
      'completed': instance.completed,
    };
