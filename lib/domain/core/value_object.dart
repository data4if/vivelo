import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:vivelo/domain/core/value_errors.dart';
import 'package:vivelo/domain/core/value_failure.dart';

@immutable
abstract class ValueObject<T> {
  // Clase inmutable creada para los VALIDATE VALUE OBJECTS
  const ValueObject();
  Either<ValueFailure<T>, T> get value;

  bool isValid() => value.isRight();

  /// throw [UnexpectedValueError] from [ValueFailure]
  //id is used in Either - from dartz package to return right -> <T>
  T getOrCrash() {
    return value.fold((l) => throw ValueErrors(l), id);
  }

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

// Rayos
  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
