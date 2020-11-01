import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/injection.dart';

import 'widgets/booking_form.dart';

class BookingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BookingForm();
  }
}
