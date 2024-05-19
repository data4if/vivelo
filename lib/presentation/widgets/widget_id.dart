import 'package:flutter/material.dart';

class IdentityVerificationWidget extends StatefulWidget {
  @override
  _IdentityVerificationWidgetState createState() =>
      _IdentityVerificationWidgetState();
}

class _IdentityVerificationWidgetState
    extends State<IdentityVerificationWidget> {
  TextEditingController _idNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            style: TextStyle(color: Colors.white),
            controller: _idNumberController,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: 'Número de Identificación',
              border: OutlineInputBorder(
                borderRadius:
                    BorderRadius.circular(15.0), // Radio de los bordes
                //borderSide: BorderSide.none, // Elimina el borde lateral
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              print("Presionado verificacion de identidad");
            },
            child: Text(
              'Validar',
              style: TextStyle(color: Colors.white),
            ),
          ),
          SizedBox(height: 20),
        ],
      ),
    );
  }
}
