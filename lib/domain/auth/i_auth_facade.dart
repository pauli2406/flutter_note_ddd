import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:neverForget/domain/auth/user.dart';

import 'auth_failure.dart';

abstract class IAuthFacade {
  Future<Option<User>> getSignedInUser();
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required String emailAddress,
    @required String password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  Future<void> signOut();
}
