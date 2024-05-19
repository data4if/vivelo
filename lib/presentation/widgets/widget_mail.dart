import 'package:flutter/material.dart'; // For making HTTP requests

class EmailVerificationWidget extends StatefulWidget {
  @override
  _EmailVerificationWidgetState createState() =>
      _EmailVerificationWidgetState();
}

class _EmailVerificationWidgetState extends State<EmailVerificationWidget> {
  // Validar comportamaiento
  TextEditingController _emailController = TextEditingController();
  // Validar esta logica y limpiar con los consejos de resocoder
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TextFormField(
          controller: _emailController,
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15.0), // Radio de los bordes
              //borderSide: BorderSide.none, // Elimina el borde lateral
            ),
          ),
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: () {
            print('presionado verificacion de email');
          },
          child: Text('Validar'),
        ),
      ],
    );
  }
}
