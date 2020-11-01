part of 'passenger_details_bloc.dart';

@freezed
abstract class PassengerDetailsState with _$PassengerDetailsState {
  const factory PassengerDetailsState({KtList<Passenger> passengerList}) =
      _PassengerDetailsState;

  factory PassengerDetailsState.initial() =>
      PassengerDetailsState(passengerList: KtList.empty());
}
