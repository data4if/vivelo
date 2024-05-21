import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:vivelo/infrastructure/firebase/firebase_service.dart';

@module
abstract class AppAuthModule {
  //
  //@preResolve
  //Future<FirebaseService> get fireService => FirebaseService.init();
  //
  @injectable
  FirebaseAuth get auth => FirebaseAuth.instance;
}
