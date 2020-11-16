// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

// ignore: unused_element
  _Exercise call(
      {@required String exerciseName,
      @required List<Set> setsList,
      String note}) {
    return _Exercise(
      exerciseName: exerciseName,
      setsList: setsList,
      note: note,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  String get exerciseName;
  List<Set> get setsList;
  String get note;

  $ExerciseCopyWith<Exercise> get copyWith;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call({String exerciseName, List<Set> setsList, String note});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object exerciseName = freezed,
    Object setsList = freezed,
    Object note = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName as String,
      setsList: setsList == freezed ? _value.setsList : setsList as List<Set>,
      note: note == freezed ? _value.note : note as String,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call({String exerciseName, List<Set> setsList, String note});
}

/// @nodoc
class __$ExerciseCopyWithImpl<$Res> extends _$ExerciseCopyWithImpl<$Res>
    implements _$ExerciseCopyWith<$Res> {
  __$ExerciseCopyWithImpl(_Exercise _value, $Res Function(_Exercise) _then)
      : super(_value, (v) => _then(v as _Exercise));

  @override
  _Exercise get _value => super._value as _Exercise;

  @override
  $Res call({
    Object exerciseName = freezed,
    Object setsList = freezed,
    Object note = freezed,
  }) {
    return _then(_Exercise(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName as String,
      setsList: setsList == freezed ? _value.setsList : setsList as List<Set>,
      note: note == freezed ? _value.note : note as String,
    ));
  }
}

/// @nodoc
class _$_Exercise implements _Exercise {
  const _$_Exercise(
      {@required this.exerciseName, @required this.setsList, this.note})
      : assert(exerciseName != null),
        assert(setsList != null);

  @override
  final String exerciseName;
  @override
  final List<Set> setsList;
  @override
  final String note;

  @override
  String toString() {
    return 'Exercise(exerciseName: $exerciseName, setsList: $setsList, note: $note)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Exercise &&
            (identical(other.exerciseName, exerciseName) ||
                const DeepCollectionEquality()
                    .equals(other.exerciseName, exerciseName)) &&
            (identical(other.setsList, setsList) ||
                const DeepCollectionEquality()
                    .equals(other.setsList, setsList)) &&
            (identical(other.note, note) ||
                const DeepCollectionEquality().equals(other.note, note)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(exerciseName) ^
      const DeepCollectionEquality().hash(setsList) ^
      const DeepCollectionEquality().hash(note);

  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {@required String exerciseName,
      @required List<Set> setsList,
      String note}) = _$_Exercise;

  @override
  String get exerciseName;
  @override
  List<Set> get setsList;
  @override
  String get note;
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith;
}
