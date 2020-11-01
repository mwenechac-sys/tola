import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:tola/domain/trips/trip_failure.dart';
import 'package:tola/domain/trips/value_objects.dart';

part 'booking_form_event.dart';

part 'booking_form_state.dart';

part 'booking_form_bloc.freezed.dart';

@injectable
class BookingFormBloc extends Bloc<BookingFormEvent, BookingFormState> {
  BookingFormBloc() : super(BookingFormState.initial());

  @override
  Stream<BookingFormState> mapEventToState(
    BookingFormEvent event,
  ) async* {
    yield* event.map(
      departureTownFieldChanged: (e) async* {
        final BookingFormState newState = state.copyWith(
            departureTownField: DepartureTownField(e.departureTownString));
        yield newState;
      },
      destinationTownFieldChanged: (e) async* {
        final BookingFormState newState = state.copyWith(
            destinationTownField:
                DestinationTownField(e.destinationTownString));
        yield newState;
      },
      passengersFieldChanged: (e) async* {
        final BookingFormState newState = state.copyWith(
            passengersField: AdultPassengersField(e.passengersCount));
        yield newState;
      },
      dateFieldChanged: (e) async* {
        final BookingFormState newState =
            state.copyWith(dateField: DateField(e.dateString));
        yield newState;
      },
      searchButtonPressed: (_e) async* {
        final isDepartureTownValid = state.departureTownField.isValid();
        final isDestinationTownValid = state.destinationTownField.isValid();
        final isPassengerCountValid = state.passengersField.isValid();
        final isTravelDateValid = state.dateField.isValid();

        if (isDepartureTownValid &&
            isDestinationTownValid &&
            isPassengerCountValid &&
            isTravelDateValid) {
          final BookingFormState newState = state.copyWith(
            loadTrips: true,
          );
          yield newState;
        }

        final BookingFormState newState =
            state.copyWith(showErrorMessages: true);
        yield newState;
      },
      infantPassengersFieldChanged: (e) async* {
        final BookingFormState newState = state.copyWith(
            infantPassengersField:
                InfantPassengersField(e.infantPassengersCount));
        yield newState;
      },
      childrenPassengersFieldChanged: (e) async* {
        final BookingFormState newState = state.copyWith(
            childrenPassengersField:
                ChildrenPassengersField(e.childrenPassengersCount));
        yield newState;
      },
    );
  }
}
