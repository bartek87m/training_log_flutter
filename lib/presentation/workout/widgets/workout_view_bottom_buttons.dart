import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WorkoutViewBottomButtons extends StatelessWidget {
  const WorkoutViewBottomButtons({
    Key? key,
    required this.addNewSeriesCallback,
    required this.removeExerciseCallback,
    required this.addExerciseCallback,
  }) : super(key: key);

  final Function() addNewSeriesCallback;
  final Function() removeExerciseCallback;
  final Function() addExerciseCallback;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: InkWell(
                onTap: addNewSeriesCallback,
                child: Text('Add series'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(1.h),
              child: InkWell(
                onTap: removeExerciseCallback,
                child: Text(
                  'Remove Exercise',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: EdgeInsets.only(bottom: 2.h),
          child: InkWell(
            onTap: addExerciseCallback,
            // onPressed: addExerciseCallback,
            child: Text(
              'Add Exercise',
              style: TextStyle(color: Colors.green),
            ),
          ),
        ),
      ],
    );
  }
}
