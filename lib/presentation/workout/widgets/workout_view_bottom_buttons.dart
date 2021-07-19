import 'package:flutter/material.dart';

class WorkoutViewBottomButtons extends StatelessWidget {
  const WorkoutViewBottomButtons(
      {Key? key,
      required this.addNewSeriesCallback,
      required this.removeExerciseCallback})
      : super(key: key);

  final Function() addNewSeriesCallback;
  final Function() removeExerciseCallback;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          // height: 4.h,
          // width: 80.w,
          child: TextButton(
            onPressed: addNewSeriesCallback,
            child: Text('Add series'),
          ),
        ),
        Container(
          // height: 4.h,
          // width: 80.w,
          child: TextButton(
            onPressed: removeExerciseCallback,
            child: Text(
              'Remove Exercise',
              style: TextStyle(color: Colors.red),
            ),
          ),
        ),
      ],
    );
  }
}
