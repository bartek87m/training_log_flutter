import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class WorkoutViewRepsWidget extends StatelessWidget {
  const WorkoutViewRepsWidget(
      {Key? key, this.exerciseIndex, this.setsLength, this.state})
      : super(key: key);

  final exerciseIndex;
  final setsLength;
  final state;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
          child: Text('Reps'),
        ),
        for (int i = 0; i < setsLength; i++)
          Container(
            child: Row(children: [
              Text((i + 1).toString()),
              Container(
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
            ]),
          ),
      ],
    );
  }
}
