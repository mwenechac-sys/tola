import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tola/domain/trips/trip.dart';

part 'trip_search_event.dart';

part 'trip_search_state.dart';

part 'trip_search_bloc.freezed.dart';

class TripSearchBloc extends Bloc<TripSearchEvent, TripSearchState> {
  TripSearchBloc() : super(TripSearchState.initial());

  @override
  Stream<TripSearchState> mapEventToState(
    TripSearchEvent event,
  ) async* {
    yield* event.map(tripCardPressed: (e) async* {
      final TripSearchState newState = state.copyWith(trip: e.trip);
      yield newState;
    });
  }
}
