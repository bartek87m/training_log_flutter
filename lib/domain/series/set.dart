import 'package:freezed_annotation/freezed_annotation.dart';

part 'set.freezed.dart';

@freezed
abstract class Set with _$Set {
  const factory Set({
    String reps,
    String weight,
    String time,
    String
        resultFromlastTraining, //rezultat z poprzedniego treningu z tym ćwiczeniem
    bool completed,
  }) = _Set;
}
