import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';
import 'package:training_log/domain/workout/workout_failure.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/infrastructure/core/firestore_helpers.dart';
import 'package:training_log/infrastructure/workout/workout_dtos.dart';

@LazySingleton(as: IWorkoutFacade)
class FirebaseWorkoutFacade implements IWorkoutFacade {
  final FirebaseFirestore _firestore;

  FirebaseWorkoutFacade(this._firestore);

  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout({Workout workout}) async {
    final workoutDto = WorkoutDto.fromDomain(workout);
    print(workoutDto.toJson());
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.workoutCollection
          .doc(workout.id.toString())
          .set(workoutDto.toJson());

      return right(unit);
    } catch (e) {
      print("qqq $e");
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
