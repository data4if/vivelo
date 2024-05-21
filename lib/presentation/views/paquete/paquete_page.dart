import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vivelo/presentation/views.dart';

class PaquetePage extends StatefulWidget {
  const PaquetePage({super.key});

  @override
  State<PaquetePage> createState() => _PaquetePageState();
}

class _PaquetePageState extends State<PaquetePage> {
  Widget build(BuildContext context) {
    // Drawer para el menu mobile inicial.
    Drawer HomeMobileDrawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/images/logo_fomutur.png'),
          ),
          ListTile(
            title: Text('Paquetes'),
            subtitle: Text('Vivelo en maracaibo'),
            onTap: () => context.go('/'),
          ),
          ListTile(
            title: Text('Registro'),
            subtitle: Text('Vivelo en maracaibo'),
            onTap: () => context.go('/register'),
          ),
          ListTile(
            title: Text('Registro'),
            subtitle: Text('Vivelo en maracaibo'),
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return SessionDialog();
              },
            ),
          ),
        ],
      ),
    );
    return Scaffold(
      appBar: AppBar(),
      drawer: HomeMobileDrawer,
      body: Container(
        color: Colors.grey,
      ),
    );
  }
}
