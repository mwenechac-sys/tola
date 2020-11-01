import 'package:dartz/dartz.dart';
import 'package:kt_dart/kt.dart';
import 'package:tola/domain/trips/trip_failure.dart';

import 'trip.dart';

abstract class ITripRepository {
  Stream<Either<TripFailure, KtList<Trip>>> watchAll(
      {String departureTown,
      String destinationTown,
      int passengerCount,
      DateTime travelDate});
}
