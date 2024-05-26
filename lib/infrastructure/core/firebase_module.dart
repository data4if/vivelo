import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';

@module
abstract class FirebaseCoreModule {
  //Solo se usa durante la autenticacion o registro
  @LazySingleton()
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  //Solo se usa durante la autenticacion o registro
  @LazySingleton()
  GoogleSignIn get googleSignIn => GoogleSignIn();
  // Razonamiento necesito este objeto global activo SIEMPRE
  @Singleton()
  FirebaseFirestore get firestore => FirebaseFirestore.instance;
}
