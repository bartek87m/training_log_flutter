// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'workoutwatcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WorkoutwatcherEventTearOff {
  const _$WorkoutwatcherEventTearOff();

// ignore: unused_element
  _DownloadWorkouts downloadWorkouts() {
    return const _DownloadWorkouts();
  }

// ignore: unused_element
  _WorkoutsReceived workoutsReceived(
      Either<WorkoutFailure, List<Workout>> failureOrWorkouts) {
    return _WorkoutsReceived(
      failureOrWorkouts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutwatcherEvent = _$WorkoutwatcherEventTearOff();

/// @nodoc
mixin _$WorkoutwatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result downloadWorkouts(),
    @required
        Result workoutsReceived(
            Either<WorkoutFailure, List<Workout>> failureOrWorkouts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result downloadWorkouts(),
    Result workoutsReceived(
        Either<WorkoutFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result downloadWorkouts(_DownloadWorkouts value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result downloadWorkouts(_DownloadWorkouts value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WorkoutwatcherEventCopyWith<$Res> {
  factory $WorkoutwatcherEventCopyWith(
          WorkoutwatcherEvent value, $Res Function(WorkoutwatcherEvent) then) =
      _$WorkoutwatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkoutwatcherEventCopyWithImpl<$Res>
    implements $WorkoutwatcherEventCopyWith<$Res> {
  _$WorkoutwatcherEventCopyWithImpl(this._value, this._then);

  final WorkoutwatcherEvent _value;
  // ignore: unused_field
  final $Res Function(WorkoutwatcherEvent) _then;
}

/// @nodoc
abstract class _$DownloadWorkoutsCopyWith<$Res> {
  factory _$DownloadWorkoutsCopyWith(
          _DownloadWorkouts value, $Res Function(_DownloadWorkouts) then) =
      __$DownloadWorkoutsCopyWithImpl<$Res>;
}

/// @nodoc
class __$DownloadWorkoutsCopyWithImpl<$Res>
    extends _$WorkoutwatcherEventCopyWithImpl<$Res>
    implements _$DownloadWorkoutsCopyWith<$Res> {
  __$DownloadWorkoutsCopyWithImpl(
      _DownloadWorkouts _value, $Res Function(_DownloadWorkouts) _then)
      : super(_value, (v) => _then(v as _DownloadWorkouts));

  @override
  _DownloadWorkouts get _value => super._value as _DownloadWorkouts;
}

/// @nodoc
class _$_DownloadWorkouts implements _DownloadWorkouts {
  const _$_DownloadWorkouts();

  @override
  String toString() {
    return 'WorkoutwatcherEvent.downloadWorkouts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _DownloadWorkouts);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result downloadWorkouts(),
    @required
        Result workoutsReceived(
            Either<WorkoutFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(downloadWorkouts != null);
    assert(workoutsReceived != null);
    return downloadWorkouts();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result downloadWorkouts(),
    Result workoutsReceived(
        Either<WorkoutFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (downloadWorkouts != null) {
      return downloadWorkouts();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result downloadWorkouts(_DownloadWorkouts value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  }) {
    assert(downloadWorkouts != null);
    assert(workoutsReceived != null);
    return downloadWorkouts(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result downloadWorkouts(_DownloadWorkouts value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (downloadWorkouts != null) {
      return downloadWorkouts(this);
    }
    return orElse();
  }
}

abstract class _DownloadWorkouts implements WorkoutwatcherEvent {
  const factory _DownloadWorkouts() = _$_DownloadWorkouts;
}

/// @nodoc
abstract class _$WorkoutsReceivedCopyWith<$Res> {
  factory _$WorkoutsReceivedCopyWith(
          _WorkoutsReceived value, $Res Function(_WorkoutsReceived) then) =
      __$WorkoutsReceivedCopyWithImpl<$Res>;
  $Res call({Either<WorkoutFailure, List<Workout>> failureOrWorkouts});
}

/// @nodoc
class __$WorkoutsReceivedCopyWithImpl<$Res>
    extends _$WorkoutwatcherEventCopyWithImpl<$Res>
    implements _$WorkoutsReceivedCopyWith<$Res> {
  __$WorkoutsReceivedCopyWithImpl(
      _WorkoutsReceived _value, $Res Function(_WorkoutsReceived) _then)
      : super(_value, (v) => _then(v as _WorkoutsReceived));

  @override
  _WorkoutsReceived get _value => super._value as _WorkoutsReceived;

  @override
  $Res call({
    Object failureOrWorkouts = freezed,
  }) {
    return _then(_WorkoutsReceived(
      failureOrWorkouts == freezed
          ? _value.failureOrWorkouts
          : failureOrWorkouts as Either<WorkoutFailure, List<Workout>>,
    ));
  }
}

/// @nodoc
class _$_WorkoutsReceived implements _WorkoutsReceived {
  const _$_WorkoutsReceived(this.failureOrWorkouts)
      : assert(failureOrWorkouts != null);

  @override
  final Either<WorkoutFailure, List<Workout>> failureOrWorkouts;

  @override
  String toString() {
    return 'WorkoutwatcherEvent.workoutsReceived(failureOrWorkouts: $failureOrWorkouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutsReceived &&
            (identical(other.failureOrWorkouts, failureOrWorkouts) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrWorkouts, failureOrWorkouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrWorkouts);

  @override
  _$WorkoutsReceivedCopyWith<_WorkoutsReceived> get copyWith =>
      __$WorkoutsReceivedCopyWithImpl<_WorkoutsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result downloadWorkouts(),
    @required
        Result workoutsReceived(
            Either<WorkoutFailure, List<Workout>> failureOrWorkouts),
  }) {
    assert(downloadWorkouts != null);
    assert(workoutsReceived != null);
    return workoutsReceived(failureOrWorkouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result downloadWorkouts(),
    Result workoutsReceived(
        Either<WorkoutFailure, List<Workout>> failureOrWorkouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsReceived != null) {
      return workoutsReceived(failureOrWorkouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result downloadWorkouts(_DownloadWorkouts value),
    @required Result workoutsReceived(_WorkoutsReceived value),
  }) {
    assert(downloadWorkouts != null);
    assert(workoutsReceived != null);
    return workoutsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result downloadWorkouts(_DownloadWorkouts value),
    Result workoutsReceived(_WorkoutsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutsReceived != null) {
      return workoutsReceived(this);
    }
    return orElse();
  }
}

abstract class _WorkoutsReceived implements WorkoutwatcherEvent {
  const factory _WorkoutsReceived(
          Either<WorkoutFailure, List<Workout>> failureOrWorkouts) =
      _$_WorkoutsReceived;

  Either<WorkoutFailure, List<Workout>> get failureOrWorkouts;
  _$WorkoutsReceivedCopyWith<_WorkoutsReceived> get copyWith;
}

/// @nodoc
class _$WorkoutwatcherStateTearOff {
  const _$WorkoutwatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _Loading loading() {
    return const _Loading();
  }

// ignore: unused_element
  _LoadFailure loadFailure(WorkoutFailure workoutfailure) {
    return _LoadFailure(
      workoutfailure,
    );
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(List<Workout> workouts) {
    return _LoadSuccess(
      workouts,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $WorkoutwatcherState = _$WorkoutwatcherStateTearOff();

/// @nodoc
mixin _$WorkoutwatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(WorkoutFailure workoutfailure),
    @required Result loadSuccess(List<Workout> workouts),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(WorkoutFailure workoutfailure),
    Result loadSuccess(List<Workout> workouts),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadSuccess(_LoadSuccess value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadSuccess(_LoadSuccess value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $WorkoutwatcherStateCopyWith<$Res> {
  factory $WorkoutwatcherStateCopyWith(
          WorkoutwatcherState value, $Res Function(WorkoutwatcherState) then) =
      _$WorkoutwatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$WorkoutwatcherStateCopyWithImpl<$Res>
    implements $WorkoutwatcherStateCopyWith<$Res> {
  _$WorkoutwatcherStateCopyWithImpl(this._value, this._then);

  final WorkoutwatcherState _value;
  // ignore: unused_field
  final $Res Function(WorkoutwatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res>
    extends _$WorkoutwatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'WorkoutwatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(WorkoutFailure workoutfailure),
    @required Result loadSuccess(List<Workout> workouts),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(WorkoutFailure workoutfailure),
    Result loadSuccess(List<Workout> workouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadSuccess(_LoadSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WorkoutwatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadingCopyWith<$Res> {
  factory _$LoadingCopyWith(_Loading value, $Res Function(_Loading) then) =
      __$LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadingCopyWithImpl<$Res>
    extends _$WorkoutwatcherStateCopyWithImpl<$Res>
    implements _$LoadingCopyWith<$Res> {
  __$LoadingCopyWithImpl(_Loading _value, $Res Function(_Loading) _then)
      : super(_value, (v) => _then(v as _Loading));

  @override
  _Loading get _value => super._value as _Loading;
}

/// @nodoc
class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'WorkoutwatcherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(WorkoutFailure workoutfailure),
    @required Result loadSuccess(List<Workout> workouts),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loading();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(WorkoutFailure workoutfailure),
    Result loadSuccess(List<Workout> workouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loading(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadSuccess(_LoadSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements WorkoutwatcherState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$LoadFailureCopyWith<$Res> {
  factory _$LoadFailureCopyWith(
          _LoadFailure value, $Res Function(_LoadFailure) then) =
      __$LoadFailureCopyWithImpl<$Res>;
  $Res call({WorkoutFailure workoutfailure});

  $WorkoutFailureCopyWith<$Res> get workoutfailure;
}

/// @nodoc
class __$LoadFailureCopyWithImpl<$Res>
    extends _$WorkoutwatcherStateCopyWithImpl<$Res>
    implements _$LoadFailureCopyWith<$Res> {
  __$LoadFailureCopyWithImpl(
      _LoadFailure _value, $Res Function(_LoadFailure) _then)
      : super(_value, (v) => _then(v as _LoadFailure));

  @override
  _LoadFailure get _value => super._value as _LoadFailure;

  @override
  $Res call({
    Object workoutfailure = freezed,
  }) {
    return _then(_LoadFailure(
      workoutfailure == freezed
          ? _value.workoutfailure
          : workoutfailure as WorkoutFailure,
    ));
  }

  @override
  $WorkoutFailureCopyWith<$Res> get workoutfailure {
    if (_value.workoutfailure == null) {
      return null;
    }
    return $WorkoutFailureCopyWith<$Res>(_value.workoutfailure, (value) {
      return _then(_value.copyWith(workoutfailure: value));
    });
  }
}

/// @nodoc
class _$_LoadFailure implements _LoadFailure {
  const _$_LoadFailure(this.workoutfailure) : assert(workoutfailure != null);

  @override
  final WorkoutFailure workoutfailure;

  @override
  String toString() {
    return 'WorkoutwatcherState.loadFailure(workoutfailure: $workoutfailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadFailure &&
            (identical(other.workoutfailure, workoutfailure) ||
                const DeepCollectionEquality()
                    .equals(other.workoutfailure, workoutfailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(workoutfailure);

  @override
  _$LoadFailureCopyWith<_LoadFailure> get copyWith =>
      __$LoadFailureCopyWithImpl<_LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(WorkoutFailure workoutfailure),
    @required Result loadSuccess(List<Workout> workouts),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadFailure(workoutfailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(WorkoutFailure workoutfailure),
    Result loadSuccess(List<Workout> workouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(workoutfailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadSuccess(_LoadSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class _LoadFailure implements WorkoutwatcherState {
  const factory _LoadFailure(WorkoutFailure workoutfailure) = _$_LoadFailure;

  WorkoutFailure get workoutfailure;
  _$LoadFailureCopyWith<_LoadFailure> get copyWith;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;
  $Res call({List<Workout> workouts});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$WorkoutwatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object workouts = freezed,
  }) {
    return _then(_LoadSuccess(
      workouts == freezed ? _value.workouts : workouts as List<Workout>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.workouts) : assert(workouts != null);

  @override
  final List<Workout> workouts;

  @override
  String toString() {
    return 'WorkoutwatcherState.loadSuccess(workouts: $workouts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.workouts, workouts) ||
                const DeepCollectionEquality()
                    .equals(other.workouts, workouts)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(workouts);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loading(),
    @required Result loadFailure(WorkoutFailure workoutfailure),
    @required Result loadSuccess(List<Workout> workouts),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(workouts);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loading(),
    Result loadFailure(WorkoutFailure workoutfailure),
    Result loadSuccess(List<Workout> workouts),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(workouts);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loading(_Loading value),
    @required Result loadFailure(_LoadFailure value),
    @required Result loadSuccess(_LoadSuccess value),
  }) {
    assert(initial != null);
    assert(loading != null);
    assert(loadFailure != null);
    assert(loadSuccess != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loading(_Loading value),
    Result loadFailure(_LoadFailure value),
    Result loadSuccess(_LoadSuccess value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements WorkoutwatcherState {
  const factory _LoadSuccess(List<Workout> workouts) = _$_LoadSuccess;

  List<Workout> get workouts;
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}
