import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_facade.dart';
import 'package:training_log/domain/workout/workout_failure.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/infrastructure/core/firestore_helpers.dart';
import 'package:training_log/infrastructure/workout/workout_dtos.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: IWorkoutFacade)
class FirebaseWorkoutFacade implements IWorkoutFacade {
  final FirebaseFirestore _firestore;

  FirebaseWorkoutFacade(this._firestore);

  @override
  Stream<Either<WorkoutFailure, List<Workout>>> watchAll() async* {
    print("aaa");
    final userDoc = await _firestore.userDocument();

    yield* userDoc.workoutCollection
        .orderBy('serverTimeStamp', descending: true)
        .snapshots()
        .map(
          (snapshot) => right<WorkoutFailure, List<Workout>>(
            snapshot.docs
                .map((doc) => WorkoutDto.fromJson(doc.data()).toDomain())
                .toList(),
          ),
        )
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const WorkoutFailure.permissionDenied());
      } else {
        print('QWE!!! $e');
        return left(const WorkoutFailure.unexpected());
      }
    });
  }

  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout({Workout workout}) async {
    final workoutDto = WorkoutDto.fromDomain(workout);
    print(workoutDto.toJson());
    try {
      final userDoc = await _firestore.userDocument();
      await userDoc.workoutCollection
          .doc(workoutDto.id)
          .set(workoutDto.toJson());

      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const WorkoutFailure.permissionDenied());
      }
      return left(const WorkoutFailure.unexpected());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> removeWorkout({String workoutId}) async {
    try {
      print(workoutId);
      final userDoc = await _firestore.userDocument();
      await userDoc.workoutCollection.doc(workoutId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      if (e.message.contains('PERMISSION_DENIED')) {
        return left(const WorkoutFailure.permissionDenied());
      }
      return left(const WorkoutFailure.unexpected());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> update({Workout workout}) {
    // TODO: implement update
    throw UnimplementedError();
  }
}
