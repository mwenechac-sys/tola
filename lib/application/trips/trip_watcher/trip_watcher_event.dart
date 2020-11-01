part of 'trip_watcher_bloc.dart';

@freezed
abstract class TripWatcherEvent with _$TripWatcherEvent {
  const factory TripWatcherEvent.watchAllStarted(
      {DateTime travelDate,
      String departureTown,
      String destinationTown,
      int passengerCount}) = _WatchAllStarted;

  const factory TripWatcherEvent.tripsReceived(
    Either<TripFailure, KtList<Trip>> failureOrTrips,
  ) = _TripsReceived;
}
