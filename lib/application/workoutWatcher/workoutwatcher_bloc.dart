import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:fpdart/fpdart.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/domain/workout/workout_failure.dart';

part 'workoutwatcher_event.dart';
part 'workoutwatcher_state.dart';
part 'workoutwatcher_bloc.freezed.dart';

@injectable
class WorkoutwatcherBloc
    extends Bloc<WorkoutwatcherEvent, WorkoutwatcherState> {
  late IWorkoutFacade _iWorkoutFacade;

  late StreamSubscription<Either<WorkoutFailure, List<Workout>>>
      _workoutStreamSubscribtion;

  WorkoutwatcherBloc(this._iWorkoutFacade)
      : super(WorkoutwatcherState.initial()) {
    on<DownloadWorkouts>((event, emit) => ({
          emit(WorkoutwatcherState.loading()),
          _workoutStreamSubscribtion = _iWorkoutFacade.watchAll().listen(
                (failureOrWorkout) => {
                  print(failureOrWorkout),
                  add(
                    WorkoutwatcherEvent.workoutsReceived(failureOrWorkout),
                  ),
                },
              )
        }));
    on<WorkoutsReceived>((event, emit) => (emit(event.failureOrWorkouts.fold(
        (f) => WorkoutwatcherState.loadFailure(f),
        (workout) => WorkoutwatcherState.loadSuccess(workout)))));
  }

  // @override
  // Stream<WorkoutwatcherState> mapEventToState(
  //   WorkoutwatcherEvent event,
  // ) async* {
  //   yield* event.map(downloadWorkouts: (e) async* {
  //     yield const WorkoutwatcherState.loading();
  //     //TODO dodać anulowanie subskrybcji
  //     // await _workoutStreamSubscribtion.cancel();

  //     _workoutStreamSubscribtion = _iWorkoutFacade.watchAll().listen(
  //           (failureOrWorkout) => {
  //             print(failureOrWorkout),
  //             add(
  //               WorkoutwatcherEvent.workoutsReceived(failureOrWorkout),
  //             ),
  //           },
  //         );
  //   }, workoutsReceived: (e) async* {
  //     print('data received');
  //     yield e.failureOrWorkouts.fold((f) => WorkoutwatcherState.loadFailure(f),
  //         (workout) => WorkoutwatcherState.loadSuccess(workout));
  //   });
  // }
}
