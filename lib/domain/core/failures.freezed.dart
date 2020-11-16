// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$ValueFailureTearOff {
  const _$ValueFailureTearOff();

// ignore: unused_element
  InvalidEmail<T> invalidEmail<T>({@required String failedValue}) {
    return InvalidEmail<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  ShortPassword<T> shortPassword<T>({@required String failedValue}) {
    return ShortPassword<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  PasswordsNotIdentical<T> passwordsNotIdentical<T>(
      {@required List<Password> failedValue}) {
    return PasswordsNotIdentical<T>(
      failedValue: failedValue,
    );
  }

// ignore: unused_element
  WorkoutTItleToLong<T> workoutTitleTolong<T>({@required String failedValue}) {
    return WorkoutTItleToLong<T>(
      failedValue: failedValue,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $ValueFailure = _$ValueFailureTearOff();

/// @nodoc
mixin _$ValueFailure<T> {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result passwordsNotIdentical(List<Password> failedValue),
    @required Result workoutTitleTolong(String failedValue),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result passwordsNotIdentical(List<Password> failedValue),
    Result workoutTitleTolong(String failedValue),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    @required Result workoutTitleTolong(WorkoutTItleToLong<T> value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    Result workoutTitleTolong(WorkoutTItleToLong<T> value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $ValueFailureCopyWith<T, $Res> {
  factory $ValueFailureCopyWith(
          ValueFailure<T> value, $Res Function(ValueFailure<T>) then) =
      _$ValueFailureCopyWithImpl<T, $Res>;
}

/// @nodoc
class _$ValueFailureCopyWithImpl<T, $Res>
    implements $ValueFailureCopyWith<T, $Res> {
  _$ValueFailureCopyWithImpl(this._value, this._then);

  final ValueFailure<T> _value;
  // ignore: unused_field
  final $Res Function(ValueFailure<T>) _then;
}

/// @nodoc
abstract class $InvalidEmailCopyWith<T, $Res> {
  factory $InvalidEmailCopyWith(
          InvalidEmail<T> value, $Res Function(InvalidEmail<T>) then) =
      _$InvalidEmailCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$InvalidEmailCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $InvalidEmailCopyWith<T, $Res> {
  _$InvalidEmailCopyWithImpl(
      InvalidEmail<T> _value, $Res Function(InvalidEmail<T>) _then)
      : super(_value, (v) => _then(v as InvalidEmail<T>));

  @override
  InvalidEmail<T> get _value => super._value as InvalidEmail<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(InvalidEmail<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$InvalidEmail<T> implements InvalidEmail<T> {
  const _$InvalidEmail({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.invalidEmail(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmail<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith =>
      _$InvalidEmailCopyWithImpl<T, InvalidEmail<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result passwordsNotIdentical(List<Password> failedValue),
    @required Result workoutTitleTolong(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return invalidEmail(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result passwordsNotIdentical(List<Password> failedValue),
    Result workoutTitleTolong(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    @required Result workoutTitleTolong(WorkoutTItleToLong<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return invalidEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    Result workoutTitleTolong(WorkoutTItleToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmail != null) {
      return invalidEmail(this);
    }
    return orElse();
  }
}

abstract class InvalidEmail<T> implements ValueFailure<T> {
  const factory InvalidEmail({@required String failedValue}) =
      _$InvalidEmail<T>;

  String get failedValue;
  $InvalidEmailCopyWith<T, InvalidEmail<T>> get copyWith;
}

/// @nodoc
abstract class $ShortPasswordCopyWith<T, $Res> {
  factory $ShortPasswordCopyWith(
          ShortPassword<T> value, $Res Function(ShortPassword<T>) then) =
      _$ShortPasswordCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$ShortPasswordCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $ShortPasswordCopyWith<T, $Res> {
  _$ShortPasswordCopyWithImpl(
      ShortPassword<T> _value, $Res Function(ShortPassword<T>) _then)
      : super(_value, (v) => _then(v as ShortPassword<T>));

  @override
  ShortPassword<T> get _value => super._value as ShortPassword<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(ShortPassword<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$ShortPassword<T> implements ShortPassword<T> {
  const _$ShortPassword({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.shortPassword(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortPassword<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith =>
      _$ShortPasswordCopyWithImpl<T, ShortPassword<T>>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result passwordsNotIdentical(List<Password> failedValue),
    @required Result workoutTitleTolong(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return shortPassword(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result passwordsNotIdentical(List<Password> failedValue),
    Result workoutTitleTolong(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    @required Result workoutTitleTolong(WorkoutTItleToLong<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return shortPassword(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    Result workoutTitleTolong(WorkoutTItleToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (shortPassword != null) {
      return shortPassword(this);
    }
    return orElse();
  }
}

abstract class ShortPassword<T> implements ValueFailure<T> {
  const factory ShortPassword({@required String failedValue}) =
      _$ShortPassword<T>;

  String get failedValue;
  $ShortPasswordCopyWith<T, ShortPassword<T>> get copyWith;
}

/// @nodoc
abstract class $PasswordsNotIdenticalCopyWith<T, $Res> {
  factory $PasswordsNotIdenticalCopyWith(PasswordsNotIdentical<T> value,
          $Res Function(PasswordsNotIdentical<T>) then) =
      _$PasswordsNotIdenticalCopyWithImpl<T, $Res>;
  $Res call({List<Password> failedValue});
}

/// @nodoc
class _$PasswordsNotIdenticalCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $PasswordsNotIdenticalCopyWith<T, $Res> {
  _$PasswordsNotIdenticalCopyWithImpl(PasswordsNotIdentical<T> _value,
      $Res Function(PasswordsNotIdentical<T>) _then)
      : super(_value, (v) => _then(v as PasswordsNotIdentical<T>));

  @override
  PasswordsNotIdentical<T> get _value =>
      super._value as PasswordsNotIdentical<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(PasswordsNotIdentical<T>(
      failedValue: failedValue == freezed
          ? _value.failedValue
          : failedValue as List<Password>,
    ));
  }
}

/// @nodoc
class _$PasswordsNotIdentical<T> implements PasswordsNotIdentical<T> {
  const _$PasswordsNotIdentical({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final List<Password> failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.passwordsNotIdentical(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is PasswordsNotIdentical<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $PasswordsNotIdenticalCopyWith<T, PasswordsNotIdentical<T>> get copyWith =>
      _$PasswordsNotIdenticalCopyWithImpl<T, PasswordsNotIdentical<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result passwordsNotIdentical(List<Password> failedValue),
    @required Result workoutTitleTolong(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return passwordsNotIdentical(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result passwordsNotIdentical(List<Password> failedValue),
    Result workoutTitleTolong(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordsNotIdentical != null) {
      return passwordsNotIdentical(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    @required Result workoutTitleTolong(WorkoutTItleToLong<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return passwordsNotIdentical(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    Result workoutTitleTolong(WorkoutTItleToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passwordsNotIdentical != null) {
      return passwordsNotIdentical(this);
    }
    return orElse();
  }
}

abstract class PasswordsNotIdentical<T> implements ValueFailure<T> {
  const factory PasswordsNotIdentical({@required List<Password> failedValue}) =
      _$PasswordsNotIdentical<T>;

  List<Password> get failedValue;
  $PasswordsNotIdenticalCopyWith<T, PasswordsNotIdentical<T>> get copyWith;
}

/// @nodoc
abstract class $WorkoutTItleToLongCopyWith<T, $Res> {
  factory $WorkoutTItleToLongCopyWith(WorkoutTItleToLong<T> value,
          $Res Function(WorkoutTItleToLong<T>) then) =
      _$WorkoutTItleToLongCopyWithImpl<T, $Res>;
  $Res call({String failedValue});
}

/// @nodoc
class _$WorkoutTItleToLongCopyWithImpl<T, $Res>
    extends _$ValueFailureCopyWithImpl<T, $Res>
    implements $WorkoutTItleToLongCopyWith<T, $Res> {
  _$WorkoutTItleToLongCopyWithImpl(
      WorkoutTItleToLong<T> _value, $Res Function(WorkoutTItleToLong<T>) _then)
      : super(_value, (v) => _then(v as WorkoutTItleToLong<T>));

  @override
  WorkoutTItleToLong<T> get _value => super._value as WorkoutTItleToLong<T>;

  @override
  $Res call({
    Object failedValue = freezed,
  }) {
    return _then(WorkoutTItleToLong<T>(
      failedValue:
          failedValue == freezed ? _value.failedValue : failedValue as String,
    ));
  }
}

/// @nodoc
class _$WorkoutTItleToLong<T> implements WorkoutTItleToLong<T> {
  const _$WorkoutTItleToLong({@required this.failedValue})
      : assert(failedValue != null);

  @override
  final String failedValue;

  @override
  String toString() {
    return 'ValueFailure<$T>.workoutTitleTolong(failedValue: $failedValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is WorkoutTItleToLong<T> &&
            (identical(other.failedValue, failedValue) ||
                const DeepCollectionEquality()
                    .equals(other.failedValue, failedValue)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(failedValue);

  @override
  $WorkoutTItleToLongCopyWith<T, WorkoutTItleToLong<T>> get copyWith =>
      _$WorkoutTItleToLongCopyWithImpl<T, WorkoutTItleToLong<T>>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result invalidEmail(String failedValue),
    @required Result shortPassword(String failedValue),
    @required Result passwordsNotIdentical(List<Password> failedValue),
    @required Result workoutTitleTolong(String failedValue),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return workoutTitleTolong(failedValue);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result invalidEmail(String failedValue),
    Result shortPassword(String failedValue),
    Result passwordsNotIdentical(List<Password> failedValue),
    Result workoutTitleTolong(String failedValue),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutTitleTolong != null) {
      return workoutTitleTolong(failedValue);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result invalidEmail(InvalidEmail<T> value),
    @required Result shortPassword(ShortPassword<T> value),
    @required Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    @required Result workoutTitleTolong(WorkoutTItleToLong<T> value),
  }) {
    assert(invalidEmail != null);
    assert(shortPassword != null);
    assert(passwordsNotIdentical != null);
    assert(workoutTitleTolong != null);
    return workoutTitleTolong(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result invalidEmail(InvalidEmail<T> value),
    Result shortPassword(ShortPassword<T> value),
    Result passwordsNotIdentical(PasswordsNotIdentical<T> value),
    Result workoutTitleTolong(WorkoutTItleToLong<T> value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (workoutTitleTolong != null) {
      return workoutTitleTolong(this);
    }
    return orElse();
  }
}

abstract class WorkoutTItleToLong<T> implements ValueFailure<T> {
  const factory WorkoutTItleToLong({@required String failedValue}) =
      _$WorkoutTItleToLong<T>;

  String get failedValue;
  $WorkoutTItleToLongCopyWith<T, WorkoutTItleToLong<T>> get copyWith;
}
