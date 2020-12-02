import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';
import 'package:training_log/domain/workout/workout_failure.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IWorkoutFacade)
class FirebaseWorkoutFacade implements IWorkoutFacade {
  final FirebaseFirestore _firestore;

  FirebaseWorkoutFacade(this._firestore);

  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout({Workout workout}) async {
    final aaa = {'wod': 'workout'};
    try {
      final userDoc = await _firestore.userDocument();
      print(workout);
      await userDoc.workoutCollection.doc(workout.id.toString()).set(aaa);

      return right(unit);
    } catch (e) {
      print(e);
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> removeWorkout({String workoutId}) {
    // TODO: implement removeWorkout
    throw UnimplementedError();
  }

  @override
  Future<Either<WorkoutFailure, Unit>> update({Workout workout}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
