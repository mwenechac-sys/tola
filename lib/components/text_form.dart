import 'package:flutter/material.dart';

class TolaTextFormField extends StatelessWidget {
  final String hintText;
  final FormFieldValidator<String> validator;
  final FormFieldSetter<String> onSaved;

  const TolaTextFormField({this.hintText, this.validator, this.onSaved});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          border: const OutlineInputBorder(),
        ),
        validator: validator,
        onSaved: onSaved,
        keyboardType: TextInputType.text,
      ),
    );
  }
}
