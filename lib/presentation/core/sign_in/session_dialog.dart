import 'package:conoce_alfa/application/auth/bloc_sign_in/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_login_buttons/social_login_buttons.dart'; // Import flutter_icons
import 'package:conoce_alfa/configuration/theme/app_theme.dart';
import '../../../injection.dart';

class SessionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<SignInFormBloc>(
      create: (context) => getIt<SignInFormBloc>(), // Use getIt here
      child: AlertDialog(
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
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.email),
                labelText: 'Email',
              ),
              autocorrect: false,
              onChanged: (email) => context
                  .read<SignInFormBloc>()
                  .add(EmailChanged(email)), // Update email state
              validator: (value) {
                if (!RegExp(r"^[a-zA-Z0-9.a-z_+]*@[a-z]+\.[a-z]+")
                    .hasMatch(value!)) {
                  return 'Por favor ingrese un correo electrónico válido.';
                }
                return null;
              },
            ),
            SizedBox(height: 20, width: 20),
            TextFormField(
              decoration: const InputDecoration(
                prefixIcon: Icon(Icons.lock),
                labelText: 'Password',
              ),
              obscureText: true,
              validator: (value) {
                if (value!.isEmpty) {
                  return 'Por favor ingrese su contraseña.';
                }
                return null; // Add more complex password validation if needed
              },
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SocialLoginButton(
                    buttonType: SocialLoginButtonType.google,
                    onPressed: () async {},
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                final state = context.read<SignInFormBloc>().state;
                if (state.isSubmitting == true) {
                  // Perform form submission (optional, can be handled in bloc)
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(
                          'Por favor corrija los errores en el formulario.'),
                    ),
                  );
                }
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
            onPressed: () => Navigator.pop(context), // Close dialog
            child: Text(
              'Cancelar',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
