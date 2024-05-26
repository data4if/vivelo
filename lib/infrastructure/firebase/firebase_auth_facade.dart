import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:conoce_alfa/domain/auth/auth_failure.dart';
import 'package:conoce_alfa/domain/auth/interface_auth_facade.dart';
import 'package:conoce_alfa/domain/user/email_address.dart';
import 'package:conoce_alfa/domain/user/user_password.dart';

class FirebaseAuthFacade implements InterfaceAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
  );

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

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final google_user = await _googleSignIn.signIn();
      if (google_user == null) {
        return left(const AuthFailure.cancelledByUser());
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
      return left(const AuthFailure.serverError());
    }
  }
}
