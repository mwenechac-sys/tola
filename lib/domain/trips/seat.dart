import 'package:freezed_annotation/freezed_annotation.dart';

part 'seat.freezed.dart';

@freezed
abstract class Seat with _$Seat {
  const factory Seat({
    @Default(false) bool isSelected,
    int seatNumber,
    String status,
    String passengerName,
    String passengerId,
  }) = _Seat;
}
