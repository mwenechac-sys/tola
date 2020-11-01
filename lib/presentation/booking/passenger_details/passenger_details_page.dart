import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/booking_form/passenger_count_bloc/passenger_count_bloc.dart';

import '../../../constants.dart';
import 'widgets/passenger_details_widget.dart';

class PassengerDetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kScaffoldBgColor,
        appBar: AppBar(
          title: const Text(
            'Passenger Details',
            style: TextStyle(color: kPrimaryTextColor),
          ),
        ),
        body: BlocBuilder<PassengerCountBloc, PassengerCountState>(
          builder: (context, state) {
            return PassengerDetailsWidget(
              adultPassengerCount: state.adultPassengersField.getOrCrash(),
              childrenPassengerCount:
                  state.childrenPassengersField.getOrCrash(),
              infantPassengerCount: state.infantPassengersField.getOrCrash(),
            );
          },
        ));
  }
}
