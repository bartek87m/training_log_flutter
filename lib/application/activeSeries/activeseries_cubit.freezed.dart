// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'activeseries_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ActiveseriesStateTearOff {
  const _$ActiveseriesStateTearOff();

  _ActiveseriesState call(
      {Exercise? exercise,
      Series? activeSeries,
      int? activeSeriesNumber,
      Duration? timeForTimer}) {
    return _ActiveseriesState(
      exercise: exercise,
      activeSeries: activeSeries,
      activeSeriesNumber: activeSeriesNumber,
      timeForTimer: timeForTimer,
    );
  }
}

/// @nodoc
const $ActiveseriesState = _$ActiveseriesStateTearOff();

/// @nodoc
mixin _$ActiveseriesState {
  Exercise? get exercise => throw _privateConstructorUsedError;
  Series? get activeSeries => throw _privateConstructorUsedError;
  int? get activeSeriesNumber => throw _privateConstructorUsedError;
  Duration? get timeForTimer => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ActiveseriesStateCopyWith<ActiveseriesState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ActiveseriesStateCopyWith<$Res> {
  factory $ActiveseriesStateCopyWith(
          ActiveseriesState value, $Res Function(ActiveseriesState) then) =
      _$ActiveseriesStateCopyWithImpl<$Res>;
  $Res call(
      {Exercise? exercise,
      Series? activeSeries,
      int? activeSeriesNumber,
      Duration? timeForTimer});

  $ExerciseCopyWith<$Res>? get exercise;
  $SeriesCopyWith<$Res>? get activeSeries;
}

/// @nodoc
class _$ActiveseriesStateCopyWithImpl<$Res>
    implements $ActiveseriesStateCopyWith<$Res> {
  _$ActiveseriesStateCopyWithImpl(this._value, this._then);

  final ActiveseriesState _value;
  // ignore: unused_field
  final $Res Function(ActiveseriesState) _then;

  @override
  $Res call({
    Object? exercise = freezed,
    Object? activeSeries = freezed,
    Object? activeSeriesNumber = freezed,
    Object? timeForTimer = freezed,
  }) {
    return _then(_value.copyWith(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise?,
      activeSeries: activeSeries == freezed
          ? _value.activeSeries
          : activeSeries // ignore: cast_nullable_to_non_nullable
              as Series?,
      activeSeriesNumber: activeSeriesNumber == freezed
          ? _value.activeSeriesNumber
          : activeSeriesNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      timeForTimer: timeForTimer == freezed
          ? _value.timeForTimer
          : timeForTimer // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }

  @override
  $ExerciseCopyWith<$Res>? get exercise {
    if (_value.exercise == null) {
      return null;
    }

    return $ExerciseCopyWith<$Res>(_value.exercise!, (value) {
      return _then(_value.copyWith(exercise: value));
    });
  }

  @override
  $SeriesCopyWith<$Res>? get activeSeries {
    if (_value.activeSeries == null) {
      return null;
    }

    return $SeriesCopyWith<$Res>(_value.activeSeries!, (value) {
      return _then(_value.copyWith(activeSeries: value));
    });
  }
}

/// @nodoc
abstract class _$ActiveseriesStateCopyWith<$Res>
    implements $ActiveseriesStateCopyWith<$Res> {
  factory _$ActiveseriesStateCopyWith(
          _ActiveseriesState value, $Res Function(_ActiveseriesState) then) =
      __$ActiveseriesStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {Exercise? exercise,
      Series? activeSeries,
      int? activeSeriesNumber,
      Duration? timeForTimer});

  @override
  $ExerciseCopyWith<$Res>? get exercise;
  @override
  $SeriesCopyWith<$Res>? get activeSeries;
}

/// @nodoc
class __$ActiveseriesStateCopyWithImpl<$Res>
    extends _$ActiveseriesStateCopyWithImpl<$Res>
    implements _$ActiveseriesStateCopyWith<$Res> {
  __$ActiveseriesStateCopyWithImpl(
      _ActiveseriesState _value, $Res Function(_ActiveseriesState) _then)
      : super(_value, (v) => _then(v as _ActiveseriesState));

  @override
  _ActiveseriesState get _value => super._value as _ActiveseriesState;

  @override
  $Res call({
    Object? exercise = freezed,
    Object? activeSeries = freezed,
    Object? activeSeriesNumber = freezed,
    Object? timeForTimer = freezed,
  }) {
    return _then(_ActiveseriesState(
      exercise: exercise == freezed
          ? _value.exercise
          : exercise // ignore: cast_nullable_to_non_nullable
              as Exercise?,
      activeSeries: activeSeries == freezed
          ? _value.activeSeries
          : activeSeries // ignore: cast_nullable_to_non_nullable
              as Series?,
      activeSeriesNumber: activeSeriesNumber == freezed
          ? _value.activeSeriesNumber
          : activeSeriesNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      timeForTimer: timeForTimer == freezed
          ? _value.timeForTimer
          : timeForTimer // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$_ActiveseriesState implements _ActiveseriesState {
  const _$_ActiveseriesState(
      {this.exercise,
      this.activeSeries,
      this.activeSeriesNumber,
      this.timeForTimer});

  @override
  final Exercise? exercise;
  @override
  final Series? activeSeries;
  @override
  final int? activeSeriesNumber;
  @override
  final Duration? timeForTimer;

  @override
  String toString() {
    return 'ActiveseriesState(exercise: $exercise, activeSeries: $activeSeries, activeSeriesNumber: $activeSeriesNumber, timeForTimer: $timeForTimer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ActiveseriesState &&
            const DeepCollectionEquality().equals(other.exercise, exercise) &&
            const DeepCollectionEquality()
                .equals(other.activeSeries, activeSeries) &&
            const DeepCollectionEquality()
                .equals(other.activeSeriesNumber, activeSeriesNumber) &&
            const DeepCollectionEquality()
                .equals(other.timeForTimer, timeForTimer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(exercise),
      const DeepCollectionEquality().hash(activeSeries),
      const DeepCollectionEquality().hash(activeSeriesNumber),
      const DeepCollectionEquality().hash(timeForTimer));

  @JsonKey(ignore: true)
  @override
  _$ActiveseriesStateCopyWith<_ActiveseriesState> get copyWith =>
      __$ActiveseriesStateCopyWithImpl<_ActiveseriesState>(this, _$identity);
}

abstract class _ActiveseriesState implements ActiveseriesState {
  const factory _ActiveseriesState(
      {Exercise? exercise,
      Series? activeSeries,
      int? activeSeriesNumber,
      Duration? timeForTimer}) = _$_ActiveseriesState;

  @override
  Exercise? get exercise;
  @override
  Series? get activeSeries;
  @override
  int? get activeSeriesNumber;
  @override
  Duration? get timeForTimer;
  @override
  @JsonKey(ignore: true)
  _$ActiveseriesStateCopyWith<_ActiveseriesState> get copyWith =>
      throw _privateConstructorUsedError;
}
