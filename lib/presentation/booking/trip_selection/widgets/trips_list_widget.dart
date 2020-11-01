import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:kt_dart/kt.dart';
import 'package:tola/domain/trips/trip.dart';

import 'trip_card_widget.dart';

class TripsListWidget extends StatelessWidget {
  final KtList<Trip> trips;

  const TripsListWidget(this.trips);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        final trip = trips[index];
        return TripCardWidget(trip);
      },
      itemCount: trips.size,
    );
  }
}
