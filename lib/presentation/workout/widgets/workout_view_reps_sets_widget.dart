import 'package:async/async.dart';

import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/activeSeries/activeseries_cubit.dart';
import 'package:training_log/application/workoutForm/workoutform_cubit.dart';
import 'package:training_log/presentation/workout/widgets/exercise_headers.dart';
import 'package:training_log/presentation/workout/widgets/timer_series_icon.dart';

class WorkoutViewRepsSetsWidget extends HookWidget {
  WorkoutViewRepsSetsWidget(
      {Key? key,
      required this.showTimer,
      this.exerciseIndex,
      required this.setsLength,
      this.state})
      : super(key: key);

  final VoidCallback showTimer;
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
    void setInputRepsTimer(int setIndex) {
      inputRepsTimer = RestartableTimer(
        Duration(milliseconds: 500),
        () {
          context
              .read<WorkoutformCubit>()
              .updateExerciseListToFirebaseAfterChangeRep(setIndex,
                  exerciseIndex, _coontrollersRepsList[setIndex].text);
        },
      );
    }

    void setinputResultTimer(int setIndex) {
      inputResultTimer = RestartableTimer(
        Duration(milliseconds: 500),
        () {
          context
              .read<WorkoutformCubit>()
              .updateExerciseListToFirebaseAfterChangeResult(setIndex,
                  exerciseIndex, _coontrollersResultList[setIndex].text);
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
        state.exercieList![exerciseIndex].setsList!.length,
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
        Padding(
          padding: EdgeInsets.all(2.w),
          child: ExerciseHeaders(width: 35.w),
        ),
        for (int setIndex = 0; setIndex < setsLength; setIndex++)
          Container(
            padding: EdgeInsets.symmetric(vertical: 0.2.h),
            child: Dismissible(
              onDismissed: (direction) {
                switch (direction.index) {
                  case 2:
                    context.read<WorkoutformCubit>().removeSeriesFromExercise(
                        exerciseNumber: exerciseIndex, seriesNumber: setIndex);
                    break;
                  case 3:
                    context.read<WorkoutformCubit>().markSeriesAsComplete(
                          exerciseNumber: exerciseIndex,
                          seriesNumber: setIndex,
                        );
                }
              },
              resizeDuration: Duration(microseconds: 1),
              background: Container(
                alignment: Alignment.centerLeft,
                color: state.exercieList![exerciseIndex].setsList![setIndex]
                        .completed
                    ? Colors.grey
                    : Colors.green,
                child: state.exercieList![exerciseIndex].setsList![setIndex]
                        .completed
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
                  Text((setIndex + 1).toString()),
                  Container(
                    color: state.exercieList![exerciseIndex].setsList![setIndex]
                            .completed
                        ? Colors.lightGreen[100]
                        : Colors.transparent,
                    margin: EdgeInsets.only(left: 1.w, right: 1.w),
                    height: 3.h,
                    width: 35.w,
                    child: TextFormField(
                      key: Key(setIndex.toString()),
                      textAlign: TextAlign.center,
                      controller: _coontrollersRepsList[setIndex],
                      onChanged: (repValue) {
                        if (inputRepsTimer.isActive)
                          inputRepsTimer.reset();
                        else
                          setInputRepsTimer(setIndex);
                      },
                      onTap: () {
                        isRepsTimerInitialized = true;
                        setInputRepsTimer(setIndex);
                      },
                    ),
                  ),
                  Container(
                    color: state.exercieList![exerciseIndex].setsList![setIndex]
                            .completed
                        ? Colors.lightGreen[100]
                        : Colors.transparent,
                    margin: EdgeInsets.only(left: 1.w, right: 1.w),
                    height: 3.h,
                    width: 35.w,
                    child: TextFormField(
                      key: Key(setIndex.toString()),
                      textAlign: TextAlign.center,
                      controller: _coontrollersResultList[setIndex],
                      onChanged: (resultValue) {
                        if (inputResultTimer.isActive)
                          inputResultTimer.reset();
                        else
                          setinputResultTimer(setIndex);
                      },
                      onTap: () {
                        isResultTimerInitialized = true;
                        setinputResultTimer(setIndex);
                      },
                    ),
                  ),
                  TimerSeriesWidget(
                    showTimer: () {
                      showTimer();
                      context.read<ActiveseriesCubit>().getTimeForSeries(
                          state.exercieList![exerciseIndex], setIndex);
                    },
                    exerciseIndex: exerciseIndex,
                    setIndex: setIndex,
                  )
                ]),
              ),
            ),
          ),
      ],
    );
  }
}
