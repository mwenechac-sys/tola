part of 'booking_bloc.dart';

@freezed
abstract class BookingState with _$BookingState {
  const factory BookingState.initial() = Initial;

  const factory BookingState.tripSelection() = TripSelection;

  const factory BookingState.passengerDetails() = PassengerDetails;

  const factory BookingState.paymentProviderSelection() =
      PaymentProviderSelection;

  const factory BookingState.bookingConfirmation() = BookingConfirmation;
}
