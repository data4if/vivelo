import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:conoce_alfa/presentation/widgets/widget_id.dart';
import 'package:conoce_alfa/presentation/widgets/widget_mail.dart';
import 'package:conoce_alfa/presentation/widgets/widget_phone.dart';

class RegisterPage extends StatefulWidget {
  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Container(child: Text('Registro', textAlign: TextAlign.right)),
        leading: IconButton(
          icon: Icon(Icons.keyboard_return),
          onPressed: () =>
              context.go('/'), // Add the path you want to navigate to
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  IdentityVerificationWidget(),
                  EmailVerificationWidget(),
                  PhoneNumberVerificationWidget(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
