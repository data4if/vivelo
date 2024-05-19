// Either option to create smart entities
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:vivelo/domain/core/value_validator.dart';

// Abstracciones
import '../../core/value_failure.dart';
import '../../core/value_object.dart';

@immutable
class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    // assert(input != null);
    return Password._(
      validatePassword(input),
    );
  }

  const Password._(this.value);
}
