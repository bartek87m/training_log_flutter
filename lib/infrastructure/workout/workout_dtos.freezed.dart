// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workout_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;
WorkoutDto _$WorkoutDtoFromJson(Map<String, dynamic> json) {
  return _WorkoutDto.fromJson(json);
}

/// @nodoc
class _$WorkoutDtoTearOff {
  const _$WorkoutDtoTearOff();

// ignore: unused_element
  _WorkoutDto call(
      {@JsonKey(ignore: true) String id,
      @required String title,
      @required DateTime workoutDate,
      @required List<ExerciseDto> exercieList,
      @required @ServerTimestampConverter() FieldValue serverTimeStamp}) {
    return _WorkoutDto(
      id: id,
      title: title,
      workoutDate: workoutDate,
      exercieList: exercieList,
      serverTimeStamp: serverTimeStamp,
    );
  }

// ignore: unused_element
  WorkoutDto fromJson(Map<String, Object> json) {
    return WorkoutDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutDto = _$WorkoutDtoTearOff();

/// @nodoc
mixin _$WorkoutDto {
  @JsonKey(ignore: true)
  String get id;
  String get title;
  DateTime get workoutDate;
  List<ExerciseDto> get exercieList;
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;

  Map<String, dynamic> toJson();
  $WorkoutDtoCopyWith<WorkoutDto> get copyWith;
}

/// @nodoc
abstract class $WorkoutDtoCopyWith<$Res> {
  factory $WorkoutDtoCopyWith(
          WorkoutDto value, $Res Function(WorkoutDto) then) =
      _$WorkoutDtoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(ignore: true) String id,
      String title,
      DateTime workoutDate,
      List<ExerciseDto> exercieList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
}

/// @nodoc
class _$WorkoutDtoCopyWithImpl<$Res> implements $WorkoutDtoCopyWith<$Res> {
  _$WorkoutDtoCopyWithImpl(this._value, this._then);

  final WorkoutDto _value;
  // ignore: unused_field
  final $Res Function(WorkoutDto) _then;

  @override
  $Res call({
    Object id = freezed,
    Object title = freezed,
    Object workoutDate = freezed,
    Object exercieList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      workoutDate:
          workoutDate == freezed ? _value.workoutDate : workoutDate as DateTime,
      exercieList: exercieList == freezed
          ? _value.exercieList
          : exercieList as List<ExerciseDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
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
      {@JsonKey(ignore: true) String id,
      String title,
      DateTime workoutDate,
      List<ExerciseDto> exercieList,
      @ServerTimestampConverter() FieldValue serverTimeStamp});
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
    Object id = freezed,
    Object title = freezed,
    Object workoutDate = freezed,
    Object exercieList = freezed,
    Object serverTimeStamp = freezed,
  }) {
    return _then(_WorkoutDto(
      id: id == freezed ? _value.id : id as String,
      title: title == freezed ? _value.title : title as String,
      workoutDate:
          workoutDate == freezed ? _value.workoutDate : workoutDate as DateTime,
      exercieList: exercieList == freezed
          ? _value.exercieList
          : exercieList as List<ExerciseDto>,
      serverTimeStamp: serverTimeStamp == freezed
          ? _value.serverTimeStamp
          : serverTimeStamp as FieldValue,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_WorkoutDto extends _WorkoutDto with DiagnosticableTreeMixin {
  const _$_WorkoutDto(
      {@JsonKey(ignore: true) this.id,
      @required this.title,
      @required this.workoutDate,
      @required this.exercieList,
      @required @ServerTimestampConverter() this.serverTimeStamp})
      : assert(title != null),
        assert(workoutDate != null),
        assert(exercieList != null),
        assert(serverTimeStamp != null),
        super._();

  factory _$_WorkoutDto.fromJson(Map<String, dynamic> json) =>
      _$_$_WorkoutDtoFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String id;
  @override
  final String title;
  @override
  final DateTime workoutDate;
  @override
  final List<ExerciseDto> exercieList;
  @override
  @ServerTimestampConverter()
  final FieldValue serverTimeStamp;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutDto(id: $id, title: $title, workoutDate: $workoutDate, exercieList: $exercieList, serverTimeStamp: $serverTimeStamp)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutDto'))
      ..add(DiagnosticsProperty('id', id))
      ..add(DiagnosticsProperty('title', title))
      ..add(DiagnosticsProperty('workoutDate', workoutDate))
      ..add(DiagnosticsProperty('exercieList', exercieList))
      ..add(DiagnosticsProperty('serverTimeStamp', serverTimeStamp));
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
                    .equals(other.exercieList, exercieList)) &&
            (identical(other.serverTimeStamp, serverTimeStamp) ||
                const DeepCollectionEquality()
                    .equals(other.serverTimeStamp, serverTimeStamp)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(workoutDate) ^
      const DeepCollectionEquality().hash(exercieList) ^
      const DeepCollectionEquality().hash(serverTimeStamp);

  @override
  _$WorkoutDtoCopyWith<_WorkoutDto> get copyWith =>
      __$WorkoutDtoCopyWithImpl<_WorkoutDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_WorkoutDtoToJson(this);
  }
}

abstract class _WorkoutDto extends WorkoutDto {
  const _WorkoutDto._() : super._();
  const factory _WorkoutDto(
          {@JsonKey(ignore: true) String id,
          @required String title,
          @required DateTime workoutDate,
          @required List<ExerciseDto> exercieList,
          @required @ServerTimestampConverter() FieldValue serverTimeStamp}) =
      _$_WorkoutDto;

  factory _WorkoutDto.fromJson(Map<String, dynamic> json) =
      _$_WorkoutDto.fromJson;

  @override
  @JsonKey(ignore: true)
  String get id;
  @override
  String get title;
  @override
  DateTime get workoutDate;
  @override
  List<ExerciseDto> get exercieList;
  @override
  @ServerTimestampConverter()
  FieldValue get serverTimeStamp;
  @override
  _$WorkoutDtoCopyWith<_WorkoutDto> get copyWith;
}

ExerciseDto _$ExerciseDtoFromJson(Map<String, dynamic> json) {
  return _ExerciseDto.fromJson(json);
}

/// @nodoc
class _$ExerciseDtoTearOff {
  const _$ExerciseDtoTearOff();

// ignore: unused_element
  _ExerciseDto call(
      {@required String exerciseName, @required List<SeriesDto> setsList}) {
    return _ExerciseDto(
      exerciseName: exerciseName,
      setsList: setsList,
    );
  }

// ignore: unused_element
  ExerciseDto fromJson(Map<String, Object> json) {
    return ExerciseDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $ExerciseDto = _$ExerciseDtoTearOff();

/// @nodoc
mixin _$ExerciseDto {
// @required String exerciseNumber,
  String get exerciseName;
  List<SeriesDto> get setsList;

  Map<String, dynamic> toJson();
  $ExerciseDtoCopyWith<ExerciseDto> get copyWith;
}

/// @nodoc
abstract class $ExerciseDtoCopyWith<$Res> {
  factory $ExerciseDtoCopyWith(
          ExerciseDto value, $Res Function(ExerciseDto) then) =
      _$ExerciseDtoCopyWithImpl<$Res>;
  $Res call({String exerciseName, List<SeriesDto> setsList});
}

/// @nodoc
class _$ExerciseDtoCopyWithImpl<$Res> implements $ExerciseDtoCopyWith<$Res> {
  _$ExerciseDtoCopyWithImpl(this._value, this._then);

  final ExerciseDto _value;
  // ignore: unused_field
  final $Res Function(ExerciseDto) _then;

  @override
  $Res call({
    Object exerciseName = freezed,
    Object setsList = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName as String,
      setsList:
          setsList == freezed ? _value.setsList : setsList as List<SeriesDto>,
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
  $Res call({String exerciseName, List<SeriesDto> setsList});
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
    Object exerciseName = freezed,
    Object setsList = freezed,
  }) {
    return _then(_ExerciseDto(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName as String,
      setsList:
          setsList == freezed ? _value.setsList : setsList as List<SeriesDto>,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_ExerciseDto extends _ExerciseDto with DiagnosticableTreeMixin {
  const _$_ExerciseDto({@required this.exerciseName, @required this.setsList})
      : assert(exerciseName != null),
        assert(setsList != null),
        super._();

  factory _$_ExerciseDto.fromJson(Map<String, dynamic> json) =>
      _$_$_ExerciseDtoFromJson(json);

  @override // @required String exerciseNumber,
  final String exerciseName;
  @override
  final List<SeriesDto> setsList;

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

  @override
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith =>
      __$ExerciseDtoCopyWithImpl<_ExerciseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_ExerciseDtoToJson(this);
  }
}

abstract class _ExerciseDto extends ExerciseDto {
  const _ExerciseDto._() : super._();
  const factory _ExerciseDto(
      {@required String exerciseName,
      @required List<SeriesDto> setsList}) = _$_ExerciseDto;

  factory _ExerciseDto.fromJson(Map<String, dynamic> json) =
      _$_ExerciseDto.fromJson;

  @override // @required String exerciseNumber,
  String get exerciseName;
  @override
  List<SeriesDto> get setsList;
  @override
  _$ExerciseDtoCopyWith<_ExerciseDto> get copyWith;
}

SeriesDto _$SeriesDtoFromJson(Map<String, dynamic> json) {
  return _SeriesDto.fromJson(json);
}

/// @nodoc
class _$SeriesDtoTearOff {
  const _$SeriesDtoTearOff();

// ignore: unused_element
  _SeriesDto call(
      {@required String reps,
      @required String result,
      String resultFromLastTraining,
      bool completed}) {
    return _SeriesDto(
      reps: reps,
      result: result,
      resultFromLastTraining: resultFromLastTraining,
      completed: completed,
    );
  }

// ignore: unused_element
  SeriesDto fromJson(Map<String, Object> json) {
    return SeriesDto.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SeriesDto = _$SeriesDtoTearOff();

/// @nodoc
mixin _$SeriesDto {
// @required String seriesNumber,
  String get reps;
  String get result; //reps or time,
  String get resultFromLastTraining;
  bool get completed;

  Map<String, dynamic> toJson();
  $SeriesDtoCopyWith<SeriesDto> get copyWith;
}

/// @nodoc
abstract class $SeriesDtoCopyWith<$Res> {
  factory $SeriesDtoCopyWith(SeriesDto value, $Res Function(SeriesDto) then) =
      _$SeriesDtoCopyWithImpl<$Res>;
  $Res call(
      {String reps,
      String result,
      String resultFromLastTraining,
      bool completed});
}

/// @nodoc
class _$SeriesDtoCopyWithImpl<$Res> implements $SeriesDtoCopyWith<$Res> {
  _$SeriesDtoCopyWithImpl(this._value, this._then);

  final SeriesDto _value;
  // ignore: unused_field
  final $Res Function(SeriesDto) _then;

  @override
  $Res call({
    Object reps = freezed,
    Object result = freezed,
    Object resultFromLastTraining = freezed,
    Object completed = freezed,
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed ? _value.reps : reps as String,
      result: result == freezed ? _value.result : result as String,
      resultFromLastTraining: resultFromLastTraining == freezed
          ? _value.resultFromLastTraining
          : resultFromLastTraining as String,
      completed: completed == freezed ? _value.completed : completed as bool,
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
      {String reps,
      String result,
      String resultFromLastTraining,
      bool completed});
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
    Object reps = freezed,
    Object result = freezed,
    Object resultFromLastTraining = freezed,
    Object completed = freezed,
  }) {
    return _then(_SeriesDto(
      reps: reps == freezed ? _value.reps : reps as String,
      result: result == freezed ? _value.result : result as String,
      resultFromLastTraining: resultFromLastTraining == freezed
          ? _value.resultFromLastTraining
          : resultFromLastTraining as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_SeriesDto extends _SeriesDto with DiagnosticableTreeMixin {
  const _$_SeriesDto(
      {@required this.reps,
      @required this.result,
      this.resultFromLastTraining,
      this.completed})
      : assert(reps != null),
        assert(result != null),
        super._();

  factory _$_SeriesDto.fromJson(Map<String, dynamic> json) =>
      _$_$_SeriesDtoFromJson(json);

  @override // @required String seriesNumber,
  final String reps;
  @override
  final String result;
  @override //reps or time,
  final String resultFromLastTraining;
  @override
  final bool completed;

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

  @override
  _$SeriesDtoCopyWith<_SeriesDto> get copyWith =>
      __$SeriesDtoCopyWithImpl<_SeriesDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SeriesDtoToJson(this);
  }
}

abstract class _SeriesDto extends SeriesDto {
  const _SeriesDto._() : super._();
  const factory _SeriesDto(
      {@required String reps,
      @required String result,
      String resultFromLastTraining,
      bool completed}) = _$_SeriesDto;

  factory _SeriesDto.fromJson(Map<String, dynamic> json) =
      _$_SeriesDto.fromJson;

  @override // @required String seriesNumber,
  String get reps;
  @override
  String get result;
  @override //reps or time,
  String get resultFromLastTraining;
  @override
  bool get completed;
  @override
  _$SeriesDtoCopyWith<_SeriesDto> get copyWith;
}
