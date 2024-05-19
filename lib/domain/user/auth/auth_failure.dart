import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
//import 'package:vivelo_en_mcbo/domain/core/value_object.dart';
part 'auth_failure.freezed.dart';

@freezed
abstract class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;
  const factory AuthFailure.serverError() =
      ServerError; // implementar la logica para agarrar el error.
  const factory AuthFailure.emailAlreadyInUse() = EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination() =
      InvalidEmailAndPasswordCombination;
}
