import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';

class PhoneNumberVerificationWidget extends StatefulWidget {
  @override
  _PhoneNumberVerificationWidgetState createState() =>
      _PhoneNumberVerificationWidgetState();
}

class _PhoneNumberVerificationWidgetState
    extends State<PhoneNumberVerificationWidget> {
  late CountryCode _selectedCountry = CountryCode.fromCountryCode('VE');
  TextEditingController _phoneNumberController = TextEditingController();
  Future<void> _verifyPhoneNumber() async {
    String phoneNumber = _phoneNumberController.text.trim();
    if (phoneNumber.isNotEmpty) {
      // SubmitAction
    } else {
      // Show error message if phone number is empty
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please enter a valid phone number')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            CountryCodePicker(
              onChanged: (country) {
                setState(() {
                  _selectedCountry = country!;
                });
              },
              initialSelection: 'VE',
              favorite: ['+58', 'VE'],
            ),
            SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                controller: _phoneNumberController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.phone),
                  labelText: 'Phone Number',
                  border: OutlineInputBorder(
                    borderRadius:
                        BorderRadius.circular(15.0), // Radio de los bordes
                    //borderSide: BorderSide.none, // Elimina el borde lateral
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        ElevatedButton(
          onPressed: _verifyPhoneNumber,
          child: Text('Validar'),
        ),
      ],
    );
  }
}
