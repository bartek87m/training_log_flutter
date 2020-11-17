import 'package:flutter/material.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/exercise/exercise.dart';

abstract class Workout extends ValueObject<String> {
  UniqueId id;
  String title;
  DateTime workoutDate;
  List<Exercise> exercieList;
  DateTime updateDate;

  factory Workout(input) {
    // return Workout._(
    //   exercieList: [], id, title, updateDate, workoutDate);
  }

  Workout._(
      this.exercieList, this.id, this.title, this.updateDate, this.workoutDate);
}
