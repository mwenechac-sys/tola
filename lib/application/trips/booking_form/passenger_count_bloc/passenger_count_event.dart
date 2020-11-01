part of 'passenger_count_bloc.dart';

@freezed
abstract class PassengerCountEvent with _$PassengerCountEvent {
  const factory PassengerCountEvent.adultCounterIncremented(int adultCount) =
      _AdultCounterIncremented;

  const factory PassengerCountEvent.adultCounterDecremented(int adultCount) =
      _AdultCounterDecremented;

  const factory PassengerCountEvent.childrenCounterIncremented(
      int childrenCount) = _ChildrenCounterIncremented;

  const factory PassengerCountEvent.childrenCounterDecremented(
      int childrenCount) = _ChildrenCounterDecremented;

  const factory PassengerCountEvent.infantCounterIncremented(int infantCount) =
      _InfantCounterIncremented;

  const factory PassengerCountEvent.infantCounterDecremented(int infantCount) =
      _InfantCounterDecremented;
}
