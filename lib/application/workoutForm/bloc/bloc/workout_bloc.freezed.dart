// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workout_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkoutEventTearOff {
  const _$WorkoutEventTearOff();

// ignore: unused_element
  _WorkoutCreated createNewWorkout() {
    return const _WorkoutCreated();
  }

// ignore: unused_element
  _AddExerciseToWorkout addExerciseToWorkout() {
    return const _AddExerciseToWorkout();
  }

// ignore: unused_element
  _WorkoutCompleted workoutCompleted() {
    return const _WorkoutCompleted();
  }

// ignore: unused_element
  _DeleteWorkout deleteWorkout(String workoutId) {
    return _DeleteWorkout(
      workoutId,
    );
  }

// ignore: unused_element
  _CancelWorkout cancelWorkout() {
    return const _CancelWorkout();
  }

// ignore: unused_element
  _FinishWorkout finishWorkout() {
    return const _FinishWorkout();
  }

// ignore: unused_element
  _ChangeTitle changeTitle(String inputStr) {
    return _ChangeTitle(
      inputStr,
    );
  }

// ignore: unused_element
  _AddSeriesToExercise addSeriesToExercise(int exerciseNumber) {
    return _AddSeriesToExercise(
      exerciseNumber,
    );
  }

// ignore: unused_element
  _RemoveExerciseFromWorkout removeExerciseFromWorkout(int numberOfExercsie) {
    return _RemoveExerciseFromWorkout(
      numberOfExercsie,
    );
  }

// ignore: unused_element
  _RemoveSeriesFromExercise removeSeriesFromExercise(
      int exerciseNumber, int numberOfSeries) {
    return _RemoveSeriesFromExercise(
      exerciseNumber,
      numberOfSeries,
    );
  }

// ignore: unused_element
  _AddWeightToSeries addWeightToSeries(
      int exerciseNumber, int seriesNumber, String weight) {
    return _AddWeightToSeries(
      exerciseNumber,
      seriesNumber,
      weight,
    );
  }

// ignore: unused_element
  _AddRepsToSeries addRepsToSeries(
      int exerciseNumber, int seriesNumber, String reps) {
    return _AddRepsToSeries(
      exerciseNumber,
      seriesNumber,
      reps,
    );
  }

// ignore: unused_element
  _AddExerciseName addExerciseName(String name, int numberOfExercise) {
    return _AddExerciseName(
      name,
      numberOfExercise,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutEvent = _$WorkoutEventTearOff();

/// @nodoc
mixin _$WorkoutEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WorkoutEventCopyWith<$Res> {
  factory $WorkoutEventCopyWith(
          WorkoutEvent value, $Res Function(WorkoutEvent) then) =
      _$WorkoutEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkoutEventCopyWithImpl<$Res> implements $WorkoutEventCopyWith<$Res> {
  _$WorkoutEventCopyWithImpl(this._value, this._then);

  final WorkoutEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutEvent) _then;
}

/// @nodoc
abstract class _$WorkoutCreatedCopyWith<$Res> {
  factory _$WorkoutCreatedCopyWith(
          _WorkoutCreated value, $Res Function(_WorkoutCreated) then) =
      __$WorkoutCreatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WorkoutCreatedCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$WorkoutCreatedCopyWith<$Res> {
  __$WorkoutCreatedCopyWithImpl(
      _WorkoutCreated _value, $Res Function(_WorkoutCreated) _then)
      : super(_value, (v) => _then(v as _WorkoutCreated));

  @override
  _WorkoutCreated get _value => super._value as _WorkoutCreated;
}

/// @nodoc
class _$_WorkoutCreated
    with DiagnosticableTreeMixin
    implements _WorkoutCreated {
  const _$_WorkoutCreated();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.createNewWorkout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.createNewWorkout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutCreated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return createNewWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createNewWorkout != null) {
      return createNewWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return createNewWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (createNewWorkout != null) {
      return createNewWorkout(this);
    }
    return orElse();
  }
}

abstract class _WorkoutCreated implements WorkoutEvent {
  const factory _WorkoutCreated() = _$_WorkoutCreated;
}

/// @nodoc
abstract class _$AddExerciseToWorkoutCopyWith<$Res> {
  factory _$AddExerciseToWorkoutCopyWith(_AddExerciseToWorkout value,
          $Res Function(_AddExerciseToWorkout) then) =
      __$AddExerciseToWorkoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$AddExerciseToWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$AddExerciseToWorkoutCopyWith<$Res> {
  __$AddExerciseToWorkoutCopyWithImpl(
      _AddExerciseToWorkout _value, $Res Function(_AddExerciseToWorkout) _then)
      : super(_value, (v) => _then(v as _AddExerciseToWorkout));

  @override
  _AddExerciseToWorkout get _value => super._value as _AddExerciseToWorkout;
}

/// @nodoc
class _$_AddExerciseToWorkout
    with DiagnosticableTreeMixin
    implements _AddExerciseToWorkout {
  const _$_AddExerciseToWorkout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.addExerciseToWorkout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.addExerciseToWorkout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _AddExerciseToWorkout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addExerciseToWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addExerciseToWorkout != null) {
      return addExerciseToWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addExerciseToWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addExerciseToWorkout != null) {
      return addExerciseToWorkout(this);
    }
    return orElse();
  }
}

abstract class _AddExerciseToWorkout implements WorkoutEvent {
  const factory _AddExerciseToWorkout() = _$_AddExerciseToWorkout;
}

/// @nodoc
abstract class _$WorkoutCompletedCopyWith<$Res> {
  factory _$WorkoutCompletedCopyWith(
          _WorkoutCompleted value, $Res Function(_WorkoutCompleted) then) =
      __$WorkoutCompletedCopyWithImpl<$Res>;
}

/// @nodoc
class __$WorkoutCompletedCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$WorkoutCompletedCopyWith<$Res> {
  __$WorkoutCompletedCopyWithImpl(
      _WorkoutCompleted _value, $Res Function(_WorkoutCompleted) _then)
      : super(_value, (v) => _then(v as _WorkoutCompleted));

  @override
  _WorkoutCompleted get _value => super._value as _WorkoutCompleted;
}

/// @nodoc
class _$_WorkoutCompleted
    with DiagnosticableTreeMixin
    implements _WorkoutCompleted {
  const _$_WorkoutCompleted();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.workoutCompleted()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.workoutCompleted'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _WorkoutCompleted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return workoutCompleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutCompleted != null) {
      return workoutCompleted();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return workoutCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutCompleted != null) {
      return workoutCompleted(this);
    }
    return orElse();
  }
}

abstract class _WorkoutCompleted implements WorkoutEvent {
  const factory _WorkoutCompleted() = _$_WorkoutCompleted;
}

/// @nodoc
abstract class _$DeleteWorkoutCopyWith<$Res> {
  factory _$DeleteWorkoutCopyWith(
          _DeleteWorkout value, $Res Function(_DeleteWorkout) then) =
      __$DeleteWorkoutCopyWithImpl<$Res>;
  $Res call({String workoutId});
}

/// @nodoc
class __$DeleteWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$DeleteWorkoutCopyWith<$Res> {
  __$DeleteWorkoutCopyWithImpl(
      _DeleteWorkout _value, $Res Function(_DeleteWorkout) _then)
      : super(_value, (v) => _then(v as _DeleteWorkout));

  @override
  _DeleteWorkout get _value => super._value as _DeleteWorkout;

  @override
  $Res call({
    Object workoutId = freezed,
  }) {
    return _then(_DeleteWorkout(
      workoutId == freezed ? _value.workoutId : workoutId as String,
    ));
  }
}

/// @nodoc
class _$_DeleteWorkout with DiagnosticableTreeMixin implements _DeleteWorkout {
  const _$_DeleteWorkout(this.workoutId) : assert(workoutId != null);

  @override
  final String workoutId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.deleteWorkout(workoutId: $workoutId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.deleteWorkout'))
      ..add(DiagnosticsProperty('workoutId', workoutId));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteWorkout &&
            (identical(other.workoutId, workoutId) ||
                const DeepCollectionEquality()
                    .equals(other.workoutId, workoutId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workoutId);

  @override
  _$DeleteWorkoutCopyWith<_DeleteWorkout> get copyWith =>
      __$DeleteWorkoutCopyWithImpl<_DeleteWorkout>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return deleteWorkout(workoutId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteWorkout != null) {
      return deleteWorkout(workoutId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return deleteWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteWorkout != null) {
      return deleteWorkout(this);
    }
    return orElse();
  }
}

abstract class _DeleteWorkout implements WorkoutEvent {
  const factory _DeleteWorkout(String workoutId) = _$_DeleteWorkout;

  String get workoutId;
  _$DeleteWorkoutCopyWith<_DeleteWorkout> get copyWith;
}

/// @nodoc
abstract class _$CancelWorkoutCopyWith<$Res> {
  factory _$CancelWorkoutCopyWith(
          _CancelWorkout value, $Res Function(_CancelWorkout) then) =
      __$CancelWorkoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$CancelWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$CancelWorkoutCopyWith<$Res> {
  __$CancelWorkoutCopyWithImpl(
      _CancelWorkout _value, $Res Function(_CancelWorkout) _then)
      : super(_value, (v) => _then(v as _CancelWorkout));

  @override
  _CancelWorkout get _value => super._value as _CancelWorkout;
}

/// @nodoc
class _$_CancelWorkout with DiagnosticableTreeMixin implements _CancelWorkout {
  const _$_CancelWorkout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.cancelWorkout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutEvent.cancelWorkout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _CancelWorkout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return cancelWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelWorkout != null) {
      return cancelWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return cancelWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelWorkout != null) {
      return cancelWorkout(this);
    }
    return orElse();
  }
}

abstract class _CancelWorkout implements WorkoutEvent {
  const factory _CancelWorkout() = _$_CancelWorkout;
}

/// @nodoc
abstract class _$FinishWorkoutCopyWith<$Res> {
  factory _$FinishWorkoutCopyWith(
          _FinishWorkout value, $Res Function(_FinishWorkout) then) =
      __$FinishWorkoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$FinishWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$FinishWorkoutCopyWith<$Res> {
  __$FinishWorkoutCopyWithImpl(
      _FinishWorkout _value, $Res Function(_FinishWorkout) _then)
      : super(_value, (v) => _then(v as _FinishWorkout));

  @override
  _FinishWorkout get _value => super._value as _FinishWorkout;
}

/// @nodoc
class _$_FinishWorkout with DiagnosticableTreeMixin implements _FinishWorkout {
  const _$_FinishWorkout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.finishWorkout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'WorkoutEvent.finishWorkout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _FinishWorkout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return finishWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishWorkout != null) {
      return finishWorkout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return finishWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (finishWorkout != null) {
      return finishWorkout(this);
    }
    return orElse();
  }
}

abstract class _FinishWorkout implements WorkoutEvent {
  const factory _FinishWorkout() = _$_FinishWorkout;
}

/// @nodoc
abstract class _$ChangeTitleCopyWith<$Res> {
  factory _$ChangeTitleCopyWith(
          _ChangeTitle value, $Res Function(_ChangeTitle) then) =
      __$ChangeTitleCopyWithImpl<$Res>;
  $Res call({String inputStr});
}

/// @nodoc
class __$ChangeTitleCopyWithImpl<$Res> extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$ChangeTitleCopyWith<$Res> {
  __$ChangeTitleCopyWithImpl(
      _ChangeTitle _value, $Res Function(_ChangeTitle) _then)
      : super(_value, (v) => _then(v as _ChangeTitle));

  @override
  _ChangeTitle get _value => super._value as _ChangeTitle;

  @override
  $Res call({
    Object inputStr = freezed,
  }) {
    return _then(_ChangeTitle(
      inputStr == freezed ? _value.inputStr : inputStr as String,
    ));
  }
}

/// @nodoc
class _$_ChangeTitle with DiagnosticableTreeMixin implements _ChangeTitle {
  const _$_ChangeTitle(this.inputStr) : assert(inputStr != null);

  @override
  final String inputStr;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.changeTitle(inputStr: $inputStr)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.changeTitle'))
      ..add(DiagnosticsProperty('inputStr', inputStr));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChangeTitle &&
            (identical(other.inputStr, inputStr) ||
                const DeepCollectionEquality()
                    .equals(other.inputStr, inputStr)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(inputStr);

  @override
  _$ChangeTitleCopyWith<_ChangeTitle> get copyWith =>
      __$ChangeTitleCopyWithImpl<_ChangeTitle>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return changeTitle(inputStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeTitle != null) {
      return changeTitle(inputStr);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (changeTitle != null) {
      return changeTitle(this);
    }
    return orElse();
  }
}

abstract class _ChangeTitle implements WorkoutEvent {
  const factory _ChangeTitle(String inputStr) = _$_ChangeTitle;

  String get inputStr;
  _$ChangeTitleCopyWith<_ChangeTitle> get copyWith;
}

/// @nodoc
abstract class _$AddSeriesToExerciseCopyWith<$Res> {
  factory _$AddSeriesToExerciseCopyWith(_AddSeriesToExercise value,
          $Res Function(_AddSeriesToExercise) then) =
      __$AddSeriesToExerciseCopyWithImpl<$Res>;
  $Res call({int exerciseNumber});
}

/// @nodoc
class __$AddSeriesToExerciseCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$AddSeriesToExerciseCopyWith<$Res> {
  __$AddSeriesToExerciseCopyWithImpl(
      _AddSeriesToExercise _value, $Res Function(_AddSeriesToExercise) _then)
      : super(_value, (v) => _then(v as _AddSeriesToExercise));

  @override
  _AddSeriesToExercise get _value => super._value as _AddSeriesToExercise;

  @override
  $Res call({
    Object exerciseNumber = freezed,
  }) {
    return _then(_AddSeriesToExercise(
      exerciseNumber == freezed ? _value.exerciseNumber : exerciseNumber as int,
    ));
  }
}

/// @nodoc
class _$_AddSeriesToExercise
    with DiagnosticableTreeMixin
    implements _AddSeriesToExercise {
  const _$_AddSeriesToExercise(this.exerciseNumber)
      : assert(exerciseNumber != null);

  @override
  final int exerciseNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.addSeriesToExercise(exerciseNumber: $exerciseNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.addSeriesToExercise'))
      ..add(DiagnosticsProperty('exerciseNumber', exerciseNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddSeriesToExercise &&
            (identical(other.exerciseNumber, exerciseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseNumber, exerciseNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseNumber);

  @override
  _$AddSeriesToExerciseCopyWith<_AddSeriesToExercise> get copyWith =>
      __$AddSeriesToExerciseCopyWithImpl<_AddSeriesToExercise>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addSeriesToExercise(exerciseNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSeriesToExercise != null) {
      return addSeriesToExercise(exerciseNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addSeriesToExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addSeriesToExercise != null) {
      return addSeriesToExercise(this);
    }
    return orElse();
  }
}

abstract class _AddSeriesToExercise implements WorkoutEvent {
  const factory _AddSeriesToExercise(int exerciseNumber) =
      _$_AddSeriesToExercise;

  int get exerciseNumber;
  _$AddSeriesToExerciseCopyWith<_AddSeriesToExercise> get copyWith;
}

/// @nodoc
abstract class _$RemoveExerciseFromWorkoutCopyWith<$Res> {
  factory _$RemoveExerciseFromWorkoutCopyWith(_RemoveExerciseFromWorkout value,
          $Res Function(_RemoveExerciseFromWorkout) then) =
      __$RemoveExerciseFromWorkoutCopyWithImpl<$Res>;
  $Res call({int numberOfExercsie});
}

/// @nodoc
class __$RemoveExerciseFromWorkoutCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$RemoveExerciseFromWorkoutCopyWith<$Res> {
  __$RemoveExerciseFromWorkoutCopyWithImpl(_RemoveExerciseFromWorkout _value,
      $Res Function(_RemoveExerciseFromWorkout) _then)
      : super(_value, (v) => _then(v as _RemoveExerciseFromWorkout));

  @override
  _RemoveExerciseFromWorkout get _value =>
      super._value as _RemoveExerciseFromWorkout;

  @override
  $Res call({
    Object numberOfExercsie = freezed,
  }) {
    return _then(_RemoveExerciseFromWorkout(
      numberOfExercsie == freezed
          ? _value.numberOfExercsie
          : numberOfExercsie as int,
    ));
  }
}

/// @nodoc
class _$_RemoveExerciseFromWorkout
    with DiagnosticableTreeMixin
    implements _RemoveExerciseFromWorkout {
  const _$_RemoveExerciseFromWorkout(this.numberOfExercsie)
      : assert(numberOfExercsie != null);

  @override
  final int numberOfExercsie;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.removeExerciseFromWorkout(numberOfExercsie: $numberOfExercsie)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'WorkoutEvent.removeExerciseFromWorkout'))
      ..add(DiagnosticsProperty('numberOfExercsie', numberOfExercsie));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveExerciseFromWorkout &&
            (identical(other.numberOfExercsie, numberOfExercsie) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfExercsie, numberOfExercsie)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(numberOfExercsie);

  @override
  _$RemoveExerciseFromWorkoutCopyWith<_RemoveExerciseFromWorkout>
      get copyWith =>
          __$RemoveExerciseFromWorkoutCopyWithImpl<_RemoveExerciseFromWorkout>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return removeExerciseFromWorkout(numberOfExercsie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeExerciseFromWorkout != null) {
      return removeExerciseFromWorkout(numberOfExercsie);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return removeExerciseFromWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeExerciseFromWorkout != null) {
      return removeExerciseFromWorkout(this);
    }
    return orElse();
  }
}

abstract class _RemoveExerciseFromWorkout implements WorkoutEvent {
  const factory _RemoveExerciseFromWorkout(int numberOfExercsie) =
      _$_RemoveExerciseFromWorkout;

  int get numberOfExercsie;
  _$RemoveExerciseFromWorkoutCopyWith<_RemoveExerciseFromWorkout> get copyWith;
}

/// @nodoc
abstract class _$RemoveSeriesFromExerciseCopyWith<$Res> {
  factory _$RemoveSeriesFromExerciseCopyWith(_RemoveSeriesFromExercise value,
          $Res Function(_RemoveSeriesFromExercise) then) =
      __$RemoveSeriesFromExerciseCopyWithImpl<$Res>;
  $Res call({int exerciseNumber, int numberOfSeries});
}

/// @nodoc
class __$RemoveSeriesFromExerciseCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$RemoveSeriesFromExerciseCopyWith<$Res> {
  __$RemoveSeriesFromExerciseCopyWithImpl(_RemoveSeriesFromExercise _value,
      $Res Function(_RemoveSeriesFromExercise) _then)
      : super(_value, (v) => _then(v as _RemoveSeriesFromExercise));

  @override
  _RemoveSeriesFromExercise get _value =>
      super._value as _RemoveSeriesFromExercise;

  @override
  $Res call({
    Object exerciseNumber = freezed,
    Object numberOfSeries = freezed,
  }) {
    return _then(_RemoveSeriesFromExercise(
      exerciseNumber == freezed ? _value.exerciseNumber : exerciseNumber as int,
      numberOfSeries == freezed ? _value.numberOfSeries : numberOfSeries as int,
    ));
  }
}

/// @nodoc
class _$_RemoveSeriesFromExercise
    with DiagnosticableTreeMixin
    implements _RemoveSeriesFromExercise {
  const _$_RemoveSeriesFromExercise(this.exerciseNumber, this.numberOfSeries)
      : assert(exerciseNumber != null),
        assert(numberOfSeries != null);

  @override
  final int exerciseNumber;
  @override
  final int numberOfSeries;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.removeSeriesFromExercise(exerciseNumber: $exerciseNumber, numberOfSeries: $numberOfSeries)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'WorkoutEvent.removeSeriesFromExercise'))
      ..add(DiagnosticsProperty('exerciseNumber', exerciseNumber))
      ..add(DiagnosticsProperty('numberOfSeries', numberOfSeries));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RemoveSeriesFromExercise &&
            (identical(other.exerciseNumber, exerciseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseNumber, exerciseNumber)) &&
            (identical(other.numberOfSeries, numberOfSeries) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfSeries, numberOfSeries)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseNumber) ^
      const DeepCollectionEquality().hash(numberOfSeries);

  @override
  _$RemoveSeriesFromExerciseCopyWith<_RemoveSeriesFromExercise> get copyWith =>
      __$RemoveSeriesFromExerciseCopyWithImpl<_RemoveSeriesFromExercise>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return removeSeriesFromExercise(exerciseNumber, numberOfSeries);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeSeriesFromExercise != null) {
      return removeSeriesFromExercise(exerciseNumber, numberOfSeries);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return removeSeriesFromExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (removeSeriesFromExercise != null) {
      return removeSeriesFromExercise(this);
    }
    return orElse();
  }
}

abstract class _RemoveSeriesFromExercise implements WorkoutEvent {
  const factory _RemoveSeriesFromExercise(
      int exerciseNumber, int numberOfSeries) = _$_RemoveSeriesFromExercise;

  int get exerciseNumber;
  int get numberOfSeries;
  _$RemoveSeriesFromExerciseCopyWith<_RemoveSeriesFromExercise> get copyWith;
}

/// @nodoc
abstract class _$AddWeightToSeriesCopyWith<$Res> {
  factory _$AddWeightToSeriesCopyWith(
          _AddWeightToSeries value, $Res Function(_AddWeightToSeries) then) =
      __$AddWeightToSeriesCopyWithImpl<$Res>;
  $Res call({int exerciseNumber, int seriesNumber, String weight});
}

/// @nodoc
class __$AddWeightToSeriesCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$AddWeightToSeriesCopyWith<$Res> {
  __$AddWeightToSeriesCopyWithImpl(
      _AddWeightToSeries _value, $Res Function(_AddWeightToSeries) _then)
      : super(_value, (v) => _then(v as _AddWeightToSeries));

  @override
  _AddWeightToSeries get _value => super._value as _AddWeightToSeries;

  @override
  $Res call({
    Object exerciseNumber = freezed,
    Object seriesNumber = freezed,
    Object weight = freezed,
  }) {
    return _then(_AddWeightToSeries(
      exerciseNumber == freezed ? _value.exerciseNumber : exerciseNumber as int,
      seriesNumber == freezed ? _value.seriesNumber : seriesNumber as int,
      weight == freezed ? _value.weight : weight as String,
    ));
  }
}

/// @nodoc
class _$_AddWeightToSeries
    with DiagnosticableTreeMixin
    implements _AddWeightToSeries {
  const _$_AddWeightToSeries(
      this.exerciseNumber, this.seriesNumber, this.weight)
      : assert(exerciseNumber != null),
        assert(seriesNumber != null),
        assert(weight != null);

  @override
  final int exerciseNumber;
  @override
  final int seriesNumber;
  @override
  final String weight;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.addWeightToSeries(exerciseNumber: $exerciseNumber, seriesNumber: $seriesNumber, weight: $weight)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.addWeightToSeries'))
      ..add(DiagnosticsProperty('exerciseNumber', exerciseNumber))
      ..add(DiagnosticsProperty('seriesNumber', seriesNumber))
      ..add(DiagnosticsProperty('weight', weight));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddWeightToSeries &&
            (identical(other.exerciseNumber, exerciseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseNumber, exerciseNumber)) &&
            (identical(other.seriesNumber, seriesNumber) ||
                const DeepCollectionEquality()
                    .equals(other.seriesNumber, seriesNumber)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseNumber) ^
      const DeepCollectionEquality().hash(seriesNumber) ^
      const DeepCollectionEquality().hash(weight);

  @override
  _$AddWeightToSeriesCopyWith<_AddWeightToSeries> get copyWith =>
      __$AddWeightToSeriesCopyWithImpl<_AddWeightToSeries>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addWeightToSeries(exerciseNumber, seriesNumber, weight);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addWeightToSeries != null) {
      return addWeightToSeries(exerciseNumber, seriesNumber, weight);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addWeightToSeries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addWeightToSeries != null) {
      return addWeightToSeries(this);
    }
    return orElse();
  }
}

abstract class _AddWeightToSeries implements WorkoutEvent {
  const factory _AddWeightToSeries(
          int exerciseNumber, int seriesNumber, String weight) =
      _$_AddWeightToSeries;

  int get exerciseNumber;
  int get seriesNumber;
  String get weight;
  _$AddWeightToSeriesCopyWith<_AddWeightToSeries> get copyWith;
}

/// @nodoc
abstract class _$AddRepsToSeriesCopyWith<$Res> {
  factory _$AddRepsToSeriesCopyWith(
          _AddRepsToSeries value, $Res Function(_AddRepsToSeries) then) =
      __$AddRepsToSeriesCopyWithImpl<$Res>;
  $Res call({int exerciseNumber, int seriesNumber, String reps});
}

/// @nodoc
class __$AddRepsToSeriesCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$AddRepsToSeriesCopyWith<$Res> {
  __$AddRepsToSeriesCopyWithImpl(
      _AddRepsToSeries _value, $Res Function(_AddRepsToSeries) _then)
      : super(_value, (v) => _then(v as _AddRepsToSeries));

  @override
  _AddRepsToSeries get _value => super._value as _AddRepsToSeries;

  @override
  $Res call({
    Object exerciseNumber = freezed,
    Object seriesNumber = freezed,
    Object reps = freezed,
  }) {
    return _then(_AddRepsToSeries(
      exerciseNumber == freezed ? _value.exerciseNumber : exerciseNumber as int,
      seriesNumber == freezed ? _value.seriesNumber : seriesNumber as int,
      reps == freezed ? _value.reps : reps as String,
    ));
  }
}

/// @nodoc
class _$_AddRepsToSeries
    with DiagnosticableTreeMixin
    implements _AddRepsToSeries {
  const _$_AddRepsToSeries(this.exerciseNumber, this.seriesNumber, this.reps)
      : assert(exerciseNumber != null),
        assert(seriesNumber != null),
        assert(reps != null);

  @override
  final int exerciseNumber;
  @override
  final int seriesNumber;
  @override
  final String reps;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.addRepsToSeries(exerciseNumber: $exerciseNumber, seriesNumber: $seriesNumber, reps: $reps)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.addRepsToSeries'))
      ..add(DiagnosticsProperty('exerciseNumber', exerciseNumber))
      ..add(DiagnosticsProperty('seriesNumber', seriesNumber))
      ..add(DiagnosticsProperty('reps', reps));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddRepsToSeries &&
            (identical(other.exerciseNumber, exerciseNumber) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseNumber, exerciseNumber)) &&
            (identical(other.seriesNumber, seriesNumber) ||
                const DeepCollectionEquality()
                    .equals(other.seriesNumber, seriesNumber)) &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseNumber) ^
      const DeepCollectionEquality().hash(seriesNumber) ^
      const DeepCollectionEquality().hash(reps);

  @override
  _$AddRepsToSeriesCopyWith<_AddRepsToSeries> get copyWith =>
      __$AddRepsToSeriesCopyWithImpl<_AddRepsToSeries>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addRepsToSeries(exerciseNumber, seriesNumber, reps);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addRepsToSeries != null) {
      return addRepsToSeries(exerciseNumber, seriesNumber, reps);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addRepsToSeries(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addRepsToSeries != null) {
      return addRepsToSeries(this);
    }
    return orElse();
  }
}

abstract class _AddRepsToSeries implements WorkoutEvent {
  const factory _AddRepsToSeries(
      int exerciseNumber, int seriesNumber, String reps) = _$_AddRepsToSeries;

  int get exerciseNumber;
  int get seriesNumber;
  String get reps;
  _$AddRepsToSeriesCopyWith<_AddRepsToSeries> get copyWith;
}

/// @nodoc
abstract class _$AddExerciseNameCopyWith<$Res> {
  factory _$AddExerciseNameCopyWith(
          _AddExerciseName value, $Res Function(_AddExerciseName) then) =
      __$AddExerciseNameCopyWithImpl<$Res>;
  $Res call({String name, int numberOfExercise});
}

/// @nodoc
class __$AddExerciseNameCopyWithImpl<$Res>
    extends _$WorkoutEventCopyWithImpl<$Res>
    implements _$AddExerciseNameCopyWith<$Res> {
  __$AddExerciseNameCopyWithImpl(
      _AddExerciseName _value, $Res Function(_AddExerciseName) _then)
      : super(_value, (v) => _then(v as _AddExerciseName));

  @override
  _AddExerciseName get _value => super._value as _AddExerciseName;

  @override
  $Res call({
    Object name = freezed,
    Object numberOfExercise = freezed,
  }) {
    return _then(_AddExerciseName(
      name == freezed ? _value.name : name as String,
      numberOfExercise == freezed
          ? _value.numberOfExercise
          : numberOfExercise as int,
    ));
  }
}

/// @nodoc
class _$_AddExerciseName
    with DiagnosticableTreeMixin
    implements _AddExerciseName {
  const _$_AddExerciseName(this.name, this.numberOfExercise)
      : assert(name != null),
        assert(numberOfExercise != null);

  @override
  final String name;
  @override
  final int numberOfExercise;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutEvent.addExerciseName(name: $name, numberOfExercise: $numberOfExercise)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutEvent.addExerciseName'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('numberOfExercise', numberOfExercise));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _AddExerciseName &&
            (identical(other.name, name) ||
                const DeepCollectionEquality().equals(other.name, name)) &&
            (identical(other.numberOfExercise, numberOfExercise) ||
                const DeepCollectionEquality()
                    .equals(other.numberOfExercise, numberOfExercise)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(name) ^
      const DeepCollectionEquality().hash(numberOfExercise);

  @override
  _$AddExerciseNameCopyWith<_AddExerciseName> get copyWith =>
      __$AddExerciseNameCopyWithImpl<_AddExerciseName>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result createNewWorkout(),
    @required Result addExerciseToWorkout(),
    @required Result workoutCompleted(),
    @required Result deleteWorkout(String workoutId),
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required
        Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    @required
        Result addWeightToSeries(
            int exerciseNumber, int seriesNumber, String weight),
    @required
        Result addRepsToSeries(
            int exerciseNumber, int seriesNumber, String reps),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addExerciseName(name, numberOfExercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result deleteWorkout(String workoutId),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result removeSeriesFromExercise(int exerciseNumber, int numberOfSeries),
    Result addWeightToSeries(
        int exerciseNumber, int seriesNumber, String weight),
    Result addRepsToSeries(int exerciseNumber, int seriesNumber, String reps),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addExerciseName != null) {
      return addExerciseName(name, numberOfExercise);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result deleteWorkout(_DeleteWorkout value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    @required Result addWeightToSeries(_AddWeightToSeries value),
    @required Result addRepsToSeries(_AddRepsToSeries value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(deleteWorkout != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(removeSeriesFromExercise != null);
    assert(addWeightToSeries != null);
    assert(addRepsToSeries != null);
    assert(addExerciseName != null);
    return addExerciseName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result deleteWorkout(_DeleteWorkout value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    Result removeSeriesFromExercise(_RemoveSeriesFromExercise value),
    Result addWeightToSeries(_AddWeightToSeries value),
    Result addRepsToSeries(_AddRepsToSeries value),
    Result addExerciseName(_AddExerciseName value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (addExerciseName != null) {
      return addExerciseName(this);
    }
    return orElse();
  }
}

abstract class _AddExerciseName implements WorkoutEvent {
  const factory _AddExerciseName(String name, int numberOfExercise) =
      _$_AddExerciseName;

  String get name;
  int get numberOfExercise;
  _$AddExerciseNameCopyWith<_AddExerciseName> get copyWith;
}

/// @nodoc
class _$WorkoutStateTearOff {
  const _$WorkoutStateTearOff();

// ignore: unused_element
  _WorkoutState call(
      {@required
          Workout workout,
      @required
          List<bool> showErrorMessagesForExerciseName,
      @required
          List<bool> showErrorMessagesForSeries,
      @required
          List<bool> showErrorMessagesForResults,
      @required
          bool isEditing,
      @required
          bool isWotkoutTitleEditing,
      @required
          bool isCanceled,
      @required
          bool isSaved,
      @required
          bool isDeleted,
      @required
          Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption}) {
    return _WorkoutState(
      workout: workout,
      showErrorMessagesForExerciseName: showErrorMessagesForExerciseName,
      showErrorMessagesForSeries: showErrorMessagesForSeries,
      showErrorMessagesForResults: showErrorMessagesForResults,
      isEditing: isEditing,
      isWotkoutTitleEditing: isWotkoutTitleEditing,
      isCanceled: isCanceled,
      isSaved: isSaved,
      isDeleted: isDeleted,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutState = _$WorkoutStateTearOff();

/// @nodoc
mixin _$WorkoutState {
  Workout get workout;
  List<bool> get showErrorMessagesForExerciseName;
  List<bool> get showErrorMessagesForSeries;
  List<bool> get showErrorMessagesForResults;
  bool get isEditing;
  bool get isWotkoutTitleEditing;
  bool get isCanceled;
  bool get isSaved;
  bool get isDeleted;
  Option<Either<WorkoutFailure, Unit>> get saveFailureOrSuccessOption;

  $WorkoutStateCopyWith<WorkoutState> get copyWith;
}

/// @nodoc
abstract class $WorkoutStateCopyWith<$Res> {
  factory $WorkoutStateCopyWith(
          WorkoutState value, $Res Function(WorkoutState) then) =
      _$WorkoutStateCopyWithImpl<$Res>;
  $Res call(
      {Workout workout,
      List<bool> showErrorMessagesForExerciseName,
      List<bool> showErrorMessagesForSeries,
      List<bool> showErrorMessagesForResults,
      bool isEditing,
      bool isWotkoutTitleEditing,
      bool isCanceled,
      bool isSaved,
      bool isDeleted,
      Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption});

  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class _$WorkoutStateCopyWithImpl<$Res> implements $WorkoutStateCopyWith<$Res> {
  _$WorkoutStateCopyWithImpl(this._value, this._then);

  final WorkoutState _value;
  // ignore: unused_field
  final $Res Function(WorkoutState) _then;

  @override
  $Res call({
    Object workout = freezed,
    Object showErrorMessagesForExerciseName = freezed,
    Object showErrorMessagesForSeries = freezed,
    Object showErrorMessagesForResults = freezed,
    Object isEditing = freezed,
    Object isWotkoutTitleEditing = freezed,
    Object isCanceled = freezed,
    Object isSaved = freezed,
    Object isDeleted = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      workout: workout == freezed ? _value.workout : workout as Workout,
      showErrorMessagesForExerciseName:
          showErrorMessagesForExerciseName == freezed
              ? _value.showErrorMessagesForExerciseName
              : showErrorMessagesForExerciseName as List<bool>,
      showErrorMessagesForSeries: showErrorMessagesForSeries == freezed
          ? _value.showErrorMessagesForSeries
          : showErrorMessagesForSeries as List<bool>,
      showErrorMessagesForResults: showErrorMessagesForResults == freezed
          ? _value.showErrorMessagesForResults
          : showErrorMessagesForResults as List<bool>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isWotkoutTitleEditing: isWotkoutTitleEditing == freezed
          ? _value.isWotkoutTitleEditing
          : isWotkoutTitleEditing as bool,
      isCanceled:
          isCanceled == freezed ? _value.isCanceled : isCanceled as bool,
      isSaved: isSaved == freezed ? _value.isSaved : isSaved as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<WorkoutFailure, Unit>>,
    ));
  }

  @override
  $WorkoutCopyWith<$Res> get workout {
    if (_value.workout == null) {
      return null;
    }
    return $WorkoutCopyWith<$Res>(_value.workout, (value) {
      return _then(_value.copyWith(workout: value));
    });
  }
}

/// @nodoc
abstract class _$WorkoutStateCopyWith<$Res>
    implements $WorkoutStateCopyWith<$Res> {
  factory _$WorkoutStateCopyWith(
          _WorkoutState value, $Res Function(_WorkoutState) then) =
      __$WorkoutStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Workout workout,
      List<bool> showErrorMessagesForExerciseName,
      List<bool> showErrorMessagesForSeries,
      List<bool> showErrorMessagesForResults,
      bool isEditing,
      bool isWotkoutTitleEditing,
      bool isCanceled,
      bool isSaved,
      bool isDeleted,
      Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $WorkoutCopyWith<$Res> get workout;
}

/// @nodoc
class __$WorkoutStateCopyWithImpl<$Res> extends _$WorkoutStateCopyWithImpl<$Res>
    implements _$WorkoutStateCopyWith<$Res> {
  __$WorkoutStateCopyWithImpl(
      _WorkoutState _value, $Res Function(_WorkoutState) _then)
      : super(_value, (v) => _then(v as _WorkoutState));

  @override
  _WorkoutState get _value => super._value as _WorkoutState;

  @override
  $Res call({
    Object workout = freezed,
    Object showErrorMessagesForExerciseName = freezed,
    Object showErrorMessagesForSeries = freezed,
    Object showErrorMessagesForResults = freezed,
    Object isEditing = freezed,
    Object isWotkoutTitleEditing = freezed,
    Object isCanceled = freezed,
    Object isSaved = freezed,
    Object isDeleted = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_WorkoutState(
      workout: workout == freezed ? _value.workout : workout as Workout,
      showErrorMessagesForExerciseName:
          showErrorMessagesForExerciseName == freezed
              ? _value.showErrorMessagesForExerciseName
              : showErrorMessagesForExerciseName as List<bool>,
      showErrorMessagesForSeries: showErrorMessagesForSeries == freezed
          ? _value.showErrorMessagesForSeries
          : showErrorMessagesForSeries as List<bool>,
      showErrorMessagesForResults: showErrorMessagesForResults == freezed
          ? _value.showErrorMessagesForResults
          : showErrorMessagesForResults as List<bool>,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isWotkoutTitleEditing: isWotkoutTitleEditing == freezed
          ? _value.isWotkoutTitleEditing
          : isWotkoutTitleEditing as bool,
      isCanceled:
          isCanceled == freezed ? _value.isCanceled : isCanceled as bool,
      isSaved: isSaved == freezed ? _value.isSaved : isSaved as bool,
      isDeleted: isDeleted == freezed ? _value.isDeleted : isDeleted as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption as Option<Either<WorkoutFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_WorkoutState with DiagnosticableTreeMixin implements _WorkoutState {
  const _$_WorkoutState(
      {@required this.workout,
      @required this.showErrorMessagesForExerciseName,
      @required this.showErrorMessagesForSeries,
      @required this.showErrorMessagesForResults,
      @required this.isEditing,
      @required this.isWotkoutTitleEditing,
      @required this.isCanceled,
      @required this.isSaved,
      @required this.isDeleted,
      @required this.saveFailureOrSuccessOption})
      : assert(workout != null),
        assert(showErrorMessagesForExerciseName != null),
        assert(showErrorMessagesForSeries != null),
        assert(showErrorMessagesForResults != null),
        assert(isEditing != null),
        assert(isWotkoutTitleEditing != null),
        assert(isCanceled != null),
        assert(isSaved != null),
        assert(isDeleted != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Workout workout;
  @override
  final List<bool> showErrorMessagesForExerciseName;
  @override
  final List<bool> showErrorMessagesForSeries;
  @override
  final List<bool> showErrorMessagesForResults;
  @override
  final bool isEditing;
  @override
  final bool isWotkoutTitleEditing;
  @override
  final bool isCanceled;
  @override
  final bool isSaved;
  @override
  final bool isDeleted;
  @override
  final Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState(workout: $workout, showErrorMessagesForExerciseName: $showErrorMessagesForExerciseName, showErrorMessagesForSeries: $showErrorMessagesForSeries, showErrorMessagesForResults: $showErrorMessagesForResults, isEditing: $isEditing, isWotkoutTitleEditing: $isWotkoutTitleEditing, isCanceled: $isCanceled, isSaved: $isSaved, isDeleted: $isDeleted, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState'))
      ..add(DiagnosticsProperty('workout', workout))
      ..add(DiagnosticsProperty(
          'showErrorMessagesForExerciseName', showErrorMessagesForExerciseName))
      ..add(DiagnosticsProperty(
          'showErrorMessagesForSeries', showErrorMessagesForSeries))
      ..add(DiagnosticsProperty(
          'showErrorMessagesForResults', showErrorMessagesForResults))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isWotkoutTitleEditing', isWotkoutTitleEditing))
      ..add(DiagnosticsProperty('isCanceled', isCanceled))
      ..add(DiagnosticsProperty('isSaved', isSaved))
      ..add(DiagnosticsProperty('isDeleted', isDeleted))
      ..add(DiagnosticsProperty(
          'saveFailureOrSuccessOption', saveFailureOrSuccessOption));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutState &&
            (identical(other.workout, workout) ||
                const DeepCollectionEquality()
                    .equals(other.workout, workout)) &&
            (identical(other.showErrorMessagesForExerciseName,
                    showErrorMessagesForExerciseName) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesForExerciseName,
                    showErrorMessagesForExerciseName)) &&
            (identical(other.showErrorMessagesForSeries, showErrorMessagesForSeries) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesForSeries,
                    showErrorMessagesForSeries)) &&
            (identical(other.showErrorMessagesForResults, showErrorMessagesForResults) ||
                const DeepCollectionEquality().equals(
                    other.showErrorMessagesForResults,
                    showErrorMessagesForResults)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isWotkoutTitleEditing, isWotkoutTitleEditing) ||
                const DeepCollectionEquality().equals(
                    other.isWotkoutTitleEditing, isWotkoutTitleEditing)) &&
            (identical(other.isCanceled, isCanceled) ||
                const DeepCollectionEquality()
                    .equals(other.isCanceled, isCanceled)) &&
            (identical(other.isSaved, isSaved) ||
                const DeepCollectionEquality()
                    .equals(other.isSaved, isSaved)) &&
            (identical(other.isDeleted, isDeleted) ||
                const DeepCollectionEquality()
                    .equals(other.isDeleted, isDeleted)) &&
            (identical(other.saveFailureOrSuccessOption, saveFailureOrSuccessOption) ||
                const DeepCollectionEquality()
                    .equals(other.saveFailureOrSuccessOption, saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(showErrorMessagesForExerciseName) ^
      const DeepCollectionEquality().hash(showErrorMessagesForSeries) ^
      const DeepCollectionEquality().hash(showErrorMessagesForResults) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isWotkoutTitleEditing) ^
      const DeepCollectionEquality().hash(isCanceled) ^
      const DeepCollectionEquality().hash(isSaved) ^
      const DeepCollectionEquality().hash(isDeleted) ^
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption);

  @override
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith =>
      __$WorkoutStateCopyWithImpl<_WorkoutState>(this, _$identity);
}

abstract class _WorkoutState implements WorkoutState {
  const factory _WorkoutState(
      {@required
          Workout workout,
      @required
          List<bool> showErrorMessagesForExerciseName,
      @required
          List<bool> showErrorMessagesForSeries,
      @required
          List<bool> showErrorMessagesForResults,
      @required
          bool isEditing,
      @required
          bool isWotkoutTitleEditing,
      @required
          bool isCanceled,
      @required
          bool isSaved,
      @required
          bool isDeleted,
      @required
          Option<Either<WorkoutFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_WorkoutState;

  @override
  Workout get workout;
  @override
  List<bool> get showErrorMessagesForExerciseName;
  @override
  List<bool> get showErrorMessagesForSeries;
  @override
  List<bool> get showErrorMessagesForResults;
  @override
  bool get isEditing;
  @override
  bool get isWotkoutTitleEditing;
  @override
  bool get isCanceled;
  @override
  bool get isSaved;
  @override
  bool get isDeleted;
  @override
  Option<Either<WorkoutFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith;
}
