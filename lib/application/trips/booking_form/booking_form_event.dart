part of 'booking_form_bloc.dart';

@freezed
abstract class BookingFormEvent with _$BookingFormEvent {
  const factory BookingFormEvent.departureTownFieldChanged(
      String departureTownString) = _DepartureTownFieldChanged;

  const factory BookingFormEvent.destinationTownFieldChanged(
      String destinationTownString) = _DestinationTownFieldChanged;

  const factory BookingFormEvent.passengersFieldChanged(int passengersCount) =
      _PassengersFieldChanged;

  const factory BookingFormEvent.dateFieldChanged(DateTime dateString) =
      _DateFieldChanged;

  const factory BookingFormEvent.searchButtonPressed() = _SearchButtonPressed;

  const factory BookingFormEvent.childrenPassengersFieldChanged(
      int childrenPassengersCount) = _ChildrenPassengersFieldChanged;

  const factory BookingFormEvent.infantPassengersFieldChanged(
      int infantPassengersCount) = _InfantPassengersFieldChanged;
}
