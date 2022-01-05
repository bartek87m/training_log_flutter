import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:training_log/application/workoutForm/workoutform_cubit.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:sizer/sizer.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:training_log/presentation/workout/widgets/workout_view_bottom_buttons.dart';
import 'package:training_log/presentation/workout/widgets/workout_view_reps_sets_widget.dart';

class WorkoutViewPage extends HookWidget {
  final Workout workout;

  const WorkoutViewPage({Key? key, required this.workout}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    useMemoized(() async {
      context
          .read<WorkoutformCubit>()
          .loadWorkoutToState(workout: this.workout);
      context.read<WorkoutformCubit>().createNewWorkout(workout: this.workout);
    });

    return Scaffold(
      appBar: AppBar(
        title: TextFormField(
          initialValue: this.workout.title!.getOrCrash(),
          onChanged: (_) {}, //TODO add onChange save title
          style: TextStyle(color: Colors.white),
          decoration: InputDecoration(border: InputBorder.none),
          cursorColor: Colors.white,
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 4.w),
            child: GestureDetector(
                child: Icon(Icons.delete),
                onTap: () {
                  context.read<WorkoutformCubit>().removeWorkout();
                  context.router.pop();
                }),
          ),
        ],
      ),
      body: BlocBuilder<WorkoutformCubit, WorkoutformState>(
        builder: (context, state) {
          print(state);
          if (state.exercieList!.length == 0) {
            final emptyWorkout = Workout(
              id: this.workout.id,
              title: this.workout.title,
              exercieList: [
                Exercise(
                    exerciseName: ExerciseName('Exercise name'), setsList: [])
              ],
              workoutDate: this.workout.workoutDate,
              updateDate: this.workout.updateDate,
            );

            context
                .read<WorkoutformCubit>()
                .loadWorkoutToState(workout: emptyWorkout);
          }

          return Container(
            padding: EdgeInsets.only(top: 3.h),
            child: ListView.builder(
                itemCount: state.exercieList!.length,
                itemBuilder: (context, int exerciseIndex) {
                  return Column(
                    key: ObjectKey(state.exercieList![exerciseIndex]),
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
                          WorkoutViewRepsSetsWidget(
                            state: state,
                            exerciseIndex: exerciseIndex,
                            setsLength: state
                                .exercieList![exerciseIndex].setsList!.length,
                          ),
                        ],
                      ),
                      WorkoutViewBottomButtons(
                        addNewSeriesCallback: () => context
                            .read<WorkoutformCubit>()
                            .addSeriesToExercise(exerciseNumber: exerciseIndex),
                        removeExerciseCallback: () => context
                            .read<WorkoutformCubit>()
                            .removeExercise(exerciseNumber: exerciseIndex),
                        addExerciseCallback: () => context
                            .read<WorkoutformCubit>()
                            .addExercise(exerciseNumber: exerciseIndex),
                      )
                    ],
                  );
                }),
          );
        },
      ),
    );
  }
}
