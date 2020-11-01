// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TripTearOff {
  const _$TripTearOff();

// ignore: unused_element
  _Trip call(
      {UniqueId tripIid,
      DateTime departureTime,
      DateTime arrivalTime,
      String departureTown,
      String destinationTown,
      int tripFare,
      DateTime tripDate,
      String driverName,
      String driverMobileNum,
      String vehicleName,
      String vehicleRegNum,
      int totalSeats,
      Status status,
      int availableSeats,
      KtList<InnerRoute> routes,
      KtList<Seat> seats}) {
    return _Trip(
      tripIid: tripIid,
      departureTime: departureTime,
      arrivalTime: arrivalTime,
      departureTown: departureTown,
      destinationTown: destinationTown,
      tripFare: tripFare,
      tripDate: tripDate,
      driverName: driverName,
      driverMobileNum: driverMobileNum,
      vehicleName: vehicleName,
      vehicleRegNum: vehicleRegNum,
      totalSeats: totalSeats,
      status: status,
      availableSeats: availableSeats,
      routes: routes,
      seats: seats,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Trip = _$TripTearOff();

/// @nodoc
mixin _$Trip {
  UniqueId get tripIid;

  DateTime get departureTime;

  DateTime get arrivalTime;

  String get departureTown;

  String get destinationTown;

  int get tripFare;

  DateTime get tripDate;

  String get driverName;

  String get driverMobileNum;

  String get vehicleName;

  String get vehicleRegNum;

  int get totalSeats;

  Status get status;

  int get availableSeats;

  KtList<InnerRoute> get routes;

  KtList<Seat> get seats;

  $TripCopyWith<Trip> get copyWith;
}

/// @nodoc
abstract class $TripCopyWith<$Res> {
  factory $TripCopyWith(Trip value, $Res Function(Trip) then) =
      _$TripCopyWithImpl<$Res>;

  $Res call(
      {UniqueId tripIid,
      DateTime departureTime,
      DateTime arrivalTime,
      String departureTown,
      String destinationTown,
      int tripFare,
      DateTime tripDate,
      String driverName,
      String driverMobileNum,
      String vehicleName,
      String vehicleRegNum,
      int totalSeats,
      Status status,
      int availableSeats,
      KtList<InnerRoute> routes,
      KtList<Seat> seats});

  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class _$TripCopyWithImpl<$Res> implements $TripCopyWith<$Res> {
  _$TripCopyWithImpl(this._value, this._then);

  final Trip _value;

  // ignore: unused_field
  final $Res Function(Trip) _then;

  @override
  $Res call({
    Object tripIid = freezed,
    Object departureTime = freezed,
    Object arrivalTime = freezed,
    Object departureTown = freezed,
    Object destinationTown = freezed,
    Object tripFare = freezed,
    Object tripDate = freezed,
    Object driverName = freezed,
    Object driverMobileNum = freezed,
    Object vehicleName = freezed,
    Object vehicleRegNum = freezed,
    Object totalSeats = freezed,
    Object status = freezed,
    Object availableSeats = freezed,
    Object routes = freezed,
    Object seats = freezed,
  }) {
    return _then(_value.copyWith(
      tripIid: tripIid == freezed ? _value.tripIid : tripIid as UniqueId,
      departureTime: departureTime == freezed
          ? _value.departureTime
          : departureTime as DateTime,
      arrivalTime:
          arrivalTime == freezed ? _value.arrivalTime : arrivalTime as DateTime,
      departureTown: departureTown == freezed
          ? _value.departureTown
          : departureTown as String,
      destinationTown: destinationTown == freezed
          ? _value.destinationTown
          : destinationTown as String,
      tripFare: tripFare == freezed ? _value.tripFare : tripFare as int,
      tripDate: tripDate == freezed ? _value.tripDate : tripDate as DateTime,
      driverName:
          driverName == freezed ? _value.driverName : driverName as String,
      driverMobileNum: driverMobileNum == freezed
          ? _value.driverMobileNum
          : driverMobileNum as String,
      vehicleName:
          vehicleName == freezed ? _value.vehicleName : vehicleName as String,
      vehicleRegNum: vehicleRegNum == freezed
          ? _value.vehicleRegNum
          : vehicleRegNum as String,
      totalSeats: totalSeats == freezed ? _value.totalSeats : totalSeats as int,
      status: status == freezed ? _value.status : status as Status,
      availableSeats: availableSeats == freezed
          ? _value.availableSeats
          : availableSeats as int,
      routes: routes == freezed ? _value.routes : routes as KtList<InnerRoute>,
      seats: seats == freezed ? _value.seats : seats as KtList<Seat>,
    ));
  }

  @override
  $StatusCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $StatusCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$TripCopyWith<$Res> implements $TripCopyWith<$Res> {
  factory _$TripCopyWith(_Trip value, $Res Function(_Trip) then) =
      __$TripCopyWithImpl<$Res>;

  @override
  $Res call(
      {UniqueId tripIid,
      DateTime departureTime,
      DateTime arrivalTime,
      String departureTown,
      String destinationTown,
      int tripFare,
      DateTime tripDate,
      String driverName,
      String driverMobileNum,
      String vehicleName,
      String vehicleRegNum,
      int totalSeats,
      Status status,
      int availableSeats,
      KtList<InnerRoute> routes,
      KtList<Seat> seats});

  @override
  $StatusCopyWith<$Res> get status;
}

/// @nodoc
class __$TripCopyWithImpl<$Res> extends _$TripCopyWithImpl<$Res>
    implements _$TripCopyWith<$Res> {
  __$TripCopyWithImpl(_Trip _value, $Res Function(_Trip) _then)
      : super(_value, (v) => _then(v as _Trip));

  @override
  _Trip get _value => super._value as _Trip;

  @override
  $Res call({
    Object tripIid = freezed,
    Object departureTime = freezed,
    Object arrivalTime = freezed,
    Object departureTown = freezed,
    Object destinationTown = freezed,
    Object tripFare = freezed,
    Object tripDate = freezed,
    Object driverName = freezed,
    Object driverMobileNum = freezed,
    Object vehicleName = freezed,
    Object vehicleRegNum = freezed,
    Object totalSeats = freezed,
    Object status = freezed,
    Object availableSeats = freezed,
    Object routes = freezed,
    Object seats = freezed,
  }) {
    return _then(_Trip(
      tripIid: tripIid == freezed ? _value.tripIid : tripIid as UniqueId,
      departureTime: departureTime == freezed
          ? _value.departureTime
          : departureTime as DateTime,
      arrivalTime:
          arrivalTime == freezed ? _value.arrivalTime : arrivalTime as DateTime,
      departureTown: departureTown == freezed
          ? _value.departureTown
          : departureTown as String,
      destinationTown: destinationTown == freezed
          ? _value.destinationTown
          : destinationTown as String,
      tripFare: tripFare == freezed ? _value.tripFare : tripFare as int,
      tripDate: tripDate == freezed ? _value.tripDate : tripDate as DateTime,
      driverName:
          driverName == freezed ? _value.driverName : driverName as String,
      driverMobileNum: driverMobileNum == freezed
          ? _value.driverMobileNum
          : driverMobileNum as String,
      vehicleName:
          vehicleName == freezed ? _value.vehicleName : vehicleName as String,
      vehicleRegNum: vehicleRegNum == freezed
          ? _value.vehicleRegNum
          : vehicleRegNum as String,
      totalSeats: totalSeats == freezed ? _value.totalSeats : totalSeats as int,
      status: status == freezed ? _value.status : status as Status,
      availableSeats: availableSeats == freezed
          ? _value.availableSeats
          : availableSeats as int,
      routes: routes == freezed ? _value.routes : routes as KtList<InnerRoute>,
      seats: seats == freezed ? _value.seats : seats as KtList<Seat>,
    ));
  }
}

/// @nodoc
class _$_Trip implements _Trip {
  const _$_Trip(
      {this.tripIid,
      this.departureTime,
      this.arrivalTime,
      this.departureTown,
      this.destinationTown,
      this.tripFare,
      this.tripDate,
      this.driverName,
      this.driverMobileNum,
      this.vehicleName,
      this.vehicleRegNum,
      this.totalSeats,
      this.status,
      this.availableSeats,
      this.routes,
      this.seats});

  @override
  final UniqueId tripIid;
  @override
  final DateTime departureTime;
  @override
  final DateTime arrivalTime;
  @override
  final String departureTown;
  @override
  final String destinationTown;
  @override
  final int tripFare;
  @override
  final DateTime tripDate;
  @override
  final String driverName;
  @override
  final String driverMobileNum;
  @override
  final String vehicleName;
  @override
  final String vehicleRegNum;
  @override
  final int totalSeats;
  @override
  final Status status;
  @override
  final int availableSeats;
  @override
  final KtList<InnerRoute> routes;
  @override
  final KtList<Seat> seats;

  @override
  String toString() {
    return 'Trip(tripIid: $tripIid, departureTime: $departureTime, arrivalTime: $arrivalTime, departureTown: $departureTown, destinationTown: $destinationTown, tripFare: $tripFare, tripDate: $tripDate, driverName: $driverName, driverMobileNum: $driverMobileNum, vehicleName: $vehicleName, vehicleRegNum: $vehicleRegNum, totalSeats: $totalSeats, status: $status, availableSeats: $availableSeats, routes: $routes, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Trip &&
            (identical(other.tripIid, tripIid) ||
                const DeepCollectionEquality()
                    .equals(other.tripIid, tripIid)) &&
            (identical(other.departureTime, departureTime) ||
                const DeepCollectionEquality()
                    .equals(other.departureTime, departureTime)) &&
            (identical(other.arrivalTime, arrivalTime) ||
                const DeepCollectionEquality()
                    .equals(other.arrivalTime, arrivalTime)) &&
            (identical(other.departureTown, departureTown) ||
                const DeepCollectionEquality()
                    .equals(other.departureTown, departureTown)) &&
            (identical(other.destinationTown, destinationTown) ||
                const DeepCollectionEquality()
                    .equals(other.destinationTown, destinationTown)) &&
            (identical(other.tripFare, tripFare) ||
                const DeepCollectionEquality()
                    .equals(other.tripFare, tripFare)) &&
            (identical(other.tripDate, tripDate) ||
                const DeepCollectionEquality()
                    .equals(other.tripDate, tripDate)) &&
            (identical(other.driverName, driverName) ||
                const DeepCollectionEquality()
                    .equals(other.driverName, driverName)) &&
            (identical(other.driverMobileNum, driverMobileNum) ||
                const DeepCollectionEquality()
                    .equals(other.driverMobileNum, driverMobileNum)) &&
            (identical(other.vehicleName, vehicleName) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleName, vehicleName)) &&
            (identical(other.vehicleRegNum, vehicleRegNum) ||
                const DeepCollectionEquality()
                    .equals(other.vehicleRegNum, vehicleRegNum)) &&
            (identical(other.totalSeats, totalSeats) ||
                const DeepCollectionEquality()
                    .equals(other.totalSeats, totalSeats)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.availableSeats, availableSeats) ||
                const DeepCollectionEquality()
                    .equals(other.availableSeats, availableSeats)) &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)) &&
            (identical(other.seats, seats) ||
                const DeepCollectionEquality().equals(other.seats, seats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(tripIid) ^
      const DeepCollectionEquality().hash(departureTime) ^
      const DeepCollectionEquality().hash(arrivalTime) ^
      const DeepCollectionEquality().hash(departureTown) ^
      const DeepCollectionEquality().hash(destinationTown) ^
      const DeepCollectionEquality().hash(tripFare) ^
      const DeepCollectionEquality().hash(tripDate) ^
      const DeepCollectionEquality().hash(driverName) ^
      const DeepCollectionEquality().hash(driverMobileNum) ^
      const DeepCollectionEquality().hash(vehicleName) ^
      const DeepCollectionEquality().hash(vehicleRegNum) ^
      const DeepCollectionEquality().hash(totalSeats) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(availableSeats) ^
      const DeepCollectionEquality().hash(routes) ^
      const DeepCollectionEquality().hash(seats);

  @override
  _$TripCopyWith<_Trip> get copyWith =>
      __$TripCopyWithImpl<_Trip>(this, _$identity);
}

abstract class _Trip implements Trip {
  const factory _Trip(
      {UniqueId tripIid,
      DateTime departureTime,
      DateTime arrivalTime,
      String departureTown,
      String destinationTown,
      int tripFare,
      DateTime tripDate,
      String driverName,
      String driverMobileNum,
      String vehicleName,
      String vehicleRegNum,
      int totalSeats,
      Status status,
      int availableSeats,
      KtList<InnerRoute> routes,
      KtList<Seat> seats}) = _$_Trip;

  @override
  UniqueId get tripIid;

  @override
  DateTime get departureTime;

  @override
  DateTime get arrivalTime;

  @override
  String get departureTown;

  @override
  String get destinationTown;

  @override
  int get tripFare;

  @override
  DateTime get tripDate;

  @override
  String get driverName;

  @override
  String get driverMobileNum;

  @override
  String get vehicleName;

  @override
  String get vehicleRegNum;

  @override
  int get totalSeats;

  @override
  Status get status;

  @override
  int get availableSeats;

  @override
  KtList<InnerRoute> get routes;

  @override
  KtList<Seat> get seats;

  @override
  _$TripCopyWith<_Trip> get copyWith;
}
