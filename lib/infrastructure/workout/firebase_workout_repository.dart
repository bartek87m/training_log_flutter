import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/workout/i_workout_repositry.dart';
import 'package:training_log/domain/workout/workout_dtos.dart';
import 'package:training_log/domain/workout/workout_failure.dart';
import 'package:training_log/domain/workout/workout.dart';
import 'package:training_log/infrastructure/core/firestore_helpers.dart';

@LazySingleton(as: IWorkoutFacade)
class FirebaseWorkoutFacade implements IWorkoutFacade {
  final FirebaseFirestore _firestore;

  FirebaseWorkoutFacade(this._firestore);

  @override
  Future<Either<WorkoutFailure, Unit>> createWorkout({Workout? workout}) async {
    try {
      final userDoc = await _firestore.userDocument();
      final workoutDto = WorkoutDto.fromDomain(workout!);
      await userDoc.workoutCollection
          .doc(workoutDto.id)
          .set(workoutDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return left(WorkoutFailure.unexpected());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> removeWorkout(
      {String? workoutId}) async {
    try {
      final userDoc = await _firestore.userDocument();

      await userDoc.workoutCollection.doc(workoutId).delete();
      return right(unit);
    } on FirebaseException catch (e) {
      return left(WorkoutFailure.unexpected());
    }
  }

  @override
  Future<Either<WorkoutFailure, Unit>> update({Workout? workout}) async {
    try {
      final userDoc = await _firestore.userDocument();
      final workoutDto = WorkoutDto.fromDomain(workout!);
      await userDoc.workoutCollection
          .doc(workoutDto.id)
          .update(workoutDto.toJson());
      return right(unit);
    } on FirebaseException catch (e) {
      return left(WorkoutFailure.unexpected());
    }
  }

  @override
  Stream<Either<WorkoutFailure, List<Workout>>> watchAll() async* {
    final userDoc = await _firestore.userDocument();
    yield* userDoc
        .collection('workouts')
        .orderBy('workoutDate', descending: true)
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
