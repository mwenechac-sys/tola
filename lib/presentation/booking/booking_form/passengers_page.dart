import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/booking_form/passenger_count_bloc/passenger_count_bloc.dart';
import 'package:tola/injection.dart';
import 'package:tola/presentation/booking/booking_form/passengers.dart';

import '../../../constants.dart';

class PassengersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          brightness: Brightness.light,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.black87,
            ),
          ),
          backgroundColor: Colors.white,
          title: const Text(
            'Set Passengers',
            style: TextStyle(
              color: kPrimaryTextColor,
            ),
          ),
        ),
        body: Passengers());
  }
}
