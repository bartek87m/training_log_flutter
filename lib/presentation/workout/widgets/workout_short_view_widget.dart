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
        color: Theme.of(context).backgroundColor,
        borderRadius: BorderRadius.circular(10),
        // border: Border.all(color: Colors.white12),
        boxShadow: [
          BoxShadow(
            color: Theme.of(context).primaryColor.withOpacity(1),
            spreadRadius: 0.5.w,
            blurRadius: 4,
            offset: Offset(0, 0),
          )
        ],
        gradient: LinearGradient(
          colors: [
            Theme.of(context).backgroundColor,
            Theme.of(context).backgroundColor.withGreen(190)
          ],
          begin: Alignment.centerLeft,
        ),
      ),
      padding: EdgeInsets.symmetric(vertical: 1.h, horizontal: 3.w),
      margin: EdgeInsets.only(
        top: 1.5.h,
        left: 3.w,
        right: 3.w,
      ),
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
