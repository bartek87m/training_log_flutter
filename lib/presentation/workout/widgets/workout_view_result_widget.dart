import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:training_log/application/workoutForm/workoutform_cubit.dart';

class WorkoutViewResultWidget extends StatelessWidget {
  const WorkoutViewResultWidget({Key? key, this.state, this.exerciseIndex})
      : super(key: key);

  final state;
  final exerciseIndex;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
          child: Text('Result'),
        ),
        for (int i = 0;
            i < state.exercieList![exerciseIndex].setsList!.length;
            i++)
          Row(
            children: [
              Container(
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
              Container(
                width: 10.w,
                child: GestureDetector(
                  child: Icon(Icons.delete),
                  onTap: () {
                    context.read<WorkoutformCubit>().removeSeriesFromExercise(
                        exerciseNumber: exerciseIndex, seriesNumber: i);

                    print(state.exercieList![exerciseIndex].setsList!);
                  },
                ),
              ),
            ],
          ),
      ],
    );
  }
}
