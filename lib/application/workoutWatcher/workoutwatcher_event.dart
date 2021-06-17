part of 'workoutwatcher_bloc.dart';

@freezed
abstract class WorkoutwatcherEvent with _$WorkoutwatcherEvent {
  const factory WorkoutwatcherEvent.downloadWorkouts() = _DownloadWorkouts;
  const factory WorkoutwatcherEvent.workoutsReceived(
          Either<WorkoutFailure, List<Workout>> failureOrWorkouts) =
      _WorkoutsReceived;
}
