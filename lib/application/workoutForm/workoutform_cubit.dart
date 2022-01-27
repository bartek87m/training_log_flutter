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

  Future<void> updateExerciseListToFirebase(
      List<Exercise> newExerciseList) async {
    await _iWorkoutFacade.update(
      workout: Workout(
        exercieList: newExerciseList,
        id: state.id,
        title: state.title,
        workoutDate: state.workoutDate,
        updateDate: DateTime.now(),
      ),
    );
    emit(state.copyWith(exercieList: newExerciseList));
  }

  Future<void> updateExerciseListToFirebaseAfterChangeRep(
      int seriesNumber, int exerciseNumber, String repValue) async {
    List<Exercise>? newExerciseList = state.exercieList;

    Series? newMarkedSeries = newExerciseList![exerciseNumber]
        .setsList![seriesNumber]
        .copyWith(reps: repValue);

    newExerciseList[exerciseNumber].setsList?.removeAt(seriesNumber);
    newExerciseList[exerciseNumber]
        .setsList
        ?.insert(seriesNumber, newMarkedSeries);

    await _iWorkoutFacade.update(
      workout: Workout(
        exercieList: newExerciseList,
        id: state.id,
        title: state.title,
        workoutDate: state.workoutDate,
        updateDate: DateTime.now(),
      ),
    );
    emit(state.copyWith(exercieList: newExerciseList));
  }

  Future<void> updateExerciseListToFirebaseAfterChangeResult(
      int seriesNumber, int exerciseNumber, String resultValue) async {
    List<Exercise>? newExerciseList = state.exercieList;

    Series? newMarkedSeries = newExerciseList![exerciseNumber]
        .setsList![seriesNumber]
        .copyWith(result: resultValue);

    newExerciseList[exerciseNumber].setsList?.removeAt(seriesNumber);
    newExerciseList[exerciseNumber]
        .setsList
        ?.insert(seriesNumber, newMarkedSeries);

    await _iWorkoutFacade.update(
      workout: Workout(
        exercieList: newExerciseList,
        id: state.id,
        title: state.title,
        workoutDate: state.workoutDate,
        updateDate: DateTime.now(),
      ),
    );
    emit(state.copyWith(exercieList: newExerciseList));
  }

  Future<void> updateExerciseListToFirebaseAfterChangeName(
      int exerciseNumber, String exerciseNameValue) async {
    List<Exercise>? newExerciseList = state.exercieList;

    Exercise? newExerciseName = newExerciseList![exerciseNumber]
        .copyWith(exerciseName: ExerciseName(exerciseNameValue));

    newExerciseList.removeAt(exerciseNumber);
    newExerciseList.insert(exerciseNumber, newExerciseName);

    await _iWorkoutFacade.update(
      workout: Workout(
        exercieList: newExerciseList,
        id: state.id,
        title: state.title,
        workoutDate: state.workoutDate,
        updateDate: DateTime.now(),
      ),
    );
    emit(state.copyWith(exercieList: newExerciseList));
  }

  Future<void> updateTitleToFirebase(String title) async {
    await _iWorkoutFacade.update(
      workout: Workout(
        exercieList: state.exercieList,
        id: state.id,
        title: Title(title),
        workoutDate: state.workoutDate,
        updateDate: DateTime.now(),
      ),
    );

    emit(state.copyWith(title: Title(title)));
  }

  void updateExerciseListToState(List<Exercise> newExerciseList) {
    emit(state.copyWith(exercieList: newExerciseList));
  }

  void updateTitleToState(String title) {
    emit(state.copyWith(title: Title(title)));
  }

  void loadWorkoutToState({required Workout workout}) {
    List<Exercise>? newExerciseList = workout.exercieList;

    List<Exercise>? finalList = newExerciseList!.map(
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
  }

  void removeSeriesFromExercise(
      {int? exerciseNumber, int? seriesNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?[exerciseNumber!].setsList?.removeAt(seriesNumber!);

    await updateExerciseListToFirebase(newExerciseList!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }

  void addSeriesToExercise({int? exerciseNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;
    Series? newSeries;

    if (newExerciseList?[exerciseNumber!].setsList?.length != 0)
      newSeries = newExerciseList?[exerciseNumber!].setsList?.last;
    else
      newSeries = Series.newSeries();

    newExerciseList?[exerciseNumber!]
        .setsList
        ?.add(newSeries!.copyWith(completed: false));

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );

    await updateExerciseListToFirebase(newExerciseList!);
  }

  void removeWorkout() async {
    await _iWorkoutFacade.removeWorkout(workoutId: state.id!.getOrCrash());
  }

  void addExercise({int? exerciseNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;

    newExerciseList?.insert(exerciseNumber! + 1, Exercise.newExercise());

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
    await updateExerciseListToFirebase(newExerciseList!);
  }

  void removeExercise({int? exerciseNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?.removeAt(exerciseNumber!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
    await updateExerciseListToFirebase(newExerciseList!);
  }

  void markSeriesAsComplete({int? exerciseNumber, int? seriesNumber}) async {
    List<Exercise>? newExerciseList = state.exercieList;

    final seriesToModify =
        state.exercieList?[exerciseNumber!].setsList?[seriesNumber!];
    Series? newMarkedSeries;

    if (seriesToModify?.completed == false)
      newMarkedSeries = (seriesToModify?.copyWith(completed: true));
    else
      newMarkedSeries = (seriesToModify?.copyWith(completed: false));

    newExerciseList?[exerciseNumber!].setsList?.removeAt(seriesNumber!);
    newExerciseList?[exerciseNumber!]
        .setsList
        ?.insert(seriesNumber!, newMarkedSeries!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );

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
}
