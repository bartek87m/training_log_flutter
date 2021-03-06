import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/core/value_object.dart';
import 'package:training_log/domain/workout/exercise/exercise.dart';
import 'package:training_log/domain/workout/series/series.dart';
import 'package:training_log/domain/workout/value_objects.dart';
import 'package:training_log/domain/workout/workout.dart';

part 'workoutform_state.dart';
part 'workoutform_cubit.freezed.dart';

@lazySingleton
class WorkoutformCubit extends Cubit<WorkoutformState> {
  // final IWorkoutFacade _iWorkoutFacade;

  WorkoutformCubit() : super(WorkoutformState.initial());

  void loadWorkoutToState(Workout workout) {
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
      ),
    );
  }

  void removeSeriesFromExercise({int? exerciseNumber, int? seriesNumber}) {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?[exerciseNumber!].setsList?.removeAt(seriesNumber!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }

  void addSeriesToExercise({int? exerciseNumber}) {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?[exerciseNumber!].setsList?.add(Series.newSeries());

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }

  void removeExercise({int? exerciseNumber}) {
    List<Exercise>? newExerciseList = state.exercieList;
    newExerciseList?.removeAt(exerciseNumber!);

    emit(
      state.copyWith(
        exercieList: newExerciseList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );
  }

  void markSeriesAsComplete({int? exerciseNumber, int? seriesNumber}) {
    List<Exercise>? newExerciseList = state.exercieList;
    List<Series>? newSeriesList = state.exercieList?[exerciseNumber!].setsList;

    Series? aaaa = newSeriesList?[exerciseNumber!].copyWith(completed: true);

    newExerciseList?[exerciseNumber!].setsList?.removeAt(seriesNumber!);
    newExerciseList?[exerciseNumber!].setsList?.insert(seriesNumber!, aaaa!);

    emit(
      state.copyWith(
        exercieList: state.exercieList,
        toogleRebuild: !state.toogleRebuild!,
      ),
    );

    // print(aaaa);
    print(state.exercieList?[exerciseNumber!].setsList);
  }
}
