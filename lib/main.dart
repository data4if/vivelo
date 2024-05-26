import 'package:conoce_alfa/presentation/core/app_widget.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'injection.dart';

void main() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.web);
  // TODO -> Pendientes las configuraciones para pruebas y produccion y desarrollo
  configureDependencies();
  runApp(MobileApp());
}
