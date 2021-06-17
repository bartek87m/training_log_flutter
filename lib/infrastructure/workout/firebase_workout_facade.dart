import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';
import 'package:training_log/domain/workout/workout_dtos.dart';
import 'package:training_log/domain/workout/workout_failure.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/infrastructure/core/firestore_helpers.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IWorkoutFacade)
class FirebaseWorkoutFacade implements IWorkoutFacade {
  final FirebaseFirestore _firestore;

  FirebaseWorkoutFacade(this._firestore);

  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout({Workout? workout}) {
    // TODO: implement createWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> removeWorkout({String? workoutId}) {
    // TODO: implement removeWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> update({Workout? workout}) {
    // TODO: implement update
    throw UnimplementedError();
  }

  @override
  Stream<Either<WorkoutFailure, List<Workout>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc
        .collection('workouts')
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<WorkoutFailure, List<Workout>>(
            snapshot.docs
                .map(
                  (doc) => WorkoutDto.fromJson(doc.data()).toDomain(),
                )
                .toList(),
          ),
        );
  }

  @override
  Stream<Either<WorkoutFailure, List<Workout>>> watchForCertainAmount(
      int amount) {
    // TODO: implement watchForCertainAmount
    throw UnimplementedError();
  }
}
