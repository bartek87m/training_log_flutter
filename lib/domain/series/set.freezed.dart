// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'set.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SetTearOff {
  const _$SetTearOff();

// ignore: unused_element
  _Set call(
      {String reps,
      String weight,
      String time,
      String resultFromlastTraining,
      bool completed}) {
    return _Set(
      reps: reps,
      weight: weight,
      time: time,
      resultFromlastTraining: resultFromlastTraining,
      completed: completed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Set = _$SetTearOff();

/// @nodoc
mixin _$Set {
  String get reps;
  String get weight;
  String get time;
  String
      get resultFromlastTraining; //rezultat z poprzedniego treningu z tym ćwiczeniem
  bool get completed;

  $SetCopyWith<Set> get copyWith;
}

/// @nodoc
abstract class $SetCopyWith<$Res> {
  factory $SetCopyWith(Set value, $Res Function(Set) then) =
      _$SetCopyWithImpl<$Res>;
  $Res call(
      {String reps,
      String weight,
      String time,
      String resultFromlastTraining,
      bool completed});
}

/// @nodoc
class _$SetCopyWithImpl<$Res> implements $SetCopyWith<$Res> {
  _$SetCopyWithImpl(this._value, this._then);

  final Set _value;
  // ignore: unused_field
  final $Res Function(Set) _then;

  @override
  $Res call({
    Object reps = freezed,
    Object weight = freezed,
    Object time = freezed,
    Object resultFromlastTraining = freezed,
    Object completed = freezed,
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed ? _value.reps : reps as String,
      weight: weight == freezed ? _value.weight : weight as String,
      time: time == freezed ? _value.time : time as String,
      resultFromlastTraining: resultFromlastTraining == freezed
          ? _value.resultFromlastTraining
          : resultFromlastTraining as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

/// @nodoc
abstract class _$SetCopyWith<$Res> implements $SetCopyWith<$Res> {
  factory _$SetCopyWith(_Set value, $Res Function(_Set) then) =
      __$SetCopyWithImpl<$Res>;
  @override
  $Res call(
      {String reps,
      String weight,
      String time,
      String resultFromlastTraining,
      bool completed});
}

/// @nodoc
class __$SetCopyWithImpl<$Res> extends _$SetCopyWithImpl<$Res>
    implements _$SetCopyWith<$Res> {
  __$SetCopyWithImpl(_Set _value, $Res Function(_Set) _then)
      : super(_value, (v) => _then(v as _Set));

  @override
  _Set get _value => super._value as _Set;

  @override
  $Res call({
    Object reps = freezed,
    Object weight = freezed,
    Object time = freezed,
    Object resultFromlastTraining = freezed,
    Object completed = freezed,
  }) {
    return _then(_Set(
      reps: reps == freezed ? _value.reps : reps as String,
      weight: weight == freezed ? _value.weight : weight as String,
      time: time == freezed ? _value.time : time as String,
      resultFromlastTraining: resultFromlastTraining == freezed
          ? _value.resultFromlastTraining
          : resultFromlastTraining as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

/// @nodoc
class _$_Set implements _Set {
  const _$_Set(
      {this.reps,
      this.weight,
      this.time,
      this.resultFromlastTraining,
      this.completed});

  @override
  final String reps;
  @override
  final String weight;
  @override
  final String time;
  @override
  final String resultFromlastTraining;
  @override //rezultat z poprzedniego treningu z tym ćwiczeniem
  final bool completed;

  @override
  String toString() {
    return 'Set(reps: $reps, weight: $weight, time: $time, resultFromlastTraining: $resultFromlastTraining, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Set &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)) &&
            (identical(other.resultFromlastTraining, resultFromlastTraining) ||
                const DeepCollectionEquality().equals(
                    other.resultFromlastTraining, resultFromlastTraining)) &&
            (identical(other.completed, completed) ||
                const DeepCollectionEquality()
                    .equals(other.completed, completed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(reps) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(time) ^
      const DeepCollectionEquality().hash(resultFromlastTraining) ^
      const DeepCollectionEquality().hash(completed);

  @override
  _$SetCopyWith<_Set> get copyWith =>
      __$SetCopyWithImpl<_Set>(this, _$identity);
}

abstract class _Set implements Set {
  const factory _Set(
      {String reps,
      String weight,
      String time,
      String resultFromlastTraining,
      bool completed}) = _$_Set;

  @override
  String get reps;
  @override
  String get weight;
  @override
  String get time;
  @override
  String get resultFromlastTraining;
  @override //rezultat z poprzedniego treningu z tym ćwiczeniem
  bool get completed;
  @override
  _$SetCopyWith<_Set> get copyWith;
}
