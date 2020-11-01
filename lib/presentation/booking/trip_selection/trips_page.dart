import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/application/trips/trip_watcher/trip_watcher_bloc.dart';

import 'widgets/trips_states_holder.dart';

class TripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BookingFormBloc, BookingFormState>(
      builder: (BuildContext context, state) {
        BlocProvider.of<TripWatcherBloc>(context).add(
            TripWatcherEvent.watchAllStarted(
                travelDate: state.dateField.getOrCrash(),
                departureTown: state.departureTownField.getOrCrash(),
                destinationTown: state.destinationTownField.getOrCrash(),
                passengerCount: state.passengersField.getOrCrash()));
        return Scaffold(
          appBar: AppBar(
            iconTheme: const IconThemeData(
              color: Colors.black, //change your color here
            ),
            title: const Text(
              'Trips',
              style: TextStyle(color: Colors.black87),
            ),
            brightness: Brightness.light,
            backgroundColor: Colors.white,
          ),
          body: TripsStatesHolder(),
        );
      },
    );
  }
}
