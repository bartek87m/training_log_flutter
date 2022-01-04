import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/i_workout_repositry.dart';
import 'package:training_log/domain/workout/series/series.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';

part 'workoutform_state.dart';
part 'workoutform_cubit.freezed.dart';

@lazySingleton
class WorkoutformCubit extends Cubit<WorkoutformState> {
  final IWorkoutFacade _iWorkoutFacade;

  WorkoutformCubit(this._iWorkoutFacade) : super(WorkoutformState.initial());

  Future<void> updateWorkout(List<Exercise> newExerciseList) async {
    await _iWorkoutFacade.update(
      workout: Workout(
        exercieList: newExerciseList,
        id: state.id,
        title: state.title,
        workoutDate: state.workoutDate,
        updateDate: DateTime.now(),
      ),
    );
  }

  void loadWorkoutToState(Workout workout) {
    // print(workout);
    List<Exercise>? newWorkoutList = workout.exercieList;

    List<Exercise>? finalList = newWorkoutList!.map(
      (e) {
        return Exercise(
            exerciseName: e.exerciseName,
            setsList: e.setsList
                ?.map((element) => Series(
                    reps: element.reps,
                    result: element.result,
                    resultFromlastTraining: element.resultFromlastTraining,
                    completed:
                        element.completed == null ? false : element.completed))
                .toList());
      },
    ).toList();

    emit(
      state.copyWith(
        id: workout.id,
        title: workout.title,
        exercieList: finalList,
        workoutDate: workout.workoutDate,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }

  Future createNewWorkout({required Workout workout}) async {
    await _iWorkoutFacade.createWorkout(
        workout: Workout(
      id: state.id,
      title: state.title,
      workoutDate: state.workoutDate,
      exercieList: state.exercieList,
    ));
    print('createdWorkout');
  }

  void removeSeriesFromExercise(
      {int? exerciseNumber, int? seriesNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?[exerciseNumber!].setsList?.removeAt(seriesNumber!);

    await updateWorkout(newExerciseList!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
    print('Workout updated');
  }

  void addSeriesToExercise({int? exerciseNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?[exerciseNumber!].setsList?.add(Series.newSeries());

    await updateWorkout(newExerciseList!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
    print('Workout updated');
  }

  void removeWorkout() async {
    await _iWorkoutFacade.removeWorkout(workoutId: state.id!.getOrCrash());
    print('Workout removed');
  }

  void addExercise({int? exerciseNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;

    newExerciseList?.insert(exerciseNumber! + 1, Exercise.newExercise());

    await updateWorkout(newExerciseList!);

    emit(state.copyWith(
      exercieList: newExerciseList,
      toogleRebuild: !state.toogleRebuild!,
    ));
  }

  void removeExercise({int? exerciseNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?.removeAt(exerciseNumber!);

    await updateWorkout(newExerciseList!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }

  void markSeriesAsComplete({int? exerciseNumber, int? seriesNumber}) {
    List<Exercise>? newExerciseList = state.exercieList;

    Series? newMarkedSeries = (state
        .exercieList?[exerciseNumber!].setsList?[seriesNumber!]
        .copyWith(completed: true));

    newExerciseList?[exerciseNumber!].setsList?.removeAt(seriesNumber!);
    newExerciseList?[exerciseNumber!]
        .setsList
        ?.insert(seriesNumber!, newMarkedSeries!);

    emit(
      state.copyWith(
        exercieList: state.exercieList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }
}
