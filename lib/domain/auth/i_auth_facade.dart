import 'package:auth_app/domain/auth/value_objects.dart';
import 'package:flutter/foundation.dart';
import './value_objects.dart';
// import 'package:meta/meta.dart';

abstract class IAuthFacade {
  Future<void> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<void> signinWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<void> signInWithGoogle();
}
