import 'package:freezed_annotation/freezed_annotation.dart';

part 'passenger.freezed.dart';

@freezed
abstract class Passenger with _$Passenger {
  const factory Passenger({
    String ID,
    String firstName,
    String lastName,
    String departureTown,
    String destinationTown,
    String seatNumber,
    String age,
    String status,
    String title,
  }) = _Passenger;
}
