import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:training_log/domain/auth/user.dart';
import 'package:training_log/domain/core/value_object.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(id: UniqueId.fromUniqueString(uid).toString());
  }
}
