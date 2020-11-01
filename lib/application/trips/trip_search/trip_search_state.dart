part of 'trip_search_bloc.dart';

@freezed
abstract class TripSearchState with _$TripSearchState {
  const factory TripSearchState({Trip trip}) = _TripSearchState;

  factory TripSearchState.initial() => const TripSearchState();
}
