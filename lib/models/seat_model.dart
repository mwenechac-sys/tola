import 'package:cloud_firestore/cloud_firestore.dart';

class Seat {
  bool isAvailable;
  bool isSelected = false;
  bool isReserved;
  bool isBooked;
  int seatNumber;
  String passengerName;
  String passengerID;
  String tripID;

  Seat(
      {this.isAvailable,
      this.isSelected,
      this.isReserved,
      this.isBooked,
      this.seatNumber,
      this.passengerName,
      this.passengerID,
      this.tripID});

  Seat.fromSnapshot(DocumentSnapshot documentSnapshot) {
    var data = documentSnapshot.data();
    isAvailable = data['status']['available'] as bool;
    isReserved = data['status']['reserved'] as bool;
    isBooked = (data['status']['booked'] ?? false) as bool;
    seatNumber = data['seat_number'] as int;
    passengerName = data['passenger_name'] as String;
  }
}
