part of 'passenger_count_bloc.dart';

@freezed
abstract class PassengerCountState with _$PassengerCountState {
  const factory PassengerCountState({
    AdultPassengersField adultPassengersField,
    ChildrenPassengersField childrenPassengersField,
    InfantPassengersField infantPassengersField,
  }) = _PassengerCountState;

  factory PassengerCountState.initial() => PassengerCountState(
        adultPassengersField: AdultPassengersField(1),
        childrenPassengersField: ChildrenPassengersField(0),
        infantPassengersField: InfantPassengersField(0),
      );
}
