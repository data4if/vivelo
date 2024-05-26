// Either option to create smart entities
import 'package:dartz/dartz.dart';
//import 'package:flutter/material.dart';
import 'package:meta/meta.dart';
import 'package:conoce_alfa/domain/core/value_validator.dart';

// Abstracciones
import '../core/value_failure.dart';
import '../core/value_object.dart';

/// `EmailAddress` is an immutable class that represents an email address as a value object.
/// It validates the input string and either holds a `ValueFailure<String>` if the validation fails,
/// or the valid email address string.
@immutable
class EmailAddress extends ValueObject<String> {
  // Return
  final Either<ValueFailure<String>, String> value;
  // Constructor
  factory EmailAddress(String input) {
    //assert(input != null);
    return EmailAddress._(
      validateEmailAddress(input),
    );
  }
  // Uso de either
  const EmailAddress._(this.value);
  // toString, equals, hashCode...
}
