import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
//import 'package:injectable/injectable.dart';
import 'package:vivelo/domain/auth/auth_failure.dart';
import 'package:vivelo/domain/user/email_address.dart';
import 'package:vivelo/domain/user/user_password.dart';

@injectable
abstract class InterfaceAuthFacade {
  // Registrar con email y passwaord
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  // Iniciar session con email y password
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  // Iniciar session utilizando una cuenta en alquiler/tennad
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
  // More method are comming
}
