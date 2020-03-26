import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:tola/constants.dart';
import 'package:tola/models/passenger.dart';
import 'package:tola/models/seat_model.dart';

class DatabaseService {
  static void createAdultPassenger(
      AdultPassengerItem passengerItem, String documentTripID) {
    CollectionReference collectionReference =
        tripRef.document(documentTripID).collection('passengers');

    Firestore.instance.runTransaction((Transaction tx) async {
      var _result = await collectionReference.add(passengerItem.toJson());
    });
  }

  static void createChildPassenger(
      ChildrenPassengerItem passengerItem, String documentTripID) {
    CollectionReference collectionReference =
        tripRef.document(documentTripID).collection('passengers');

    Firestore.instance.runTransaction((Transaction tx) async {
      var _result = await collectionReference.add(passengerItem.toJson());
    });
  }

  static void createInfantPassenger(
      InfantPassengerItem passengerItem, String documentTripID) {
    CollectionReference collectionReference =
        tripRef.document(documentTripID).collection('passengers');

    Firestore.instance.runTransaction((Transaction tx) async {
      var _result = await collectionReference.add(passengerItem.toJson());
    });
  }

  //method to fetch seats from firestore
  static Future<List<Seat>> getSeats(String documentTripID) async {
    QuerySnapshot seatsSnaphot = await tripRef
        .document(documentTripID)
        .collection('seats').orderBy('seat_number', descending: false)
        .getDocuments();

    List<Seat> seats =
    seatsSnaphot.documents.map((doc) => Seat.fromSnapshot(doc)).toList();
    return seats;
  }
}
