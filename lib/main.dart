import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivelo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:vivelo/domain/auth/interface_auth_facade.dart';
import 'package:vivelo/configuration/theme/app_theme.dart';
import 'package:vivelo/configuration/router/app_router.dart';
import 'package:vivelo/domain/user/email_address.dart';
import 'package:vivelo/domain/user/user_password.dart';
import 'package:vivelo/infrastructure/firebase/firebase_auth_facade.dart';
import 'package:vivelo/infrastructure/firebase_core/firebase_service.dart';
import 'package:vivelo/injection.dart';

void main() async {
  //rprint('iniciando');
  FirebaseService.init();
  configureInjecttionSetup();
  runApp(const BlocsProviders());
  //print("Arracando el emulador, prueba de autenticacion");
}

late final InterfaceAuthFacade _authFacade;

// Clase personalizada
class BlocsProviders extends StatelessWidget {
  // El fantasma del key no desaparece
  const BlocsProviders({super.key});
  // Constructor de componentes de logica de negocio
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultiBlocProvider(
        providers: [
          BlocProvider<SignInFormBloc>(
            create: (context) => SignInFormBloc(_authFacade),
          ),
        ],
        child: MobileApp(),
      ),
    );
  }
}

// Rendirizacion de una App tipo material con router para la navegacion
class MobileApp extends StatelessWidget {
  // Constructor
  MobileApp({super.key});
  @override
  Widget build(BuildContext context) {
    // Enxplorar codigo comentado:
    //final appRouter = context.watch<RouterSimpleCubit>().state;
    //final appTheme = context.watch<ThemeCubit>().state;
    final user = getIt<FirebaseAuthFacade>();
    user.signInWithEmailAndPassword(
        emailAddress: EmailAddress("data4if@gmail.com"),
        password: Password("123456"));
    print(user.toString());

    return MaterialApp.router(
      title: 'Vivelo en maracaibo',
      debugShowCheckedModeBanner: false,
      routerConfig: app_router,
      theme: AppTheme.getThemeData(),
    );
  }
}
