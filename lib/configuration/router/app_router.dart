import 'package:go_router/go_router.dart';
import 'package:vivelo/presentation/views.dart';

final app_router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
    GoRoute(
      path: '/register',
      builder: (context, state) => RegisterPage(),
    ),
    GoRoute(
      path: '/paquete',
      builder: (context, state) => PaquetePage(),
    ),
  ],
);
