// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'workoutform_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$WorkoutformStateTearOff {
  const _$WorkoutformStateTearOff();

  _WorkoutformState call(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate,
      bool? toogleRebuild}) {
    return _WorkoutformState(
      id: id,
      title: title,
      workoutDate: workoutDate,
      exercieList: exercieList,
      updateDate: updateDate,
      toogleRebuild: toogleRebuild,
    );
  }
}

/// @nodoc
const $WorkoutformState = _$WorkoutformStateTearOff();

/// @nodoc
mixin _$WorkoutformState {
  UniqueId? get id => throw _privateConstructorUsedError;
  Title? get title => throw _privateConstructorUsedError;
  DateTime? get workoutDate => throw _privateConstructorUsedError;
  List<Exercise>? get exercieList =>
      throw _privateConstructorUsedError; // @required List<Wod> wodList,
  DateTime? get updateDate => throw _privateConstructorUsedError;
  bool? get toogleRebuild => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WorkoutformStateCopyWith<WorkoutformState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WorkoutformStateCopyWith<$Res> {
  factory $WorkoutformStateCopyWith(
          WorkoutformState value, $Res Function(WorkoutformState) then) =
      _$WorkoutformStateCopyWithImpl<$Res>;
  $Res call(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate,
      bool? toogleRebuild});
}

/// @nodoc
class _$WorkoutformStateCopyWithImpl<$Res>
    implements $WorkoutformStateCopyWith<$Res> {
  _$WorkoutformStateCopyWithImpl(this._value, this._then);

  final WorkoutformState _value;
  // ignore: unused_field
  final $Res Function(WorkoutformState) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? workoutDate = freezed,
    Object? exercieList = freezed,
    Object? updateDate = freezed,
    Object? toogleRebuild = freezed,
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
      toogleRebuild: toogleRebuild == freezed
          ? _value.toogleRebuild
          : toogleRebuild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$WorkoutformStateCopyWith<$Res>
    implements $WorkoutformStateCopyWith<$Res> {
  factory _$WorkoutformStateCopyWith(
          _WorkoutformState value, $Res Function(_WorkoutformState) then) =
      __$WorkoutformStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate,
      bool? toogleRebuild});
}

/// @nodoc
class __$WorkoutformStateCopyWithImpl<$Res>
    extends _$WorkoutformStateCopyWithImpl<$Res>
    implements _$WorkoutformStateCopyWith<$Res> {
  __$WorkoutformStateCopyWithImpl(
      _WorkoutformState _value, $Res Function(_WorkoutformState) _then)
      : super(_value, (v) => _then(v as _WorkoutformState));

  @override
  _WorkoutformState get _value => super._value as _WorkoutformState;

  @override
  $Res call({
    Object? id = freezed,
    Object? title = freezed,
    Object? workoutDate = freezed,
    Object? exercieList = freezed,
    Object? updateDate = freezed,
    Object? toogleRebuild = freezed,
  }) {
    return _then(_WorkoutformState(
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
      toogleRebuild: toogleRebuild == freezed
          ? _value.toogleRebuild
          : toogleRebuild // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_WorkoutformState implements _WorkoutformState {
  const _$_WorkoutformState(
      {this.id,
      this.title,
      this.workoutDate,
      this.exercieList,
      this.updateDate,
      this.toogleRebuild});

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
  final bool? toogleRebuild;

  @override
  String toString() {
    return 'WorkoutformState(id: $id, title: $title, workoutDate: $workoutDate, exercieList: $exercieList, updateDate: $updateDate, toogleRebuild: $toogleRebuild)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WorkoutformState &&
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
            (identical(other.updateDate, updateDate) ||
                const DeepCollectionEquality()
                    .equals(other.updateDate, updateDate)) &&
            (identical(other.toogleRebuild, toogleRebuild) ||
                const DeepCollectionEquality()
                    .equals(other.toogleRebuild, toogleRebuild)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(id) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(workoutDate) ^
      const DeepCollectionEquality().hash(exercieList) ^
      const DeepCollectionEquality().hash(updateDate) ^
      const DeepCollectionEquality().hash(toogleRebuild);

  @JsonKey(ignore: true)
  @override
  _$WorkoutformStateCopyWith<_WorkoutformState> get copyWith =>
      __$WorkoutformStateCopyWithImpl<_WorkoutformState>(this, _$identity);
}

abstract class _WorkoutformState implements WorkoutformState {
  const factory _WorkoutformState(
      {UniqueId? id,
      Title? title,
      DateTime? workoutDate,
      List<Exercise>? exercieList,
      DateTime? updateDate,
      bool? toogleRebuild}) = _$_WorkoutformState;

  @override
  UniqueId? get id => throw _privateConstructorUsedError;
  @override
  Title? get title => throw _privateConstructorUsedError;
  @override
  DateTime? get workoutDate => throw _privateConstructorUsedError;
  @override
  List<Exercise>? get exercieList => throw _privateConstructorUsedError;
  @override // @required List<Wod> wodList,
  DateTime? get updateDate => throw _privateConstructorUsedError;
  @override
  bool? get toogleRebuild => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$WorkoutformStateCopyWith<_WorkoutformState> get copyWith =>
      throw _privateConstructorUsedError;
}
