import 'package:conoce_alfa/presentation/core/sign_in/session_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Drawer for the initial mobile menu.
    Drawer HomeMobileDrawer = Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Image.asset('assets/images/logo_fomutur.png'),
          ),
          ListTile(
            title: Text('Iniciar Sesion'),
            subtitle: Text('Conece - Alfa'),
            onTap: () => showDialog(
              context: context,
              builder: (BuildContext context) {
                return SessionDialog();
              },
            ),
          ),
          ListTile(
            title: Text('OPT - 1'),
            subtitle: Text('Feature waiting'),
            onTap: () => context.go('/'),
          ),
          ListTile(
            title: Text('OPT - 2'),
            subtitle: Text('Feature waiting'),
            onTap: () => {},
          ),
        ],
      ),
    );

    return Scaffold(
      appBar: AppBar(),
      drawer: HomeMobileDrawer,
      body: Container(
        color: Colors.blue,
      ),
    );
  }
}
