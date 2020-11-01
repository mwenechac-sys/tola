import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tola/domain/core/value_objects.dart';
import 'package:tola/domain/trips/route.dart';
import 'package:tola/domain/trips/seat.dart';
import 'package:tola/domain/trips/status.dart';
import 'package:tola/domain/trips/trip.dart';
import 'package:kt_dart/kt.dart';

part 'trip_dtos.g.dart';

part 'trip_dtos.freezed.dart';

@freezed
abstract class TripDTO implements _$TripDTO {
  const TripDTO._();

  const factory TripDTO(
      {@JsonKey(ignore: true) String trip_id,
      @TimestampConverter() DateTime departure_time,
      @TimestampConverter() DateTime arrival_time,
      String departure_town,
      String destination_town,
      int trip_fare,
      @TimestampConverter() DateTime trip_date,
      String driver_name,
      String driver_mobile_num,
      String vehicle_name,
      String vehicle_reg_num,
      int total_seats,
      StatusDTO status,
      int available_seats,
      List<RouteDTO> routes,
      List<SeatDTO> seats}) = _TripDTO;

  Trip toDomain() {
    return Trip(
        tripIid: UniqueId.fromUniqueString(trip_id),
        departureTime: departure_time,
        arrivalTime: arrival_time,
        departureTown: departure_town,
        destinationTown: destination_town,
        tripFare: trip_fare,
        tripDate: trip_date,
        driverName: driver_name,
        vehicleName: vehicle_name,
        vehicleRegNum: vehicle_reg_num,
        totalSeats: total_seats,
        status: status.toDomain(),
        availableSeats: available_seats,
        routes: routes.map((e) => e.toDomain()).toImmutableList(),
        seats: seats.map((e) => e.toDomain()).toImmutableList());
  }

  factory TripDTO.fromJson(Map<String, dynamic> json) =>
      _$TripDTOFromJson(json);

  factory TripDTO.fromFirestore(DocumentSnapshot doc) {
    return TripDTO.fromJson(doc.data()).copyWith(trip_id: doc.id);
  }
}

@freezed
abstract class RouteDTO implements _$RouteDTO {
  const RouteDTO._();

  const factory RouteDTO(
      {@TimestampConverter() DateTime arrivalTime,
      @TimestampConverter() DateTime departureTime,
      String departureTown,
      String destinationTown,
      int routeFare}) = _RouteDTO;

  InnerRoute toDomain() {
    return InnerRoute(
        arrivalTime: arrivalTime,
        departureTime: departureTime,
        departureTown: departureTown,
        destinationTown: destinationTown,
        routeFare: routeFare);
  }

  factory RouteDTO.fromJson(Map<String, dynamic> json) =>
      _$RouteDTOFromJson(json);
}

@freezed
abstract class StatusDTO implements _$StatusDTO {
  const StatusDTO._();

  const factory StatusDTO(String bgClass, String previewClass, String status,
      String textClass) = _StatusDTO;

  Status toDomain() {
    return Status(
        bgClass: bgClass,
        previewClass: previewClass,
        status: status,
        textClass: textClass);
  }

  factory StatusDTO.fromJson(Map<String, dynamic> json) =>
      _$StatusDTOFromJson(json);
}

@freezed
abstract class SeatDTO implements _$SeatDTO {
  const SeatDTO._();

  const factory SeatDTO(
    int seat_number,
    String status,
    String passenger_name,
    String passenger_id,
  ) = _SeatDTO;

  Seat toDomain() {
    return Seat(
      seatNumber: seat_number,
      status: status,
      passengerName: passenger_name,
      passengerId: passenger_id,
    );
  }

  factory SeatDTO.fromJson(Map<String, dynamic> json) =>
      _$SeatDTOFromJson(json);
}

class ServerTimestampConverter implements JsonConverter<FieldValue, Object> {
  const ServerTimestampConverter();

  @override
  FieldValue fromJson(Object json) {
    return FieldValue.serverTimestamp();
  }

  @override
  Object toJson(FieldValue fieldValue) => fieldValue;
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
