import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:kt_dart/collection.dart';
import 'package:tola/domain/booking/passenger.dart';

part 'passenger_details_event.dart';

part 'passenger_details_state.dart';

part 'passenger_details_bloc.freezed.dart';

@injectable
class PassengerDetailsBloc
    extends Bloc<PassengerDetailsEvent, PassengerDetailsState> {
  PassengerDetailsBloc() : super(PassengerDetailsState.initial());

  @override
  Stream<PassengerDetailsState> mapEventToState(
    PassengerDetailsEvent event,
  ) async* {
    yield* event.map(passengerDetailsSubmitButtonPressed: (e) async* {
      final PassengerDetailsState newState =
          state.copyWith(passengerList: e.passengerList);
      yield newState;
    });
  }
}
