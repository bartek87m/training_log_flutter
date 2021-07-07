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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.w),
                child: TextFormField(
                  initialValue: workout.title!.getOrCrash(),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.w),
                child: Column(
                  children: workout.exercieList!
                      .map(
                        (exercise) => Container(
                          child: Column(
                            children: [
                              TextFormField(
                                initialValue:
                                    exercise.exerciseName!.getOrCrash(),
                              ),
                              Row(
                                children: [
                                  Column(
                                    children: exercise.setsList!
                                        .map(
                                          (element) => Container(
                                            margin: EdgeInsets.only(
                                                left: 1.w, right: 1.w),
                                            height: 5.h,
                                            width: 40.w,
                                            child: TextFormField(
                                              initialValue: element.reps!,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                  Column(
                                    children: exercise.setsList!
                                        .map(
                                          (element) => Container(
                                            margin: EdgeInsets.only(
                                                left: 1.w, right: 1.w),
                                            height: 5.h,
                                            width: 40.w,
                                            child: TextFormField(
                                              initialValue: element.result!,
                                            ),
                                          ),
                                        )
                                        .toList(),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      )
                      .toList(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
