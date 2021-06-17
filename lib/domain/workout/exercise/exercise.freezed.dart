// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'exercise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ExerciseTearOff {
  const _$ExerciseTearOff();

  _Exercise call(
      {ExerciseName? exerciseName, List<Series>? setsList, String? note}) {
    return _Exercise(
      exerciseName: exerciseName,
      setsList: setsList,
      note: note,
    );
  }
}

/// @nodoc
const $Exercise = _$ExerciseTearOff();

/// @nodoc
mixin _$Exercise {
  ExerciseName? get exerciseName => throw _privateConstructorUsedError;
  List<Series>? get setsList => throw _privateConstructorUsedError;
  String? get note => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ExerciseCopyWith<Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExerciseCopyWith<$Res> {
  factory $ExerciseCopyWith(Exercise value, $Res Function(Exercise) then) =
      _$ExerciseCopyWithImpl<$Res>;
  $Res call({ExerciseName? exerciseName, List<Series>? setsList, String? note});
}

/// @nodoc
class _$ExerciseCopyWithImpl<$Res> implements $ExerciseCopyWith<$Res> {
  _$ExerciseCopyWithImpl(this._value, this._then);

  final Exercise _value;
  // ignore: unused_field
  final $Res Function(Exercise) _then;

  @override
  $Res call({
    Object? exerciseName = freezed,
    Object? setsList = freezed,
    Object? note = freezed,
  }) {
    return _then(_value.copyWith(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as ExerciseName?,
      setsList: setsList == freezed
          ? _value.setsList
          : setsList // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ExerciseCopyWith<$Res> implements $ExerciseCopyWith<$Res> {
  factory _$ExerciseCopyWith(_Exercise value, $Res Function(_Exercise) then) =
      __$ExerciseCopyWithImpl<$Res>;
  @override
  $Res call({ExerciseName? exerciseName, List<Series>? setsList, String? note});
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
    Object? exerciseName = freezed,
    Object? setsList = freezed,
    Object? note = freezed,
  }) {
    return _then(_Exercise(
      exerciseName: exerciseName == freezed
          ? _value.exerciseName
          : exerciseName // ignore: cast_nullable_to_non_nullable
              as ExerciseName?,
      setsList: setsList == freezed
          ? _value.setsList
          : setsList // ignore: cast_nullable_to_non_nullable
              as List<Series>?,
      note: note == freezed
          ? _value.note
          : note // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Exercise implements _Exercise {
  const _$_Exercise({this.exerciseName, this.setsList, this.note});

  @override
  final ExerciseName? exerciseName;
  @override
  final List<Series>? setsList;
  @override
  final String? note;

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

  @JsonKey(ignore: true)
  @override
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      __$ExerciseCopyWithImpl<_Exercise>(this, _$identity);
}

abstract class _Exercise implements Exercise {
  const factory _Exercise(
      {ExerciseName? exerciseName,
      List<Series>? setsList,
      String? note}) = _$_Exercise;

  @override
  ExerciseName? get exerciseName => throw _privateConstructorUsedError;
  @override
  List<Series>? get setsList => throw _privateConstructorUsedError;
  @override
  String? get note => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$ExerciseCopyWith<_Exercise> get copyWith =>
      throw _privateConstructorUsedError;
}
