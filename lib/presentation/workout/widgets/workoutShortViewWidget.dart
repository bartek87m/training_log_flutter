import 'package:flutter/material.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:sizer/sizer.dart';

class WorkoutShortViewWidget extends StatelessWidget {
  final Workout workout;

  WorkoutShortViewWidget(this.workout);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.black26,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: Colors.white12)),
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      margin: EdgeInsets.only(top: 1.h, left: 2.w, right: 2.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Title: ${workout.title?.getOrCrash()}',
            style: TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w400),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 0.5.h, bottom: 1.w),
                child: Text(
                  'Exercise: ',
                  style: TextStyle(
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              for (var exercise in workout.exercieList!)
                Padding(
                  padding:
                      EdgeInsets.only(top: 0.3.h, right: 2.w, bottom: 0.3.h),
                  child: Text(
                    '${exercise.exerciseName?.getOrCrash()}',
                    style:
                        TextStyle(fontSize: 10.sp, fontWeight: FontWeight.w400),
                  ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
