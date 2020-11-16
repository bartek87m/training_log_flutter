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
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result createNewWorkout(_WorkoutCreated value),
    @required Result addExerciseToWorkout(_AddExerciseToWorkout value),
    @required Result workoutCompleted(_WorkoutCompleted value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
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
class _$_WorkoutCreated implements _WorkoutCreated {
  const _$_WorkoutCreated();

  @override
  String toString() {
    return 'WorkoutEvent.createNewWorkout()';
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
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    return createNewWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
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
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    return createNewWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
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
class _$_AddExerciseToWorkout implements _AddExerciseToWorkout {
  const _$_AddExerciseToWorkout();

  @override
  String toString() {
    return 'WorkoutEvent.addExerciseToWorkout()';
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
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    return addExerciseToWorkout();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
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
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    return addExerciseToWorkout(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
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
class _$_WorkoutCompleted implements _WorkoutCompleted {
  const _$_WorkoutCompleted();

  @override
  String toString() {
    return 'WorkoutEvent.workoutCompleted()';
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
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    return workoutCompleted();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result createNewWorkout(),
    Result addExerciseToWorkout(),
    Result workoutCompleted(),
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
  }) {
    assert(createNewWorkout != null);
    assert(addExerciseToWorkout != null);
    assert(workoutCompleted != null);
    return workoutCompleted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result createNewWorkout(_WorkoutCreated value),
    Result addExerciseToWorkout(_AddExerciseToWorkout value),
    Result workoutCompleted(_WorkoutCompleted value),
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
class _$_WorkoutState implements _WorkoutState {
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
  String toString() {
    return 'WorkoutState(workout: $workout, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
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
