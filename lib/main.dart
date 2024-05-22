import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:vivelo/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:vivelo/domain/auth/interface_auth_facade.dart';
import 'package:vivelo/configuration/theme/app_theme.dart';
import 'package:vivelo/configuration/router/app_router.dart';
import 'package:vivelo/injection.dart';

void main() async {
  //WidgetsFlutterBinding.ensureInitialized();
  // Configuracion para el uso de inyeccion de dependencias
  configureInjecttionSetup();
  // Probablemente se edite esta linea
  runApp(const BlocsProviders());
  // Ver utilidad de estas iniciaciones.
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
    return MaterialApp.router(
      title: 'Vivelo en maracaibo',
      debugShowCheckedModeBanner: false,
      routerConfig: app_router,
      theme: AppTheme.getThemeData(),
    );
  }
}
