import 'package:flutter/material.dart';
import 'package:conoce_alfa/configuration/theme/app_theme.dart';
import 'package:conoce_alfa/configuration/router/app_router.dart';

class MobileApp extends StatelessWidget {
  MobileApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'conoce_alfa',
      debugShowCheckedModeBanner: false,
      routerConfig: app_router,
      theme: AppTheme.getThemeData(),
    );
  }
}
