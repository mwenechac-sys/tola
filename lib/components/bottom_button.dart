import 'package:flutter/material.dart';

class TolaButton extends StatelessWidget {
  TolaButton({@required this.onTap, @required this.buttonTitle});

  final Function onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 50.0,
      child: RaisedButton(
          clipBehavior: Clip.antiAlias,
          child: Text(
            buttonTitle,
            style: TextStyle(fontSize: 18.0, color: Colors.white),
          ),
          color: Colors.deepPurple[400],
          onPressed: onTap),
    );
  }
}
