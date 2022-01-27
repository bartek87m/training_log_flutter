import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:training_log/presentation/workout/widgets/timer_in_workout_widget.dart';

class WorkoutViewBottomButtons extends StatelessWidget {
  final Function() addNewSeriesCallback;
  final Function() removeExerciseCallback;
  final Function() addExerciseCallback;
  final Function() showHideTimerForExerciseCallback;

  final showTimerButtonText;

  WorkoutViewBottomButtons({
    Key? key,
    required this.addNewSeriesCallback,
    required this.removeExerciseCallback,
    required this.addExerciseCallback,
    required this.showHideTimerForExerciseCallback,
    this.showTimerButtonText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 2.h),
              child: GestureDetector(
                onTap: addNewSeriesCallback,
                child: Text('Add series'),
              ),
            ),
            Container(
              padding: EdgeInsets.all(1.h),
              child: GestureDetector(
                onTap: removeExerciseCallback,
                child: Text(
                  'Remove Exercise',
                  style: TextStyle(color: Colors.red),
                ),
              ),
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0),
              child: GestureDetector(
                onTap: addExerciseCallback,
                // onPressed: addExerciseCallback,
                child: Text(
                  'Add Exercise',
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 4.w, vertical: 0),
              child: GestureDetector(
                onTap: showHideTimerForExerciseCallback,
                // onPressed: addExerciseCallback,
                child: Text(
                  showTimerButtonText,
                  style: TextStyle(color: Colors.green),
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}
