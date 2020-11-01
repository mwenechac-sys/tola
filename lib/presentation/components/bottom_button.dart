import 'package:flutter/material.dart';

import '../../constants.dart';

class TolaButton extends StatelessWidget {
  const TolaButton({@required this.onTap, @required this.buttonTitle});

  final Function() onTap;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      buttonColor: kBottomContainerColour,
      minWidth: double.infinity,
      height: 50.0,
      child: RaisedButton(
        clipBehavior: Clip.antiAlias,
        onPressed: onTap,
        child: Text(
          buttonTitle,
          style: const TextStyle(fontSize: 18.0, color: Colors.white),
        ),
      ),
    );
  }
}
