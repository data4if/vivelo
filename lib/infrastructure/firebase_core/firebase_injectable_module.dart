import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:vivelo/domain/auth/interface_auth_facade.dart';
import 'package:vivelo/infrastructure/firebase/firebase_auth_facade.dart';

@module
abstract class FirebaseAuthModule {
  //
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  //
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn();
  //
  @Singleton()
  InterfaceAuthFacade get authFacade => FirebaseAuthFacade(
        firebaseAuth,
        googleSignIn,
      );
}
