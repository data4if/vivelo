import 'package:flutter/material.dart';
import 'package:vivelo/configuration/theme/app_theme.dart';
import 'package:vivelo/configuration/router/app_router.dart';
import 'package:vivelo/injection.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
  configureInjecttionSetup();
  runApp(MobileApp());
}

class MobileApp extends StatelessWidget {
  MobileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Vivelo en maracaibo',
      debugShowCheckedModeBanner: false,
      routerConfig: app_router,
      theme: AppTheme.getThemeData(),
    );
  }
}
