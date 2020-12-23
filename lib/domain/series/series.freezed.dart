// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$SeriesTearOff {
  const _$SeriesTearOff();

// ignore: unused_element
  _Series call(
      {Reps reps,
      Result result,
      String resultFromlastTraining,
      bool completed}) {
    return _Series(
      reps: reps,
      result: result,
      resultFromlastTraining: resultFromlastTraining,
      completed: completed,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Series = _$SeriesTearOff();

/// @nodoc
mixin _$Series {
  Reps get reps;
  Result get result;
  String
      get resultFromlastTraining; //rezultat z poprzedniego treningu z tym ćwiczeniem
  bool get completed;

  $SeriesCopyWith<Series> get copyWith;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res>;
  $Res call(
      {Reps reps,
      Result result,
      String resultFromlastTraining,
      bool completed});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res> implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  final Series _value;
  // ignore: unused_field
  final $Res Function(Series) _then;

  @override
  $Res call({
    Object reps = freezed,
    Object result = freezed,
    Object resultFromlastTraining = freezed,
    Object completed = freezed,
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed ? _value.reps : reps as Reps,
      result: result == freezed ? _value.result : result as Result,
      resultFromlastTraining: resultFromlastTraining == freezed
          ? _value.resultFromlastTraining
          : resultFromlastTraining as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

/// @nodoc
abstract class _$SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$SeriesCopyWith(_Series value, $Res Function(_Series) then) =
      __$SeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {Reps reps,
      Result result,
      String resultFromlastTraining,
      bool completed});
}

/// @nodoc
class __$SeriesCopyWithImpl<$Res> extends _$SeriesCopyWithImpl<$Res>
    implements _$SeriesCopyWith<$Res> {
  __$SeriesCopyWithImpl(_Series _value, $Res Function(_Series) _then)
      : super(_value, (v) => _then(v as _Series));

  @override
  _Series get _value => super._value as _Series;

  @override
  $Res call({
    Object reps = freezed,
    Object result = freezed,
    Object resultFromlastTraining = freezed,
    Object completed = freezed,
  }) {
    return _then(_Series(
      reps: reps == freezed ? _value.reps : reps as Reps,
      result: result == freezed ? _value.result : result as Result,
      resultFromlastTraining: resultFromlastTraining == freezed
          ? _value.resultFromlastTraining
          : resultFromlastTraining as String,
      completed: completed == freezed ? _value.completed : completed as bool,
    ));
  }
}

/// @nodoc
class _$_Series implements _Series {
  const _$_Series(
      {this.reps, this.result, this.resultFromlastTraining, this.completed});

  @override
  final Reps reps;
  @override
  final Result result;
  @override
  final String resultFromlastTraining;
  @override //rezultat z poprzedniego treningu z tym ćwiczeniem
  final bool completed;

  @override
  String toString() {
    return 'Series(reps: $reps, result: $result, resultFromlastTraining: $resultFromlastTraining, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Series &&
            (identical(other.reps, reps) ||
                const DeepCollectionEquality().equals(other.reps, reps)) &&
            (identical(other.result, result) ||
                const DeepCollectionEquality().equals(other.result, result)) &&
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
      const DeepCollectionEquality().hash(result) ^
      const DeepCollectionEquality().hash(resultFromlastTraining) ^
      const DeepCollectionEquality().hash(completed);

  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);
}

abstract class _Series implements Series {
  const factory _Series(
      {Reps reps,
      Result result,
      String resultFromlastTraining,
      bool completed}) = _$_Series;

  @override
  Reps get reps;
  @override
  Result get result;
  @override
  String get resultFromlastTraining;
  @override //rezultat z poprzedniego treningu z tym ćwiczeniem
  bool get completed;
  @override
  _$SeriesCopyWith<_Series> get copyWith;
}
