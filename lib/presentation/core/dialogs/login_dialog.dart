import 'package:conoce_alfa/application/auth/bloc_sign_in/sign_in_bloc.dart';
import 'package:flutter/material.dart';
import 'package:conoce_alfa/configuration/theme/app_theme.dart';
import 'package:conoce_alfa/presentation/core/dialogs/session_dialog.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        return AlertDialog(
          title: Text(
            'Bienvenido!',
            style: TextStyle(color: Colors.white),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
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
                  Navigator.pushNamed(context, '/signin-form'); // Close dialog
                },
                child: Text(
                  'Registrarse',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.pop(context); // Close dialog
                },
                child: Text('Cancelar'),
              ),
            ],
          ),
        );
      },
    );
  }
}
