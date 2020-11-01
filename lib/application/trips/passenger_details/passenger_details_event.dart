part of 'passenger_details_bloc.dart';

@freezed
abstract class PassengerDetailsEvent with _$PassengerDetailsEvent {
  const factory PassengerDetailsEvent.passengerDetailsSubmitButtonPressed(
      KtList<Passenger> passengerList) = _PassengerDetailsEvent;
}
