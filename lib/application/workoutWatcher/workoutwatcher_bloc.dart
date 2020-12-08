import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';

part 'workoutwatcher_event.dart';
part 'workoutwatcher_state.dart';
part 'workoutwatcher_bloc.freezed.dart';

@injectable
class WorkoutwatcherBloc
    extends Bloc<WorkoutwatcherEvent, WorkoutwatcherState> {
  final IWorkoutFacade _iWorkoutFacade;

  WorkoutwatcherBloc(this._iWorkoutFacade) : super(_Initial());

  @override
  Stream<WorkoutwatcherState> mapEventToState(
    WorkoutwatcherEvent event,
  ) async* {
    yield* event.map(downloadWorkouts: (_) async* {
      print('download workouts');
    });
  }
}
