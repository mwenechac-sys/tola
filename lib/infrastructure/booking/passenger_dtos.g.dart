// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'passenger_dtos.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PassengerDTO _$_$_PassengerDTOFromJson(Map<String, dynamic> json) {
  return _$_PassengerDTO(
    first_name: json['first_name'] as String,
    last_name: json['last_name'] as String,
    departure_town: json['departure_town'] as String,
    destination_town: json['destination_town'] as String,
    seat_number: json['seat_number'] as String,
    age: json['age'] as String,
    status: json['status'] as String,
    title: json['title'] as String,
    id: json['id'] as String,
  );
}

Map<String, dynamic> _$_$_PassengerDTOToJson(_$_PassengerDTO instance) =>
    <String, dynamic>{
      'first_name': instance.first_name,
      'last_name': instance.last_name,
      'departure_town': instance.departure_town,
      'destination_town': instance.destination_town,
      'seat_number': instance.seat_number,
      'age': instance.age,
      'status': instance.status,
      'title': instance.title,
      'id': instance.id,
    };
