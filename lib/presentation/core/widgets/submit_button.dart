import 'package:flutter/material.dart';

import '../../../constants.dart';

class SubmitButton extends StatelessWidget {
  final String title;
  final VoidCallback function;

  const SubmitButton({Key key, this.title, this.function}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ButtonTheme(
      minWidth: double.infinity,
      height: 50.0,
      child: FlatButton(
        clipBehavior: Clip.antiAlias,
        color: kBottomContainerColour,
        onPressed: function,
        child: Text(
          title,
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
