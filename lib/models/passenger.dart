// import 'package:cloud_firestore/cloud_firestore.dart';
//
// abstract class PassengerListItem {}
//
// class AdultPassengerItem implements PassengerListItem {
//   String passengerId;
//   String title;
//   String firstName;
//   String lastName;
//   String departureTown;
//   String destinationTown;
//   String seatNumber;
//   bool adult;
//   bool child;
//   bool infant;
//   bool hasArrived;
//   bool onBoard;
//
//   AdultPassengerItem(
//       {this.passengerId,
//       this.title,
//       this.firstName,
//       this.lastName,
//       this.departureTown,
//       this.destinationTown,
//       this.seatNumber,
//       this.adult,
//       this.child,
//       this.infant,
//       this.hasArrived,
//       this.onBoard});
//
//   AdultPassengerItem.fromSnapShot(DocumentSnapshot documentSnapshot) {
//     Map data = documentSnapshot.data();
//     passengerId = documentSnapshot.documentID;
//     title = data['title'] as String;
//     firstName = data['first_name'] as String;
//     lastName = data['last_name'] as String;
//     departureTown = data['departure_location'] as String;
//     destinationTown = data['destination_location'] as String;
//     seatNumber = data['seat_number'] as String;
//     adult = data['passenger_type']['adult'] as bool;
//     child = data['passenger_type']['child'] as bool;
//     infant = data['passenger_type']['infant'] as bool;
//     hasArrived = data['status']['has_arrived'] as bool;
//     onBoard = data['status']['on_board'] as bool;
//   }
//
//   Map<String, dynamic> toJson() => {
//         'title': title,
//         'first_name': firstName,
//         'last_name': lastName,
//         'departure_location': departureTown,
//         'destination_location': destinationTown,
//         'seat_number': seatNumber,
//         'passenger_type': {
//           'adult': adult ?? true,
//           'child': child ?? false,
//           'in'
//               'fant': infant ?? false
//         },
//         'status': {
//           'has_arrived': hasArrived ?? false,
//           'on_board': onBoard ?? false
//         }
//       };
// }
//
// class ChildrenPassengerItem implements PassengerListItem {
//
//   String passengerId;
//   String firstName;
//   String lastName;
//   String departureTown;
//   String destinationTown;
//   String seatNumber;
//   bool adult;
//   bool child;
//   bool infant;
//   bool hasArrived;
//   bool onBoard;
//   String dateOfBirth;
//
//   ChildrenPassengerItem(
//       {this.passengerId,
//       this.firstName,
//       this.lastName,
//       this.departureTown,
//       this.destinationTown,
//       this.seatNumber,
//       this.adult,
//       this.child,
//       this.infant,
//       this.hasArrived,
//       this.onBoard,
//       this.dateOfBirth});
//
//   ChildrenPassengerItem.fromSnapShot(DocumentSnapshot documentSnapshot) {
//     Map data = documentSnapshot.data();
//     passengerId = documentSnapshot.documentID;
//     firstName = data['first_name'] as String;
//     lastName = data['last_name'] as String;
//     departureTown = data['departure_location'] as String;
//     destinationTown = data['destination_location'] as String;
//     seatNumber = data['seat_number'] as String;
//     hasArrived = data['status']['has_arrived'] as bool;
//     adult = data['passenger_type']['adult'] as bool;
//     child = data['passenger_type']['child'] as bool;
//     infant = data['passenger_type']['infant'] as bool;
//     onBoard = data['status']['on_board'] as bool;
//     dateOfBirth = data['date_of_birth'] as String;
//   }
//   Map<String, dynamic> toJson() => {
//         'first_name': firstName,
//         'last_name': lastName,
//         'departure_location': departureTown,
//         'destination_location': destinationTown,
//         'seat_number': seatNumber,
//         'passenger_type': {
//           'adult': adult ?? false,
//           'child': child ?? true,
//           'in'
//               'fant': infant ?? false
//         },
//         'status': {
//           'has_arrived': hasArrived ?? false,
//           'on_board': onBoard ?? false
//         }
//       };
// }
//
// class InfantPassengerItem implements PassengerListItem {
//
//   String passengerId;
//   String firstName;
//   String lastName;
//   String departureTown;
//   String destinationTown;
//   String seatNumber;
//   bool adult;
//   bool child;
//   bool infant;
//   bool hasArrived;
//   bool onBoard;
//   String dateOfBirth;
//
//   InfantPassengerItem(
//       {this.passengerId,
//       this.firstName,
//       this.lastName,
//       this.departureTown,
//       this.destinationTown,
//       this.seatNumber,
//       this.adult,
//       this.child,
//       this.infant,
//       this.hasArrived,
//       this.onBoard,
//       this.dateOfBirth});
//
//   InfantPassengerItem.fromSnapShot(DocumentSnapshot documentSnapshot) {
//     Map data = documentSnapshot.data();
//     passengerId = documentSnapshot.documentID;
//     firstName = data['first_name'] as String;
//     lastName = data['last_name'] as String;
//     departureTown = data['departure_location'] as String;
//     destinationTown = data['destination_location'] as String;
//     seatNumber = data['seat_number'] as String;
//     hasArrived = data['status']['has_arrived'] as bool;
//     adult = data['passenger_type']['adult'] as bool;
//     child = data['passenger_type']['child'] as bool;
//     infant = data['passenger_type']['infant'] as bool;
//     onBoard = data['status']['on_board'] as bool;
//     dateOfBirth = data['date_of_birth'] as String;
//   }
//
//   Map<String, dynamic> toJson() => {
//         'first_name': firstName,
//         'last_name': lastName,
//         'departure_location': departureTown,
//         'destination_location': destinationTown,
//         'seat_number': seatNumber,
//         'passenger_type': {
//           'adult': adult ?? false,
//           'child': child ?? false,
//           'in'
//               'fant': infant ?? true
//         },
//         'status': {
//           'has_arrived': hasArrived ?? false,
//           'on_board': onBoard ?? false
//         }
//       };
// }
