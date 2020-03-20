import 'package:flutter/material.dart';

class TolaTextFormField extends StatelessWidget {
  final String hintText;
  final Function validator;
  final Function onSaved;

  TolaTextFormField({this.hintText, this.validator, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(0.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: OutlineInputBorder(),
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: TextInputType.text,
      ),
    );
  }
}
