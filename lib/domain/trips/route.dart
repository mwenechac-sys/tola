import 'package:freezed_annotation/freezed_annotation.dart';

part 'route.freezed.dart';

@freezed
abstract class InnerRoute with _$InnerRoute {
  const factory InnerRoute(
      {DateTime arrivalTime,
      DateTime departureTime,
      String departureTown,
      String destinationTown,
      int routeFare}) = _InnerRoute;
}
