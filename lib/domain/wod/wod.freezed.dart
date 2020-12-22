// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'wod.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$WodTearOff {
  const _$WodTearOff();

// ignore: unused_element
  _Wod call({@required WodBody wodBody}) {
    return _Wod(
      wodBody: wodBody,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Wod = _$WodTearOff();

/// @nodoc
mixin _$Wod {
  WodBody get wodBody;

  $WodCopyWith<Wod> get copyWith;
}

/// @nodoc
abstract class $WodCopyWith<$Res> {
  factory $WodCopyWith(Wod value, $Res Function(Wod) then) =
      _$WodCopyWithImpl<$Res>;
  $Res call({WodBody wodBody});
}

/// @nodoc
class _$WodCopyWithImpl<$Res> implements $WodCopyWith<$Res> {
  _$WodCopyWithImpl(this._value, this._then);

  final Wod _value;
  // ignore: unused_field
  final $Res Function(Wod) _then;

  @override
  $Res call({
    Object wodBody = freezed,
  }) {
    return _then(_value.copyWith(
      wodBody: wodBody == freezed ? _value.wodBody : wodBody as WodBody,
    ));
  }
}

/// @nodoc
abstract class _$WodCopyWith<$Res> implements $WodCopyWith<$Res> {
  factory _$WodCopyWith(_Wod value, $Res Function(_Wod) then) =
      __$WodCopyWithImpl<$Res>;
  @override
  $Res call({WodBody wodBody});
}

/// @nodoc
class __$WodCopyWithImpl<$Res> extends _$WodCopyWithImpl<$Res>
    implements _$WodCopyWith<$Res> {
  __$WodCopyWithImpl(_Wod _value, $Res Function(_Wod) _then)
      : super(_value, (v) => _then(v as _Wod));

  @override
  _Wod get _value => super._value as _Wod;

  @override
  $Res call({
    Object wodBody = freezed,
  }) {
    return _then(_Wod(
      wodBody: wodBody == freezed ? _value.wodBody : wodBody as WodBody,
    ));
  }
}

/// @nodoc
class _$_Wod implements _Wod {
  const _$_Wod({@required this.wodBody}) : assert(wodBody != null);

  @override
  final WodBody wodBody;

  @override
  String toString() {
    return 'Wod(wodBody: $wodBody)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Wod &&
            (identical(other.wodBody, wodBody) ||
                const DeepCollectionEquality().equals(other.wodBody, wodBody)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(wodBody);

  @override
  _$WodCopyWith<_Wod> get copyWith =>
      __$WodCopyWithImpl<_Wod>(this, _$identity);
}

abstract class _Wod implements Wod {
  const factory _Wod({@required WodBody wodBody}) = _$_Wod;

  @override
  WodBody get wodBody;
  @override
  _$WodCopyWith<_Wod> get copyWith;
}
