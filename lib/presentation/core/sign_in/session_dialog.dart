import 'package:conoce_alfa/application/auth/bloc_sign_in/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_login_buttons/social_login_buttons.dart'; // Import flutter_icons
import 'package:conoce_alfa/configuration/theme/app_theme.dart';
import 'package:conoce_alfa/presentation/widgets/widget_mail.dart';

class SessionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    
          return Form(
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
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid Email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
                  SizedBox(height: 20, width: 20),
                  TextFormField(
                    decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      labelText: 'Password',
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SocialLoginButton(
                          buttonType: SocialLoginButtonType.google,
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
            ),
          );
        });
}