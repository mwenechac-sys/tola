import 'package:flutter/material.dart';

import '../../../constants.dart';

class KAppBar extends StatelessWidget {
  final String title;

  const KAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      brightness: Brightness.light,
      backgroundColor: Colors.white,
      title: const Text(
        'Search trips',
        style: TextStyle(
          color: kPrimaryTextColor,
        ),
      ),
    );
  }
}
