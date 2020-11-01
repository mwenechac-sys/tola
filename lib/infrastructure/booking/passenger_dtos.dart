import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tola/domain/booking/passenger.dart';

part 'passenger_dtos.g.dart';

part 'passenger_dtos.freezed.dart';

@freezed
abstract class PassengerDTO implements _$PassengerDTO {
  const PassengerDTO._();

  const factory PassengerDTO(
      {String first_name,
      String last_name,
      String departure_town,
      String destination_town,
      String seat_number,
      String age,
      String status,
      String title,
      String id}) = _PassengerDTO;

  Passenger toDomain() {
    return Passenger(
        firstName: first_name,
        lastName: last_name,
        departureTown: departure_town,
        destinationTown: destination_town,
        seatNumber: seat_number,
        age: age,
        status: status,
        title: title,
        ID: id);
  }

  factory PassengerDTO.fromDomain(Passenger passenger) {
    return PassengerDTO(
        first_name: passenger.firstName,
        last_name: passenger.lastName,
        departure_town: passenger.departureTown,
        destination_town: passenger.destinationTown,
        seat_number: passenger.seatNumber,
        age: passenger.age,
        status: passenger.status,
        title: passenger.title,
        id: passenger.ID);
  }

  factory PassengerDTO.fromJson(Map<String, dynamic> json) =>
      _$PassengerDTOFromJson(json);

  factory PassengerDTO.fromFirestore(DocumentSnapshot doc) {
    return PassengerDTO.fromJson(doc.data()).copyWith();
  }
}
