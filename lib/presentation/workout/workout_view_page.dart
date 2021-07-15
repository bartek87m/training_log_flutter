import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/workoutform_cubit.dart';
import 'package:training_log/domain/workout/series/series.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:sizer/sizer.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class WorkoutViewPage extends HookWidget {
  final Workout workout;

  const WorkoutViewPage({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final workout = useState(Workout.newWorkout());
    final toggleRebuild = useState(false);

    useMemoized(
      () {
        workout.value = this.workout;
        context.read<WorkoutformCubit>().loadWorkoutToState(this.workout);
      },
    );

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          initialValue: workout.value.title!.getOrCrash(),
          onChanged: (_) {}, //TODO add onChange save title
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(border: InputBorder.none),
          cursorColor: Colors.white,
        ),
      ),
      body: BlocBuilder<WorkoutformCubit, WorkoutformState>(
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.only(top: 3.h),
            child: ListView.builder(
                itemCount: state.exercieList!.length,
                itemBuilder: (context, int exerciseIndex) {
                  return Column(
                    children: [
                      Container(
                        height: 2.5.h,
                        width: 90.w,
                        child: TextFormField(
                          initialValue: state
                              .exercieList![exerciseIndex].exerciseName!
                              .getOrCrash(),
                        ),
                      ),
                      Row(
                        key: UniqueKey(),
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(children: [
                            Padding(
                              padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                              child: Text('Reps'),
                            ),
                            for (int i = 0;
                                i <
                                    state.exercieList![exerciseIndex].setsList!
                                        .length;
                                i++)
                              Container(
                                child: Row(children: [
                                  Text((i + 1).toString()),
                                  Container(
                                    margin:
                                        EdgeInsets.only(left: 1.w, right: 1.w),
                                    height: 3.h,
                                    width: 35.w,
                                    child: TextFormField(
                                      key: Key(i.toString()),
                                      textAlign: TextAlign.center,
                                      initialValue: state
                                          .exercieList![exerciseIndex]
                                          .setsList![i]
                                          .reps,
                                    ),
                                  ),
                                ]),
                              ),
                          ]),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 1.h, bottom: 1.h),
                                child: Text('Result'),
                              ),
                              for (int i = 0;
                                  i <
                                      state.exercieList![exerciseIndex]
                                          .setsList!.length;
                                  i++)
                                Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(
                                          left: 1.w, right: 1.w),
                                      height: 3.h,
                                      width: 35.w,
                                      child: TextFormField(
                                        key: Key(i.toString()),
                                        textAlign: TextAlign.center,
                                        initialValue: state
                                            .exercieList![exerciseIndex]
                                            .setsList![i]
                                            .result,
                                      ),
                                    ),
                                    GestureDetector(
                                      child: Icon(Icons.delete),
                                      onTap: () {
                                        context
                                            .read<WorkoutformCubit>()
                                            .removeSeriesFromExercise(
                                                exerciseNumber: exerciseIndex,
                                                seriesNumber: i);
                                        // toggleRebuild.value =
                                        //     !toggleRebuild.value;
                                        print(state.exercieList![exerciseIndex]
                                            .setsList!);
                                      },
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            // height: 4.h,
                            // width: 80.w,
                            child: TextButton(
                              onPressed: () => {
                                state.exercieList![exerciseIndex].setsList!
                                    .add(Series.newSeries()),
                                // toggleRebuild.value = !toggleRebuild.value,
                              },
                              child: Text('Add series'),
                            ),
                          ),
                          Container(
                            // height: 4.h,
                            // width: 80.w,
                            child: TextButton(
                              onPressed: () => {
                                context
                                    .read<WorkoutformCubit>()
                                    .loadWorkoutToState(this.workout),
                              },
                              child: Text(
                                'Remove Exercise',
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          );
        },
      ),
    );
  }
}
