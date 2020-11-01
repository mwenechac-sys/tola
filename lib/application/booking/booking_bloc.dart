import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'booking_event.dart';

part 'booking_state.dart';

part 'booking_bloc.freezed.dart';

@injectable
class BookingBloc extends Bloc<BookingEvent, BookingState> {
  BookingBloc() : super(const BookingState.initial());

  @override
  Stream<BookingState> mapEventToState(
    BookingEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
