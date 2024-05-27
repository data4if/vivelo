import 'package:conoce_alfa/application/auth/bloc_sign_in/sign_in_bloc.dart';
import 'package:conoce_alfa/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:social_login_buttons/social_login_buttons.dart'; // Import flutter_icons

// Import ValueFailure
class SessionDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: getIt<SingInB>) 
    BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
          () => {},
          (either) => either.fold(
            (failure) => ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Sign in failed: ${failure.map(
                  invalidEmailAndPasswordCombination: (_) =>
                      'Missing uppercase letter',
                  serverError: (_) => 'Missing special symbol',
                  cancelledByUser: (_) => 'Cancelled by user',
                  emailAlreadyInUse: (_) => 'Email in use',
                )}'), // Access failure message property
              ),
            ),
            (_) => Navigator.pop(
                context), // Assuming successful signin closes dialog
          ),
        );
      },
      builder: (context, state) {
        return Material(
          child: AlertDialog(
            title: Text(
              'Bienvenido!',
              style: TextStyle(color: Colors.white),
            ),
            content: ListView(
              children: <Widget>[
                Text(
                  'Por favor ingrese el correo con y contrasena con el cual se registró',
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
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.emailChanged(value)),
                  validator: (_) => context
                      .read<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid email',
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
                  obscureText: true,
                  onChanged: (value) => context
                      .read<SignInFormBloc>()
                      .add(SignInFormEvent.passwordChanged(value)),
                  validator: (_) =>
                      null, // Add more complex password validation if needed
                ),
                SizedBox(height: 20, width: 20),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SocialLoginButton(
                        borderRadius: 8,
                        buttonType: SocialLoginButtonType.google,
                        onPressed: () async {
                          context.read<SignInFormBloc>().add(
                                SignInFormEvent.signInWithGooglePressed(),
                              );
                        },
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    if (!state.isSubmitting && !state.showErrorMessages) {
                      context.read<SignInFormBloc>().add(
                          SignInFormEvent.signInWithEmailAndPasswordPressed());
                    }
                  },
                  child: Text(
                      state.isSubmitting ? 'Procesando...' : 'Iniciar Sesión'),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
