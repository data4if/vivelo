import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vivelo/presentation/views.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
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
        color: Colors.amber,
      ),
    );
  }
}
