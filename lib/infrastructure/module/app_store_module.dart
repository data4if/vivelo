import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:injectable/injectable.dart';
import 'package:vivelo/infrastructure/firebase/firebase_service.dart';

@module
abstract class AppStoreModule {
  //
  //@preResolve
  //Future<FirebaseService> get fireService => FirebaseService.init();
  //
  @Injectable()
  FirebaseFirestore get store => FirebaseFirestore.instance;
}
