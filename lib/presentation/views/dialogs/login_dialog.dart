import 'package:flutter/material.dart';
import 'package:conoce_alfa/configuration/theme/app_theme.dart';
import 'package:conoce_alfa/presentation/core/dialogs/session_dialog.dart';

class LoginDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Bienvenido!',
        style: TextStyle(color: Colors.white),
      ),
      content: SingleChildScrollView(
        child: ListView(
          children: <Widget>[
            Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                Text(
                  'Por favor iniciar sesion o registrarse',
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    // Perform login action
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return SessionDialog();
                      },
                    );
                  },
                  child: Text(
                    'Iniciar sesion',
                    style: TextStyle(color: AppTheme.primaryColor),
                  ),
                ),
                SizedBox(height: 10),
                OutlinedButton(
                  onPressed: () {
                    // Perform registration action
                    Navigator.pop(context);
                    Navigator.pushNamed(
                        context, '/signin-form'); // Close dialog
                  },
                  child: Text(
                    'Registrarse',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // Close dialog
              },
              child: Text('Cancelar'),
            ),
          ],
        ),
      ),
    );
  }
}
