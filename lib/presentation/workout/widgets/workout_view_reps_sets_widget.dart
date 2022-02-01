import 'package:async/async.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/cubit/activeseries_cubit.dart';
import 'package:training_log/application/workoutForm/workoutform_cubit.dart';

class WorkoutViewRepsSetsWidget extends HookWidget {
  WorkoutViewRepsSetsWidget(
      {Key? key, this.exerciseIndex, required this.setsLength, this.state})
      : super(key: key);

  final exerciseIndex;
  final setsLength;
  final state;
  late List<TextEditingController> _coontrollersRepsList;
  late List<TextEditingController> _coontrollersResultList;
  late RestartableTimer inputRepsTimer;
  late RestartableTimer inputResultTimer;
  bool isRepsTimerInitialized = false;
  bool isResultTimerInitialized = false;

  @override
  Widget build(BuildContext context) {
    void setInputRepsTimer(i) {
      inputRepsTimer = RestartableTimer(
        Duration(seconds: 2),
        () {
          context
              .read<WorkoutformCubit>()
              .updateExerciseListToFirebaseAfterChangeRep(
                  i, exerciseIndex, _coontrollersRepsList[exerciseIndex].text);
        },
      );
    }

    void setinputResultTimer(i) {
      inputResultTimer = RestartableTimer(
        Duration(seconds: 2),
        () {
          context
              .read<WorkoutformCubit>()
              .updateExerciseListToFirebaseAfterChangeResult(i, exerciseIndex,
                  _coontrollersResultList[exerciseIndex].text);
        },
      );
    }

    useEffect(() {
      return () {
        if (isRepsTimerInitialized) inputRepsTimer.cancel();
        if (isResultTimerInitialized) inputResultTimer.cancel();
      };
    });

    // FocusScope.of(context).requestFocus(inputFieldNode);
    _coontrollersRepsList = List.generate(
        setsLength,
        (index) => TextEditingController(
              text: state.exercieList![exerciseIndex].setsList![index].reps,
            ));
    _coontrollersResultList = List.generate(
        setsLength,
        (index) => TextEditingController(
              text: state.exercieList![exerciseIndex].setsList![index].result,
            ));
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
              child: Text("Result"),
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
                          exerciseNumber: exerciseIndex,
                          seriesNumber: i,
                        );
                    context
                        .read<ActiveseriesCubit>()
                        .setActiveExerciseAndSeries(
                          state.exercieList![exerciseIndex],
                          i,
                          state.exercieList![exerciseIndex].setsList![i],
                        );
                }
              },
              resizeDuration: Duration(microseconds: 1),
              background: Container(
                alignment: Alignment.centerLeft,
                color: state.exercieList![exerciseIndex].setsList![i].completed
                    ? Colors.grey
                    : Colors.green,
                child: state.exercieList![exerciseIndex].setsList![i].completed
                    ? Icon(Icons.backspace_rounded)
                    : Icon(Icons.check),
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
                      controller: _coontrollersRepsList[i],
                      onChanged: (repValue) {
                        if (inputRepsTimer.isActive)
                          inputRepsTimer.reset();
                        else
                          setInputRepsTimer(i);
                      },
                      onTap: () {
                        isRepsTimerInitialized = true;
                        setInputRepsTimer(i);
                      },
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
                      controller: _coontrollersResultList[i],
                      onChanged: (resultValue) {
                        if (inputResultTimer.isActive)
                          inputResultTimer.reset();
                        else
                          setinputResultTimer(i);
                      },
                      onTap: () {
                        isResultTimerInitialized = true;
                        setinputResultTimer(i);
                      },
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
