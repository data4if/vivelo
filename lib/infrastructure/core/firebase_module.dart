import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:vivelo/domain/auth/interface_auth_facade.dart';
import 'package:vivelo/infrastructure/firebase/firebase_auth_facade.dart';

@module
abstract class FirebaseCoreModule {
  //
  @LazySingleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  //
  @LazySingleton()
  GoogleSignIn get googleSignIn => GoogleSignIn();
  //
  @Singleton()
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
  //
  @Singleton()
  InterfaceAuthFacade get authFacade => FirebaseAuthFacade(
        firebaseAuth,
        googleSignIn,
      );
}
