// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'trip_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TripDTO _$_$_TripDTOFromJson(Map<String, dynamic> json) {
  return _$_TripDTO(
    departure_time: const TimestampConverter()
        .fromJson(json['departure_time'] as Timestamp),
    arrival_time:
        const TimestampConverter().fromJson(json['arrival_time'] as Timestamp),
    departure_town: json['departure_town'] as String,
    destination_town: json['destination_town'] as String,
    trip_fare: json['trip_fare'] as int,
    trip_date:
        const TimestampConverter().fromJson(json['trip_date'] as Timestamp),
    driver_name: json['driver_name'] as String,
    driver_mobile_num: json['driver_mobile_num'] as String,
    vehicle_name: json['vehicle_name'] as String,
    vehicle_reg_num: json['vehicle_reg_num'] as String,
    total_seats: json['total_seats'] as int,
    status: json['status'] == null
        ? null
        : StatusDTO.fromJson(json['status'] as Map<String, dynamic>),
    available_seats: json['available_seats'] as int,
    routes: (json['routes'] as List)
        ?.map((e) =>
            e == null ? null : RouteDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    seats: (json['seats'] as List)
        ?.map((e) =>
            e == null ? null : SeatDTO.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$_$_TripDTOToJson(_$_TripDTO instance) =>
    <String, dynamic>{
      'departure_time':
          const TimestampConverter().toJson(instance.departure_time),
      'arrival_time': const TimestampConverter().toJson(instance.arrival_time),
      'departure_town': instance.departure_town,
      'destination_town': instance.destination_town,
      'trip_fare': instance.trip_fare,
      'trip_date': const TimestampConverter().toJson(instance.trip_date),
      'driver_name': instance.driver_name,
      'driver_mobile_num': instance.driver_mobile_num,
      'vehicle_name': instance.vehicle_name,
      'vehicle_reg_num': instance.vehicle_reg_num,
      'total_seats': instance.total_seats,
      'status': instance.status,
      'available_seats': instance.available_seats,
      'routes': instance.routes,
      'seats': instance.seats,
    };

_$_RouteDTO _$_$_RouteDTOFromJson(Map<String, dynamic> json) {
  return _$_RouteDTO(
    arrivalTime:
        const TimestampConverter().fromJson(json['arrivalTime'] as Timestamp),
    departureTime:
        const TimestampConverter().fromJson(json['departureTime'] as Timestamp),
    departureTown: json['departureTown'] as String,
    destinationTown: json['destinationTown'] as String,
    routeFare: json['routeFare'] as int,
  );
}

Map<String, dynamic> _$_$_RouteDTOToJson(_$_RouteDTO instance) =>
    <String, dynamic>{
      'arrivalTime': const TimestampConverter().toJson(instance.arrivalTime),
      'departureTime':
          const TimestampConverter().toJson(instance.departureTime),
      'departureTown': instance.departureTown,
      'destinationTown': instance.destinationTown,
      'routeFare': instance.routeFare,
    };

_$_StatusDTO _$_$_StatusDTOFromJson(Map<String, dynamic> json) {
  return _$_StatusDTO(
    json['bgClass'] as String,
    json['previewClass'] as String,
    json['status'] as String,
    json['textClass'] as String,
  );
}

Map<String, dynamic> _$_$_StatusDTOToJson(_$_StatusDTO instance) =>
    <String, dynamic>{
      'bgClass': instance.bgClass,
      'previewClass': instance.previewClass,
      'status': instance.status,
      'textClass': instance.textClass,
    };

_$_SeatDTO _$_$_SeatDTOFromJson(Map<String, dynamic> json) {
  return _$_SeatDTO(
    json['seat_number'] as int,
    json['status'] as String,
    json['passenger_name'] as String,
    json['passenger_id'] as String,
  );
}

Map<String, dynamic> _$_$_SeatDTOToJson(_$_SeatDTO instance) =>
    <String, dynamic>{
      'seat_number': instance.seat_number,
      'status': instance.status,
      'passenger_name': instance.passenger_name,
      'passenger_id': instance.passenger_id,
    };
