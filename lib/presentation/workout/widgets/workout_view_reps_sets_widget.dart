import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/workoutform_cubit.dart';

class WorkoutViewRepsSetsWidget extends StatelessWidget {
  const WorkoutViewRepsSetsWidget(
      {Key? key, this.exerciseIndex, this.setsLength, this.state})
      : super(key: key);

  final exerciseIndex;
  final setsLength;
  final state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Container(
              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
              alignment: Alignment.center,
              width: 35.w,
              child: Text("Reps"),
            ),
            Container(
              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
              alignment: Alignment.center,
              width: 35.w,
              child: Text("Reps"),
            ),
          ],
        ),
        for (int i = 0; i < setsLength; i++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.2.h),
            child: Dismissible(
              onDismissed: (direction) {
                switch (direction.index) {
                  case 2:
                    context.read<WorkoutformCubit>().removeSeriesFromExercise(
                        exerciseNumber: exerciseIndex, seriesNumber: i);
                    break;
                  case 3:
                    context.read<WorkoutformCubit>().markSeriesAsComplete(
                        exerciseNumber: exerciseIndex, seriesNumber: i);
                }
              },
              background: Container(
                alignment: Alignment.centerLeft,
                color: Colors.green,
                child: Icon(Icons.check),
                padding: EdgeInsets.only(left: 5.w),
              ),
              secondaryBackground: Container(
                alignment: Alignment.centerRight,
                color: Colors.red,
                child: Icon(Icons.delete),
                padding: EdgeInsets.only(right: 5.w),
              ),
              key: UniqueKey(),
              child: Container(
                child: Row(children: [
                  Text((i + 1).toString()),
                  Container(
                    color:
                        state.exercieList![exerciseIndex].setsList![i].completed
                            ? Colors.lightGreen[100]
                            : Colors.transparent,
                    margin: EdgeInsets.only(left: 1.w, right: 1.w),
                    height: 3.h,
                    width: 35.w,
                    child: TextFormField(
                      key: Key(i.toString()),
                      textAlign: TextAlign.center,
                      initialValue:
                          state.exercieList![exerciseIndex].setsList![i].reps,
                    ),
                  ),
                  Container(
                    color:
                        state.exercieList![exerciseIndex].setsList![i].completed
                            ? Colors.lightGreen[100]
                            : Colors.transparent,
                    margin: EdgeInsets.only(left: 1.w, right: 1.w),
                    height: 3.h,
                    width: 35.w,
                    child: TextFormField(
                      key: Key(i.toString()),
                      textAlign: TextAlign.center,
                      initialValue:
                          state.exercieList![exerciseIndex].setsList![i].result,
                    ),
                  ),
                ]),
              ),
            ),
          ),
      ],
    );
  }
}
