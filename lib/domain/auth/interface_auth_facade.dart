import 'package:conoce_alfa/domain/auth/auth_failure.dart';
import 'package:conoce_alfa/domain/user/email_address.dart';
import 'package:conoce_alfa/domain/user/user_password.dart';
import 'package:dartz/dartz.dart';

///import 'package:injectable/injectable.dart';
abstract class InterfaceAuthFacade {
  // Registrar con email y passwaord
  //@preResolve
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  // Iniciar session con email y password
  //@preResolve
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  // Iniciar session utilizando una cuenta en alquiler/tennad
  //@preResolve
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  // More method are comming
}
