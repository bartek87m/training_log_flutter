import 'package:flutter/material.dart';
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
      body: Container(
        padding: EdgeInsets.only(top: 3.h),
        child: ListView.builder(
            itemCount: workout.value.exercieList!.length,
            itemBuilder: (context, int index) {
              return Column(
                children: [
                  Container(
                    height: 2.5.h,
                    width: 90.w,
                    child: TextFormField(
                      initialValue: workout
                          .value.exercieList![index].exerciseName!
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
                                workout
                                    .value.exercieList![index].setsList!.length;
                            i++)
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
                                  initialValue: workout.value
                                      .exercieList![index].setsList![i].reps,
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
                                  workout.value.exercieList![index].setsList!
                                      .length;
                              i++)
                            Row(
                              children: [
                                Container(
                                  margin:
                                      EdgeInsets.only(left: 1.w, right: 1.w),
                                  height: 3.h,
                                  width: 35.w,
                                  child: TextFormField(
                                    key: Key(i.toString()),
                                    textAlign: TextAlign.center,
                                    initialValue: workout
                                        .value
                                        .exercieList![index]
                                        .setsList![i]
                                        .result,
                                  ),
                                ),
                                GestureDetector(
                                  child: Icon(Icons.delete),
                                  onTap: () {
                                    workout.value.exercieList![index].setsList!
                                        .removeAt(i);
                                    toggleRebuild.value = !toggleRebuild.value;
                                    print(workout
                                        .value.exercieList![index].setsList!);
                                  },
                                ),
                              ],
                            ),
                        ],
                      ),
                    ],
                  ),
                  Container(
                    // height: 4.h,
                    // width: 80.w,
                    child: TextButton(
                      onPressed: () => {
                        workout.value.exercieList![index].setsList!
                            .add(Series.newSeries()),
                        toggleRebuild.value = !toggleRebuild.value,
                      },
                      child: Text('Add series'),
                    ),
                  ),
                ],
              );
            }),
      ),
    );
  }
}
