import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:neverForget/domain/auth/user.dart';
import 'package:neverForget/domain/core/value_objects.dart';

extension FirebaseUserDomainX on auth.User {
  User toDomain() {
    return User(
      id: UniqueId.fromUniqueString(uid),
    );
  }
}
