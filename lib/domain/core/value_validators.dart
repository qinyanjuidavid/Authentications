import 'package:auth_app/domain/core/failures.dart';
import 'package:auth_app/domain/core/value_objects.dart';
import 'package:dartz/dartz.dart';

import '../auth/value_objects.dart';

Either<ValueFailure<String>, String> validateEmailAddress(String input) {
  const emailRegex = r"""
^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=>^_`{|}-]+@[a-zA-Z0-9]+\.[a-zA-Z]+""";
  if (RegExp(emailRegex).hasMatch(input)) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}

Either<ValueFailure<String>, String> validatePassword(String input) {
  if (input.length >= 6 && input.length <= 20 && input.isNotEmpty) {
    return right(input);
  } else {
    return left(ValueFailure.invalidEmail(failedValue: input));
  }
}
