import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:vivelo/domain/auth/auth_failure.dart';
import 'package:vivelo/domain/auth/interface_auth_facade.dart';
import 'package:vivelo/domain/user/email_address.dart';
import 'package:vivelo/domain/user/user_password.dart';

@Named("Autenticacion")
@Injectable(as: InterfaceAuthFacade)
class FirebaseAuthFacade implements InterfaceAuthFacade {
  // Constantes - Infraestructura
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  // Inicializar
  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

  @Named("Registro")
  @factoryMethod
  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: userMail, password: userPassword);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @Named("Sesion")
  @factoryMethod
  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required EmailAddress emailAddress, required Password password}) async {
    final userMail = emailAddress.getOrCrash();
    final userPassword = password.getOrCrash();
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: userMail, password: userPassword);
      return right(unit);
    } on PlatformException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @Named("GoogleSesion")
  @factoryMethod
  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    // TODO: implement signInWithGoogle
    try {
      final google_user = await _googleSignIn.signIn();
      if (google_user == null) {
        return left(AuthFailure.cancelledByUser());
      }
      final google_authentication = await google_user.authentication;
      final authCredential = GoogleAuthProvider.credential(
        idToken: google_authentication.idToken,
        accessToken: google_authentication.accessToken,
      );
      return _firebaseAuth
          .signInWithCredential(authCredential)
          .then((r) => right(unit));
    } on PlatformException catch (e) {
      (e.toString());
      return left(const AuthFailure.serverError());
    }
  }
}
