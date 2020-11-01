import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:meta/meta.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/domain/trips/i_trip_repository.dart';
import 'package:tola/domain/trips/trip.dart';
import 'package:tola/domain/trips/trip_failure.dart';

part 'trip_watcher_event.dart';

part 'trip_watcher_state.dart';

part 'trip_watcher_bloc.freezed.dart';

@injectable
class TripWatcherBloc extends Bloc<TripWatcherEvent, TripWatcherState> {
  TripWatcherBloc(this._tripRepository, this.bookingFormBloc)
      : super(const TripWatcherState.initial());

  final ITripRepository _tripRepository;
  final BookingFormBloc bookingFormBloc;

  @override
  Stream<TripWatcherState> mapEventToState(
    TripWatcherEvent event,
  ) async* {
    yield* event.map(watchAllStarted: (e) async* {
      _tripRepository
          .watchAll(
              passengerCount: e.passengerCount,
              destinationTown: e.destinationTown,
              departureTown: e.departureTown,
              travelDate: e.travelDate)
          .listen(
            (failureOrTrips) =>
                add(TripWatcherEvent.tripsReceived(failureOrTrips)),
          );
    }, tripsReceived: (e) async* {
      yield e.failureOrTrips.fold((l) => TripWatcherState.loadFailure(l),
          (r) => TripWatcherState.loadSuccess(r));
    });
  }

  @override
  Future<void> close() {
    return super.close();
  }
}
