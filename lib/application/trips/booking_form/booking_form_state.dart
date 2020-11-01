part of 'booking_form_bloc.dart';

@freezed
abstract class BookingFormState with _$BookingFormState {
  const factory BookingFormState({
    DepartureTownField departureTownField,
    DestinationTownField destinationTownField,
    AdultPassengersField passengersField,
    ChildrenPassengersField childrenPassengersField,
    InfantPassengersField infantPassengersField,
    DateField dateField,
    bool showErrorMessages,
    bool loadTrips,
    @required
        Option<Either<TripFailure, Unit>> bookingFormFailureOrSuccessOption,
  }) = _BookingFormState;

  factory BookingFormState.initial() => BookingFormState(
      departureTownField: DepartureTownField(''),
      destinationTownField: DestinationTownField(''),
      passengersField: AdultPassengersField(1),
      dateField: DateField(DateTime.now()),
      showErrorMessages: false,
      loadTrips: false,
      bookingFormFailureOrSuccessOption: none());
}
