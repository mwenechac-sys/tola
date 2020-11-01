import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:kt_dart/collection.dart';
import 'package:tola/domain/core/value_objects.dart';
import 'package:tola/domain/trips/route.dart';
import 'package:tola/domain/trips/seat.dart';

import 'status.dart';

part 'trip.freezed.dart';

@freezed
abstract class Trip with _$Trip {
  const factory Trip(
      {UniqueId tripIid,
      DateTime departureTime,
      DateTime arrivalTime,
      String departureTown,
      String destinationTown,
      int tripFare,
      DateTime tripDate,
      String driverName,
      String driverMobileNum,
      String vehicleName,
      String vehicleRegNum,
      int totalSeats,
      Status status,
      int availableSeats,
      KtList<InnerRoute> routes,
      KtList<Seat> seats}) = _Trip;
}
