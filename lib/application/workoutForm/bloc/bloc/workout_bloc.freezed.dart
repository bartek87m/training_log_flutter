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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
    Result addExerciseName(String name, int numberOfExercise),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return createNewWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return createNewWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return addExerciseToWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return addExerciseToWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return workoutCompleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return workoutCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return cancelWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return cancelWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return finishWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return finishWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return changeTitle(inputStr);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return changeTitle(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return addSeriesToExercise(exerciseNumber);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return addSeriesToExercise(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return removeExerciseFromWorkout(numberOfExercsie);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return removeExerciseFromWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
    @required Result cancelWorkout(),
    @required Result finishWorkout(),
    @required Result changeTitle(String inputStr),
    @required Result addSeriesToExercise(int exerciseNumber),
    @required Result removeExerciseFromWorkout(int numberOfExercsie),
    @required Result addExerciseName(String name, int numberOfExercise),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return addExerciseName(name, numberOfExercise);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    Result cancelWorkout(),
    Result finishWorkout(),
    Result changeTitle(String inputStr),
    Result addSeriesToExercise(int exerciseNumber),
    Result removeExerciseFromWorkout(int numberOfExercsie),
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
    @required Result cancelWorkout(_CancelWorkout value),
    @required Result finishWorkout(_FinishWorkout value),
    @required Result changeTitle(_ChangeTitle value),
    @required Result addSeriesToExercise(_AddSeriesToExercise value),
    @required
        Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
    @required Result addExerciseName(_AddExerciseName value),
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    assert(cancelWorkout != null);
    assert(finishWorkout != null);
    assert(changeTitle != null);
    assert(addSeriesToExercise != null);
    assert(removeExerciseFromWorkout != null);
    assert(addExerciseName != null);
    return addExerciseName(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
    Result cancelWorkout(_CancelWorkout value),
    Result finishWorkout(_FinishWorkout value),
    Result changeTitle(_ChangeTitle value),
    Result addSeriesToExercise(_AddSeriesToExercise value),
    Result removeExerciseFromWorkout(_RemoveExerciseFromWorkout value),
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
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption}) {
    return _WorkoutState(
      workout: workout,
      showErrorMessages: showErrorMessages,
      isEditing: isEditing,
      isSaving: isSaving,
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
  bool get showErrorMessages;
  bool get isEditing;
  bool get isSaving;
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
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
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
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      workout: workout == freezed ? _value.workout : workout as Workout,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
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
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
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
    Object showErrorMessages = freezed,
    Object isEditing = freezed,
    Object isSaving = freezed,
    Object saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_WorkoutState(
      workout: workout == freezed ? _value.workout : workout as Workout,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      isEditing: isEditing == freezed ? _value.isEditing : isEditing as bool,
      isSaving: isSaving == freezed ? _value.isSaving : isSaving as bool,
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
      @required this.showErrorMessages,
      @required this.isEditing,
      @required this.isSaving,
      @required this.saveFailureOrSuccessOption})
      : assert(workout != null),
        assert(showErrorMessages != null),
        assert(isEditing != null),
        assert(isSaving != null),
        assert(saveFailureOrSuccessOption != null);

  @override
  final Workout workout;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<WorkoutFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'WorkoutState(workout: $workout, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'WorkoutState'))
      ..add(DiagnosticsProperty('workout', workout))
      ..add(DiagnosticsProperty('showErrorMessages', showErrorMessages))
      ..add(DiagnosticsProperty('isEditing', isEditing))
      ..add(DiagnosticsProperty('isSaving', isSaving))
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
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.isEditing, isEditing) ||
                const DeepCollectionEquality()
                    .equals(other.isEditing, isEditing)) &&
            (identical(other.isSaving, isSaving) ||
                const DeepCollectionEquality()
                    .equals(other.isSaving, isSaving)) &&
            (identical(other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.saveFailureOrSuccessOption,
                    saveFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workout) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(isEditing) ^
      const DeepCollectionEquality().hash(isSaving) ^
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
          bool showErrorMessages,
      @required
          bool isEditing,
      @required
          bool isSaving,
      @required
          Option<Either<WorkoutFailure, Unit>>
              saveFailureOrSuccessOption}) = _$_WorkoutState;

  @override
  Workout get workout;
  @override
  bool get showErrorMessages;
  @override
  bool get isEditing;
  @override
  bool get isSaving;
  @override
  Option<Either<WorkoutFailure, Unit>> get saveFailureOrSuccessOption;
  @override
  _$WorkoutStateCopyWith<_WorkoutState> get copyWith;
}
