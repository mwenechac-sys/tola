import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'package:tola/injection.dart';
import 'package:tola/presentation/booking/trip_selection/widgets/trip_card_widget.dart';

import 'trips_list_widget.dart';

class TripsStatesHolder extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TripWatcherBloc, TripWatcherState>(
      builder: (context, state) {
        return state.map(
            initial: (_) => Container(),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadSuccess: (state) {
              return TripsListWidget(state.trips);
            },
            loadFailure: (_) => Container());
      },
    );
  }
}
