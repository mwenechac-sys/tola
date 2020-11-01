import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:tola/domain/trips/i_trip_repository.dart';
import 'package:tola/domain/trips/trip.dart';
import 'package:tola/domain/trips/trip_failure.dart';
import 'package:tola/infrastructure/core/firestore_helpers.dart';
import 'package:tola/infrastructure/trips/trip_dtos.dart';
import 'package:kt_dart/kt.dart';
import 'package:rxdart/rxdart.dart';

@LazySingleton(as: ITripRepository)
class TripRepository implements ITripRepository {
  final FirebaseFirestore _firestore;

  TripRepository(this._firestore);

  @override
  Stream<Either<TripFailure, KtList<Trip>>> watchAll(
      {String departureTown,
      String destinationTown,
      int passengerCount,
      DateTime travelDate}) async* {
    final userDoc = await _firestore.userDocument();

    yield* _firestore
        .collection('trips')
        .where('bus_stops.$destinationTown', isEqualTo: true)
        .where('bus_stops.$departureTown', isEqualTo: true)
        // .where('available_seats', isGreaterThanOrEqualTo: passengerCount)
        .where('trip_date', isEqualTo: travelDate)
        .snapshots()
        .map((snapshot) => right<TripFailure, KtList<Trip>>(
              snapshot.docs
                  .map((e) => TripDTO.fromFirestore(e).toDomain())
                  .toImmutableList(),
            ))
        .onErrorReturnWith((e) {
      if (e is FirebaseException && e.message.contains('PERMISSION_DENIED')) {
        return left(const TripFailure.insufficientPermission());
      } else {
        log(e.toString());
        return left(const TripFailure.unexpected());
      }
    });
  }
}
