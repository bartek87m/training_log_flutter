import 'package:flutter/material.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:sizer/sizer.dart';

class WorkoutViewPage extends StatelessWidget {
  final Workout workout;

  const WorkoutViewPage({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final workoutExercises = workout.exercieList!
        .forEach((element) => print(element.exerciseName!.getOrCrash()));

    // final workoutSets = workout.exercieList!
    //     .forEach((element) => print(element.exerciseName!.getOrCrash()));

    // final workoutExercises = workout.exercieList!
    //     .forEach((element) => print(element.exerciseName!.getOrCrash()));

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.w),
            child: TextFormField(
              initialValue: workout.title!.getOrCrash(),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.w),
            child: TextFormField(
              initialValue: 'Add wotkout here',
              maxLines: null,
            ),
          )
        ],
      ),
    );
  }
}
