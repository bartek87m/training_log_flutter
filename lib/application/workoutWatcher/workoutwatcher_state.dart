part of 'workoutwatcher_bloc.dart';

@freezed
abstract class WorkoutwatcherState with _$WorkoutwatcherState {
  const factory WorkoutwatcherState.initial() = _Initial;
  const factory WorkoutwatcherState.loading() = _Loading;
  const factory WorkoutwatcherState.loadFailure(WorkoutFailure workoutfailure) =
      _LoadFailure;
  const factory WorkoutwatcherState.loadSuccess(List<Workout> workouts) =
      _LoadSuccess;
}
