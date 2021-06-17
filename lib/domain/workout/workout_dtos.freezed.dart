// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'workout_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WorkoutDto _$WorkoutDtoFromJson(Map<String, dynamic> json) {
  return _WorkoutDto.fromJson(json);
}

/// @nodoc
class _$WorkoutDtoTearOff {
  const _$WorkoutDtoTearOff();

  _WorkoutDto call(
      {String? id,
      String? title,
      DateTime? workoutDate,
      List<ExerciseDto>? exercieList}) {
    return _WorkoutDto(
      id: id,
      title: title,
      workoutDate: workoutDate,
      exercieList: exercieList,
    );
  }

  WorkoutDto fromJson(Map<String, Object> json) {
    return WorkoutDto.fromJson(json);
  }
}

/// @nodoc
const $WorkoutDto = _$WorkoutDtoTearOff();

/// @nodoc
mixin _$WorkoutDto {
  String? get id => throw _privateConstructorUsedError;
  String? get title => throw _privateConstructorUsedError;
  DateTime? get workoutDate => throw _privateConstructorUsedError;
  List<ExerciseDto>? get exercieList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WorkoutDtoCopyWith<WorkoutDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutDtoCopyWith<$Res> {
  factory $WorkoutDtoCopyWith(
          WorkoutDto value, $Res Function(WorkoutDto) then) =
      _$WorkoutDtoCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      String? title,
      DateTime? workoutDate,
      List<ExerciseDto>? exercieList});
}

/// @nodoc
class _$WorkoutDtoCopyWithImpl<$Res> implements $WorkoutDtoCopyWith<$Res> {
  _$WorkoutDtoCopyWithImpl(this._value, this._then);

  final WorkoutDto _value;
  // ignore: unused_field
  final $Res Function(WorkoutDto) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? workoutDate = freezed,
    Object? exercieList = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutDate: workoutDate == freezed
          ? _value.workoutDate
          : workoutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercieList: exercieList == freezed
          ? _value.exercieList
          : exercieList // ignore: cast_nullable_to_non_nullable
              as List<ExerciseDto>?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutDtoCopyWith<$Res> implements $WorkoutDtoCopyWith<$Res> {
  factory _$WorkoutDtoCopyWith(
          _WorkoutDto value, $Res Function(_WorkoutDto) then) =
      __$WorkoutDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? id,
      String? title,
      DateTime? workoutDate,
      List<ExerciseDto>? exercieList});
}

/// @nodoc
class __$WorkoutDtoCopyWithImpl<$Res> extends _$WorkoutDtoCopyWithImpl<$Res>
    implements _$WorkoutDtoCopyWith<$Res> {
  __$WorkoutDtoCopyWithImpl(
      _WorkoutDto _value, $Res Function(_WorkoutDto) _then)
      : super(_value, (v) => _then(v as _WorkoutDto));

  @override
  _WorkoutDto get _value => super._value as _WorkoutDto;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? workoutDate = freezed,
    Object? exercieList = freezed,
  }) {
    return _then(_WorkoutDto(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String?,
      workoutDate: workoutDate == freezed
          ? _value.workoutDate
          : workoutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercieList: exercieList == freezed
          ? _value.exercieList
          : exercieList // ignore: cast_nullable_to_non_nullable
              as List<ExerciseDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WorkoutDto extends _WorkoutDto with DiagnosticableTreeMixin {
  const _$_WorkoutDto({this.id, this.title, this.workoutDate, this.exercieList})
      : super._();

  factory _$_WorkoutDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkoutDtoFromJson(json);

  @override
  final String? id;
  @override
  final String? title;
  @override
  final DateTime? workoutDate;
  @override
  final List<ExerciseDto>? exercieList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutDto(id: $id, title: $title, workoutDate: $workoutDate, exercieList: $exercieList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('workoutDate', workoutDate))
      ..add(DiagnosticsProperty('exercieList', exercieList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutDto &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.workoutDate, workoutDate) ||
                const DeepCollectionEquality()
                    .equals(other.workoutDate, workoutDate)) &&
            (identical(other.exercieList, exercieList) ||
                const DeepCollectionEquality()
                    .equals(other.exercieList, exercieList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(workoutDate) ^
      const DeepCollectionEquality().hash(exercieList);

  @JsonKey(ignore: true)
  @override
  _$WorkoutDtoCopyWith<_WorkoutDto> get copyWith =>
      __$WorkoutDtoCopyWithImpl<_WorkoutDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkoutDtoToJson(this);
  }
}

abstract class _WorkoutDto extends WorkoutDto {
  const factory _WorkoutDto(
      {String? id,
      String? title,
      DateTime? workoutDate,
      List<ExerciseDto>? exercieList}) = _$_WorkoutDto;
  const _WorkoutDto._() : super._();

  factory _WorkoutDto.fromJson(Map<String, dynamic> json) =
      _$_WorkoutDto.fromJson;

  @override
  String? get id => throw _privateConstructorUsedError;
  @override
  String? get title => throw _privateConstructorUsedError;
  @override
  DateTime? get workoutDate => throw _privateConstructorUsedError;
  @override
  List<ExerciseDto>? get exercieList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutDtoCopyWith<_WorkoutDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseDto.fromJson(json);
}

/// @nodoc
class _$ExerciseDtoTearOff {
  const _$ExerciseDtoTearOff();

  _ExerciseDto call({String? exerciseName, List<SeriesDto>? setsList}) {
    return _ExerciseDto(
      exerciseName: exerciseName,
      setsList: setsList,
    );
  }

  ExerciseDto fromJson(Map<String, Object> json) {
    return ExerciseDto.fromJson(json);
  }
}

/// @nodoc
const $ExerciseDto = _$ExerciseDtoTearOff();

/// @nodoc
mixin _$ExerciseDto {
// @required String exerciseNumber,
  String? get exerciseName => throw _privateConstructorUsedError;
  List<SeriesDto>? get setsList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res>;
  $Res call({String? exerciseName, List<SeriesDto>? setsList});
}

/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res> implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._value, this._then);

  final ExerciseDto _value;
  // ignore: unused_field
  final $Res Function(ExerciseDto) _then;

  @override
  $Res call({
    Object? exerciseName = freezed,
    Object? setsList = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String?,
      setsList: setsList == freezed
          ? _value.setsList
          : setsList // ignore: cast_nullable_to_non_nullable
              as List<SeriesDto>?,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseDtoCopyWith<$Res>
    implements $ExerciseDtoCopyWith<$Res> {
  factory _$ExerciseDtoCopyWith(
          _ExerciseDto value, $Res Function(_ExerciseDto) then) =
      __$ExerciseDtoCopyWithImpl<$Res>;
  @override
  $Res call({String? exerciseName, List<SeriesDto>? setsList});
}

/// @nodoc
class __$ExerciseDtoCopyWithImpl<$Res> extends _$ExerciseDtoCopyWithImpl<$Res>
    implements _$ExerciseDtoCopyWith<$Res> {
  __$ExerciseDtoCopyWithImpl(
      _ExerciseDto _value, $Res Function(_ExerciseDto) _then)
      : super(_value, (v) => _then(v as _ExerciseDto));

  @override
  _ExerciseDto get _value => super._value as _ExerciseDto;

  @override
  $Res call({
    Object? exerciseName = freezed,
    Object? setsList = freezed,
  }) {
    return _then(_ExerciseDto(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as String?,
      setsList: setsList == freezed
          ? _value.setsList
          : setsList // ignore: cast_nullable_to_non_nullable
              as List<SeriesDto>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExerciseDto extends _ExerciseDto with DiagnosticableTreeMixin {
  const _$_ExerciseDto({this.exerciseName, this.setsList}) : super._();

  factory _$_ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseDtoFromJson(json);

  @override // @required String exerciseNumber,
  final String? exerciseName;
  @override
  final List<SeriesDto>? setsList;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ExerciseDto(exerciseName: $exerciseName, setsList: $setsList)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ExerciseDto'))
      ..add(DiagnosticsProperty('exerciseName', exerciseName))
      ..add(DiagnosticsProperty('setsList', setsList));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ExerciseDto &&
            (identical(other.exerciseName, exerciseName) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseName, exerciseName)) &&
            (identical(other.setsList, setsList) ||
                const DeepCollectionEquality()
                    .equals(other.setsList, setsList)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseName) ^
      const DeepCollectionEquality().hash(setsList);

  @JsonKey(ignore: true)
  @override
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith =>
      __$ExerciseDtoCopyWithImpl<_ExerciseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseDtoToJson(this);
  }
}

abstract class _ExerciseDto extends ExerciseDto {
  const factory _ExerciseDto(
      {String? exerciseName, List<SeriesDto>? setsList}) = _$_ExerciseDto;
  const _ExerciseDto._() : super._();

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_ExerciseDto.fromJson;

  @override // @required String exerciseNumber,
  String? get exerciseName => throw _privateConstructorUsedError;
  @override
  List<SeriesDto>? get setsList => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) {
  return _SeriesDto.fromJson(json);
}

/// @nodoc
class _$SeriesDtoTearOff {
  const _$SeriesDtoTearOff();

  _SeriesDto call(
      {String? reps,
      String? result,
      String? resultFromLastTraining,
      bool? completed}) {
    return _SeriesDto(
      reps: reps,
      result: result,
      resultFromLastTraining: resultFromLastTraining,
      completed: completed,
    );
  }

  SeriesDto fromJson(Map<String, Object> json) {
    return SeriesDto.fromJson(json);
  }
}

/// @nodoc
const $SeriesDto = _$SeriesDtoTearOff();

/// @nodoc
mixin _$SeriesDto {
// @required String seriesNumber,
  String? get reps => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError; //reps or time,
  String? get resultFromLastTraining => throw _privateConstructorUsedError;
  bool? get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeriesDtoCopyWith<SeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesDtoCopyWith<$Res> {
  factory $SeriesDtoCopyWith(SeriesDto value, $Res Function(SeriesDto) then) =
      _$SeriesDtoCopyWithImpl<$Res>;
  $Res call(
      {String? reps,
      String? result,
      String? resultFromLastTraining,
      bool? completed});
}

/// @nodoc
class _$SeriesDtoCopyWithImpl<$Res> implements $SeriesDtoCopyWith<$Res> {
  _$SeriesDtoCopyWithImpl(this._value, this._then);

  final SeriesDto _value;
  // ignore: unused_field
  final $Res Function(SeriesDto) _then;

  @override
  $Res call({
    Object? reps = freezed,
    Object? result = freezed,
    Object? resultFromLastTraining = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      resultFromLastTraining: resultFromLastTraining == freezed
          ? _value.resultFromLastTraining
          : resultFromLastTraining // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SeriesDtoCopyWith<$Res> implements $SeriesDtoCopyWith<$Res> {
  factory _$SeriesDtoCopyWith(
          _SeriesDto value, $Res Function(_SeriesDto) then) =
      __$SeriesDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? reps,
      String? result,
      String? resultFromLastTraining,
      bool? completed});
}

/// @nodoc
class __$SeriesDtoCopyWithImpl<$Res> extends _$SeriesDtoCopyWithImpl<$Res>
    implements _$SeriesDtoCopyWith<$Res> {
  __$SeriesDtoCopyWithImpl(_SeriesDto _value, $Res Function(_SeriesDto) _then)
      : super(_value, (v) => _then(v as _SeriesDto));

  @override
  _SeriesDto get _value => super._value as _SeriesDto;

  @override
  $Res call({
    Object? reps = freezed,
    Object? result = freezed,
    Object? resultFromLastTraining = freezed,
    Object? completed = freezed,
  }) {
    return _then(_SeriesDto(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      resultFromLastTraining: resultFromLastTraining == freezed
          ? _value.resultFromLastTraining
          : resultFromLastTraining // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SeriesDto extends _SeriesDto with DiagnosticableTreeMixin {
  const _$_SeriesDto(
      {this.reps, this.result, this.resultFromLastTraining, this.completed})
      : super._();

  factory _$_SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SeriesDtoFromJson(json);

  @override // @required String seriesNumber,
  final String? reps;
  @override
  final String? result;
  @override //reps or time,
  final String? resultFromLastTraining;
  @override
  final bool? completed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'SeriesDto(reps: $reps, result: $result, resultFromLastTraining: $resultFromLastTraining, completed: $completed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SeriesDto'))
      ..add(DiagnosticsProperty('reps', reps))
      ..add(DiagnosticsProperty('result', result))
      ..add(
          DiagnosticsProperty('resultFromLastTraining', resultFromLastTraining))
      ..add(DiagnosticsProperty('completed', completed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeriesDto &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
            (identical(other.resultFromLastTraining, resultFromLastTraining) ||
                const DeepCollectionEquality().equals(
                    other.resultFromLastTraining, resultFromLastTraining)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reps) ^
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(resultFromLastTraining) ^
      const DeepCollectionEquality().hash(completed);

  @JsonKey(ignore: true)
  @override
  _$SeriesDtoCopyWith<_SeriesDto> get copyWith =>
      __$SeriesDtoCopyWithImpl<_SeriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SeriesDtoToJson(this);
  }
}

abstract class _SeriesDto extends SeriesDto {
  const factory _SeriesDto(
      {String? reps,
      String? result,
      String? resultFromLastTraining,
      bool? completed}) = _$_SeriesDto;
  const _SeriesDto._() : super._();

  factory _SeriesDto.fromJson(Map<String, dynamic> json) =
      _$_SeriesDto.fromJson;

  @override // @required String seriesNumber,
  String? get reps => throw _privateConstructorUsedError;
  @override
  String? get result => throw _privateConstructorUsedError;
  @override //reps or time,
  String? get resultFromLastTraining => throw _privateConstructorUsedError;
  @override
  bool? get completed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeriesDtoCopyWith<_SeriesDto> get copyWith =>
      throw _privateConstructorUsedError;
}
