part of 'booking_bloc.dart';

@freezed
abstract class BookingEvent with _$BookingEvent {
  const factory BookingEvent.searchButtonPressed() = SearchButtonPressed;

  const factory BookingEvent.tripSelected() = TripSelected;

  const factory BookingEvent.submitPassengerDetailsButtonPressed() =
      SubmitPassengerDetailsButtonPressed;

  const factory BookingEvent.seatSelectionSubmitButtonPressed() =
      SeatSelectionSubmitButtonPressed;

  const factory BookingEvent.paymentProviderSubmitButtonPressed() =
      SeatSelectionButtonPressed;

  const factory BookingEvent.bookingConfirmationButtonPressed() =
      BookingConfirmationButtonPressed;
}
