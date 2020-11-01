part of 'trip_search_bloc.dart';

@freezed
abstract class TripSearchEvent with _$TripSearchEvent {
  const factory TripSearchEvent.tripCardPressed({Trip trip}) = _TripSearchEvent;
}
