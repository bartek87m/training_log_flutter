import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:injectable/injectable.dart';
import 'package:training_log/domain/auth/auth_failure.dart';
import 'package:dartz/dartz.dart';
import 'package:training_log/domain/auth/i_auth_facade.dart';
import 'package:training_log/domain/auth/value_objects.dart';
import 'package:training_log/domain/auth/user.dart';
import './firebase_user_mapper.dart';

@LazySingleton(as: IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;

  FirebaseAuthFacade(this._firebaseAuth);

  @override
  Future<Option<User>> getSignedInUser() async {
    // final userId = _firebaseAuth.currentUser.uid;
    // return optionOf(User(id: UniqueId.fromUniqueString(userId).toString()));
    //poniżej wersja z dodanym extensions do fiflioteki firebase
    return optionOf(_firebaseAuth.currentUser?.toDomain());
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {EmailAdress? emailAdress, Password? password}) async {
    final emailAdressString = emailAdress!.getOrCrash();
    final passwordString = password!.getOrCrash();

    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: emailAdressString, password: passwordString);
      return right(unit); //zwracamy coś jak nie ma błędu
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombinaion());
      } else {
        print(e.message);
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> regiseterWithEmailAndPassword(
      {EmailAdress? emailAdress, Password? password}) async {
    final emailAdressString = emailAdress!.getOrCrash();
    final passwordString = password!.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: emailAdressString.toString().trim(), password: passwordString);
      return right(unit);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(AuthFailure.emailAlreadiInUse());
      } else {
        print(e.message);
        return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> signOut() => Future.wait([
        //wait samo zwraca future nie musi być async
        _firebaseAuth.signOut(),
      ]);
}
