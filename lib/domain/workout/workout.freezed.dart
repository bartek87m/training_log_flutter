// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'workout.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutTearOff {
  const _$WorkoutTearOff();

  _Workout call(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate}) {
    return _Workout(
      id: id,
      title: title,
      workoutDate: workoutDate,
      exercieList: exercieList,
      updateDate: updateDate,
    );
  }
}

/// @nodoc
const $Workout = _$WorkoutTearOff();

/// @nodoc
mixin _$Workout {
  UniqueId? get id => throw _privateConstructorUsedError;
  Title? get title => throw _privateConstructorUsedError;
  DateTime? get workoutDate => throw _privateConstructorUsedError;
  List<Exercise>? get exercieList =>
      throw _privateConstructorUsedError; // @required List<Wod> wodList,
  DateTime? get updateDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutCopyWith<Workout> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutCopyWith<$Res> {
  factory $WorkoutCopyWith(Workout value, $Res Function(Workout) then) =
      _$WorkoutCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate});
}

/// @nodoc
class _$WorkoutCopyWithImpl<$Res> implements $WorkoutCopyWith<$Res> {
  _$WorkoutCopyWithImpl(this._value, this._then);

  final Workout _value;
  // ignore: unused_field
  final $Res Function(Workout) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? workoutDate = freezed,
    Object? exercieList = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
      workoutDate: workoutDate == freezed
          ? _value.workoutDate
          : workoutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercieList: exercieList == freezed
          ? _value.exercieList
          : exercieList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutCopyWith<$Res> implements $WorkoutCopyWith<$Res> {
  factory _$WorkoutCopyWith(_Workout value, $Res Function(_Workout) then) =
      __$WorkoutCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate});
}

/// @nodoc
class __$WorkoutCopyWithImpl<$Res> extends _$WorkoutCopyWithImpl<$Res>
    implements _$WorkoutCopyWith<$Res> {
  __$WorkoutCopyWithImpl(_Workout _value, $Res Function(_Workout) _then)
      : super(_value, (v) => _then(v as _Workout));

  @override
  _Workout get _value => super._value as _Workout;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? workoutDate = freezed,
    Object? exercieList = freezed,
    Object? updateDate = freezed,
  }) {
    return _then(_Workout(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as UniqueId?,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as Title?,
      workoutDate: workoutDate == freezed
          ? _value.workoutDate
          : workoutDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      exercieList: exercieList == freezed
          ? _value.exercieList
          : exercieList // ignore: cast_nullable_to_non_nullable
              as List<Exercise>?,
      updateDate: updateDate == freezed
          ? _value.updateDate
          : updateDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc

class _$_Workout implements _Workout {
  const _$_Workout(
      {this.id,
      this.title,
      this.workoutDate,
      this.exercieList,
      this.updateDate});

  @override
  final UniqueId? id;
  @override
  final Title? title;
  @override
  final DateTime? workoutDate;
  @override
  final List<Exercise>? exercieList;
  @override // @required List<Wod> wodList,
  final DateTime? updateDate;

  @override
  String toString() {
    return 'Workout(id: $id, title: $title, workoutDate: $workoutDate, exercieList: $exercieList, updateDate: $updateDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Workout &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.workoutDate, workoutDate) &&
            const DeepCollectionEquality()
                .equals(other.exercieList, exercieList) &&
            const DeepCollectionEquality()
                .equals(other.updateDate, updateDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(workoutDate),
      const DeepCollectionEquality().hash(exercieList),
      const DeepCollectionEquality().hash(updateDate));

  @JsonKey(ignore: true)
  @override
  _$WorkoutCopyWith<_Workout> get copyWith =>
      __$WorkoutCopyWithImpl<_Workout>(this, _$identity);
}

abstract class _Workout implements Workout {
  const factory _Workout(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate}) = _$_Workout;

  @override
  UniqueId? get id;
  @override
  Title? get title;
  @override
  DateTime? get workoutDate;
  @override
  List<Exercise>? get exercieList;
  @override // @required List<Wod> wodList,
  DateTime? get updateDate;
  @override
  @JsonKey(ignore: true)
  _$WorkoutCopyWith<_Workout> get copyWith =>
      throw _privateConstructorUsedError;
}
