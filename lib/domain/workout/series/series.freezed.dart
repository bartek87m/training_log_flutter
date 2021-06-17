// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SeriesTearOff {
  const _$SeriesTearOff();

  _Series call(
      {String? reps,
      String? result,
      String? resultFromlastTraining,
      bool? completed}) {
    return _Series(
      reps: reps,
      result: result,
      resultFromlastTraining: resultFromlastTraining,
      completed: completed,
    );
  }
}

/// @nodoc
const $Series = _$SeriesTearOff();

/// @nodoc
mixin _$Series {
  String? get reps => throw _privateConstructorUsedError;
  String? get result => throw _privateConstructorUsedError;
  String? get resultFromlastTraining =>
      throw _privateConstructorUsedError; //rezultat z poprzedniego treningu z tym ćwiczeniem
  bool? get completed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SeriesCopyWith<Series> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeriesCopyWith<$Res> {
  factory $SeriesCopyWith(Series value, $Res Function(Series) then) =
      _$SeriesCopyWithImpl<$Res>;
  $Res call(
      {String? reps,
      String? result,
      String? resultFromlastTraining,
      bool? completed});
}

/// @nodoc
class _$SeriesCopyWithImpl<$Res> implements $SeriesCopyWith<$Res> {
  _$SeriesCopyWithImpl(this._value, this._then);

  final Series _value;
  // ignore: unused_field
  final $Res Function(Series) _then;

  @override
  $Res call({
    Object? reps = freezed,
    Object? result = freezed,
    Object? resultFromlastTraining = freezed,
    Object? completed = freezed,
  }) {
    return _then(_value.copyWith(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      resultFromlastTraining: resultFromlastTraining == freezed
          ? _value.resultFromlastTraining
          : resultFromlastTraining // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$SeriesCopyWith<$Res> implements $SeriesCopyWith<$Res> {
  factory _$SeriesCopyWith(_Series value, $Res Function(_Series) then) =
      __$SeriesCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? reps,
      String? result,
      String? resultFromlastTraining,
      bool? completed});
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
    Object? reps = freezed,
    Object? result = freezed,
    Object? resultFromlastTraining = freezed,
    Object? completed = freezed,
  }) {
    return _then(_Series(
      reps: reps == freezed
          ? _value.reps
          : reps // ignore: cast_nullable_to_non_nullable
              as String?,
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as String?,
      resultFromlastTraining: resultFromlastTraining == freezed
          ? _value.resultFromlastTraining
          : resultFromlastTraining // ignore: cast_nullable_to_non_nullable
              as String?,
      completed: completed == freezed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Series implements _Series {
  const _$_Series(
      {this.reps, this.result, this.resultFromlastTraining, this.completed});

  @override
  final String? reps;
  @override
  final String? result;
  @override
  final String? resultFromlastTraining;
  @override //rezultat z poprzedniego treningu z tym ćwiczeniem
  final bool? completed;

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

  @JsonKey(ignore: true)
  @override
  _$SeriesCopyWith<_Series> get copyWith =>
      __$SeriesCopyWithImpl<_Series>(this, _$identity);
}

abstract class _Series implements Series {
  const factory _Series(
      {String? reps,
      String? result,
      String? resultFromlastTraining,
      bool? completed}) = _$_Series;

  @override
  String? get reps => throw _privateConstructorUsedError;
  @override
  String? get result => throw _privateConstructorUsedError;
  @override
  String? get resultFromlastTraining => throw _privateConstructorUsedError;
  @override //rezultat z poprzedniego treningu z tym ćwiczeniem
  bool? get completed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$SeriesCopyWith<_Series> get copyWith => throw _privateConstructorUsedError;
}
