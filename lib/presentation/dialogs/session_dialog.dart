import 'package:flutter/material.dart';
import 'package:social_login_buttons/social_login_buttons.dart'; // Import flutter_icons
import 'package:vivelo/configuration/theme/app_theme.dart';
import 'package:vivelo/presentation/widgets/widget_mail.dart';

class SessionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(
        'Bienvenido!',
        style: TextStyle(color: Colors.white),
      ),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            'Por favor ingrese el correo y teléfono con el cual se registró',
            style: TextStyle(color: Colors.white),
          ),
          SizedBox(height: 20, width: 20),
          EmailVerificationWidget(),
          SizedBox(height: 20, width: 20),
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.google,
                  onPressed: () {},
                ),
                SizedBox(width: 20, height: 20),
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.apple,
                  onPressed: () {},
                ),
                SizedBox(width: 20, height: 20),
                SocialLoginButton(
                  buttonType: SocialLoginButtonType.facebook,
                  onPressed: () {},
                ),
              ],
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Perform login action
              Navigator.pop(context); // Close dialog
            },
            child: Text(
              'Iniciar sesión',
              style: TextStyle(color: AppTheme.primaryColor),
            ),
          ),
          SizedBox(height: 10),
        ],
      ),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.pop(context); // Close dialog
          },
          child: Text(
            'Cancelar',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
