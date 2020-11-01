import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kt_dart/collection.dart';
import 'package:tola/application/trips/trip_search/trip_search_bloc.dart';
import 'package:tola/application/trips/trip_watcher/trip_watcher_bloc.dart';

import '../../../constants.dart';
import 'widgets/seat_selection_widget.dart';

class SeatSelectionPage extends StatefulWidget {
  @override
  _SeatSelectionPageState createState() => _SeatSelectionPageState();
}

class _SeatSelectionPageState extends State<SeatSelectionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kScaffoldBgColor,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
          title: const Text(
            'Seat selection',
            style: TextStyle(color: kPrimaryTextColor),
          ),
        ),
        body: BlocBuilder<TripSearchBloc, TripSearchState>(
          builder: (context, state) {
            return BlocBuilder<TripWatcherBloc, TripWatcherState>(
              builder: (BuildContext context, state) {
                KtList seats;
                // state.maybeMap(
                //     loadSuccess: (state) =>
                //     seats = state.trips.filter((trip) => trip.tripIid
                //         ==, () => 'Trip not found'),
                //     orElse: null);
                return SeatSelectionWidget();
              },
            );
          },
        ));
  }
}
