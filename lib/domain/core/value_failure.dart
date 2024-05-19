import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
// Esto indica que despues de correr la clase, en la terminal
// dart run build runner // Se genera todo el codigo boiler-plate para
// ser un data transfer object
part 'value_failure.freezed.dart';

@freezed
abstract class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.missingUppercase({
    required T failedValue,
  }) = missingUppercase<T>;

  //
  const factory ValueFailure.invalidEmail({
    required T failedValue,
  }) = InvalidEmail<T>;
  //
  const factory ValueFailure.shortPassword({
    required T failedValue,
  }) = ShortPassword<T>;

  const factory ValueFailure.missingSpecialSymbol({
    required T failedValue,
  }) = missingSpecialSymbol<T>;
  //Constructor privado
  const ValueFailure._();
}
