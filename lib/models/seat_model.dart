import 'package:cloud_firestore/cloud_firestore.dart';

class Seat {
  bool isAvailable;
  bool isSelected;
  bool isReserved;
  bool isBooked;
  String seatNumber;
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
    Map data = documentSnapshot.data;
    isAvailable = data['status']['available'];
    isReserved = data['status']['reserved'];
    isBooked = data['status']['booked'];
    seatNumber = data['seat_number'];
    passengerName = data['passenger_name'];
  }
}
