import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:neverForget/domain/auth/user.dart';

extension FirebaseUserDomainX on firebase.User {
  User toDomain() {
    return User(
      id: uid,
    );
  }
}
