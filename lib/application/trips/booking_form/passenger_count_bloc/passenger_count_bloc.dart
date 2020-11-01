import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tola/domain/trips/value_objects.dart';

part 'passenger_count_event.dart';

part 'passenger_count_state.dart';

part 'passenger_count_bloc.freezed.dart';

@injectable
class PassengerCountBloc
    extends Bloc<PassengerCountEvent, PassengerCountState> {
  PassengerCountBloc() : super(PassengerCountState.initial());

  @override
  Stream<PassengerCountState> mapEventToState(
    PassengerCountEvent event,
  ) async* {
    yield* event.map(
      adultCounterIncremented: (e) async* {
        int count = e.adultCount;
        count++;
        final PassengerCountState newState =
            state.copyWith(adultPassengersField: AdultPassengersField(count));
        yield newState;
      },
      adultCounterDecremented: (e) async* {
        int count = e.adultCount;
        count--;
        final PassengerCountState newState =
            state.copyWith(adultPassengersField: AdultPassengersField(count));
        yield newState;
      },
      childrenCounterIncremented: (e) async* {
        int count = e.childrenCount;
        count++;
        final PassengerCountState newState = state.copyWith(
            childrenPassengersField: ChildrenPassengersField(count));
        yield newState;
      },
      childrenCounterDecremented: (e) async* {
        int count = e.childrenCount;
        count--;
        final PassengerCountState newState = state.copyWith(
            childrenPassengersField: ChildrenPassengersField(count));
        yield newState;
      },
      infantCounterIncremented: (e) async* {
        int count = e.infantCount;
        count++;
        final PassengerCountState newState =
            state.copyWith(infantPassengersField: InfantPassengersField(count));
        yield newState;
      },
      infantCounterDecremented: (e) async* {
        int count = e.infantCount;
        count--;
        final PassengerCountState newState =
            state.copyWith(infantPassengersField: InfantPassengersField(count));
        yield newState;
      },
    );
  }
}
