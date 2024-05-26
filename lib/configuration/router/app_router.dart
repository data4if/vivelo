import 'package:conoce_alfa/presentation/home_page/home_page.dart';
import 'package:go_router/go_router.dart';

final app_router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => HomePage(),
    ),
  ],
);
