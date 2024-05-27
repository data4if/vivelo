import 'package:conoce_alfa/domain/auth/interface_auth_facade.dart';
import 'package:conoce_alfa/infrastructure/firebase/firebase_auth_facade.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get_it/get_it.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:injectable/injectable.dart';
import 'package:injectable_generator/injectable_types.dart';
import 'injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {
  getIt.init();
  //TODO: validar el punto en que estor haiendi esto en el injection,config,dart
  FirebaseAuthFacade auth_facade = FirebaseAuthFacade(
    GetIt.instance<FirebaseAuth>(), // Inject FirebaseAuth instance
    GetIt.instance<GoogleSignIn>(),
  ); // Inject GoogleSignIn instance);
}
