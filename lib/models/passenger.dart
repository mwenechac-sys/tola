import 'package:cloud_firestore/cloud_firestore.dart';

abstract class PassengerListItem {}

class AdultPassengerItem implements PassengerListItem {
  String passengerId;
  String title;
  String firstName;
  String lastName;
  String departureTown;
  String destinationTown;
  String seatNumber;
  bool adult;
  bool child;
  bool infant;
  bool hasArrived;
  bool onBoard;

  AdultPassengerItem(
      {this.passengerId,
      this.title,
      this.firstName,
      this.lastName,
      this.departureTown,
      this.destinationTown,
      this.seatNumber,
      this.adult,
      this.child,
      this.infant,
      this.hasArrived,
      this.onBoard});

  AdultPassengerItem.fromSnapShot(DocumentSnapshot documentSnapshot) {
    Map data = documentSnapshot.data;
    passengerId = documentSnapshot.documentID;
    title = data['title'];
    firstName = data['first_name'];
    lastName = data['last_name'];
    departureTown = data['departure_location'];
    destinationTown = data['destination_location'];
    seatNumber = data['seat_number'];
    adult = data['passenger_type']['adult'];
    child = data['passenger_type']['child'];
    infant = data['passenger_type']['infant'];
    hasArrived = data['status']['has_arrived'];
    onBoard = data['status']['on_board'];
  }

  Map<String, dynamic> toJson() => {
        'title': title,
        'first_name': firstName,
        'last_name': lastName,
        'departure_location': departureTown,
        'destination_location': destinationTown,
        'seat_number': seatNumber,
        'passenger_type': {
          'adult': adult ?? true,
          'child': child ?? false,
          'in'
              'fant': infant ?? false
        },
        'status': {
          'has_arrived': hasArrived ?? false,
          'on_board': onBoard ?? false
        }
      };
}

class ChildrenPassengerItem implements PassengerListItem {

  String passengerId;
  String firstName;
  String lastName;
  String departureTown;
  String destinationTown;
  String seatNumber;
  bool adult;
  bool child;
  bool infant;
  bool hasArrived;
  bool onBoard;
  String dateOfBirth;

  ChildrenPassengerItem(
      {this.passengerId,
      this.firstName,
      this.lastName,
      this.departureTown,
      this.destinationTown,
      this.seatNumber,
      this.adult,
      this.child,
      this.infant,
      this.hasArrived,
      this.onBoard,
      this.dateOfBirth});

  ChildrenPassengerItem.fromSnapShot(DocumentSnapshot documentSnapshot) {
    Map data = documentSnapshot.data;
    passengerId = documentSnapshot.documentID;
    firstName = data['first_name'];
    lastName = data['last_name'];
    departureTown = data['departure_location'];
    destinationTown = data['destination_location'];
    seatNumber = data['seat_number'];
    hasArrived = data['status']['has_arrived'];
    adult = data['passenger_type']['adult'];
    child = data['passenger_type']['child'];
    infant = data['passenger_type']['infant'];
    onBoard = data['status']['on_board'];
    dateOfBirth = data['date_of_birth'];
  }
  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'departure_location': departureTown,
        'destination_location': destinationTown,
        'seat_number': seatNumber,
        'passenger_type': {
          'adult': adult ?? false,
          'child': child ?? true,
          'in'
              'fant': infant ?? false
        },
        'status': {
          'has_arrived': hasArrived ?? false,
          'on_board': onBoard ?? false
        }
      };
}

class InfantPassengerItem implements PassengerListItem {

  String passengerId;
  String firstName;
  String lastName;
  String departureTown;
  String destinationTown;
  String seatNumber;
  bool adult;
  bool child;
  bool infant;
  bool hasArrived;
  bool onBoard;
  String dateOfBirth;

  InfantPassengerItem(
      {this.passengerId,
      this.firstName,
      this.lastName,
      this.departureTown,
      this.destinationTown,
      this.seatNumber,
      this.adult,
      this.child,
      this.infant,
      this.hasArrived,
      this.onBoard,
      this.dateOfBirth});

  InfantPassengerItem.fromSnapShot(DocumentSnapshot documentSnapshot) {
    Map data = documentSnapshot.data;
    passengerId = documentSnapshot.documentID;
    firstName = data['first_name'];
    lastName = data['last_name'];
    departureTown = data['departure_location'];
    destinationTown = data['destination_location'];
    seatNumber = data['seat_number'];
    hasArrived = data['status']['has_arrived'];
    adult = data['passenger_type']['adult'];
    child = data['passenger_type']['child'];
    infant = data['passenger_type']['infant'];
    onBoard = data['status']['on_board'];
    dateOfBirth = data['date_of_birth'];
  }

  Map<String, dynamic> toJson() => {
        'first_name': firstName,
        'last_name': lastName,
        'departure_location': departureTown,
        'destination_location': destinationTown,
        'seat_number': seatNumber,
        'passenger_type': {
          'adult': adult ?? false,
          'child': child ?? false,
          'in'
              'fant': infant ?? true
        },
        'status': {
          'has_arrived': hasArrived ?? false,
          'on_board': onBoard ?? false
        }
      };
}
