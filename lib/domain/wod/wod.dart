import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:training_log/domain/workout/value_objects.dart';

part 'wod.freezed.dart';

@freezed
abstract class Wod with _$Wod {
  const factory Wod({
    @required WodBody wodBody,
  }) = _Wod;
}
