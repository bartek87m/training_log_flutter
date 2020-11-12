import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:training_log/domain/auth/auth_failure.dart';
import 'package:training_log/domain/auth/user.dart';
import 'package:training_log/domain/auth/value_objects.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();

  Future<Either<AuthFailure, Unit>> regiseterWithEmailAndPassword({
    @required EmailAdress emailAdress,
    @required Password password,
  });

  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAdress emailAdress,
    @required Password password,
  });

  Future<void> signOut();
}
