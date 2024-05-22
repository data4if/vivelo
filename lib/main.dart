import 'package:flutter/material.dart';
import 'package:vivelo/configuration/theme/app_theme.dart';
import 'package:vivelo/configuration/router/app_router.dart';
import 'package:vivelo/infrastructure/firebase_core/firebase_service.dart';
import 'package:vivelo/injection.dart';

void main() async {
  configureInjecttionSetup();
  FirebaseService.init();
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
