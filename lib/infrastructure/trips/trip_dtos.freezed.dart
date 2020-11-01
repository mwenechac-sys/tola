// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

TripDTO _$TripDTOFromJson(Map<String, dynamic> json) {
  return _TripDTO.fromJson(json);
}

/// @nodoc
class _$TripDTOTearOff {
  const _$TripDTOTearOff();

// ignore: unused_element
  _TripDTO call({@JsonKey(ignore: true) String trip_id,
    @TimestampConverter() DateTime departure_time,
    @TimestampConverter() DateTime arrival_time,
    String departure_town,
    String destination_town,
    int trip_fare,
    @TimestampConverter() DateTime trip_date,
    String driver_name,
    String driver_mobile_num,
    String vehicle_name,
    String vehicle_reg_num,
    int total_seats,
    StatusDTO status,
    int available_seats,
    List<RouteDTO> routes,
    List<SeatDTO> seats}) {
    return _TripDTO(
      trip_id: trip_id,
      departure_time: departure_time,
      arrival_time: arrival_time,
      departure_town: departure_town,
      destination_town: destination_town,
      trip_fare: trip_fare,
      trip_date: trip_date,
      driver_name: driver_name,
      driver_mobile_num: driver_mobile_num,
      vehicle_name: vehicle_name,
      vehicle_reg_num: vehicle_reg_num,
      total_seats: total_seats,
      status: status,
      available_seats: available_seats,
      routes: routes,
      seats: seats,
    );
  }

// ignore: unused_element
  TripDTO fromJson(Map<String, Object> json) {
    return TripDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $TripDTO = _$TripDTOTearOff();

/// @nodoc
mixin _$TripDTO {
  @JsonKey(ignore: true)
  String get trip_id;

  @TimestampConverter()
  DateTime get departure_time;

  @TimestampConverter()
  DateTime get arrival_time;

  String get departure_town;

  String get destination_town;

  int get trip_fare;

  @TimestampConverter()
  DateTime get trip_date;

  String get driver_name;

  String get driver_mobile_num;

  String get vehicle_name;

  String get vehicle_reg_num;

  int get total_seats;

  StatusDTO get status;

  int get available_seats;

  List<RouteDTO> get routes;

  List<SeatDTO> get seats;

  Map<String, dynamic> toJson();

  $TripDTOCopyWith<TripDTO> get copyWith;
}

/// @nodoc
abstract class $TripDTOCopyWith<$Res> {
  factory $TripDTOCopyWith(TripDTO value, $Res Function(TripDTO) then) =
  _$TripDTOCopyWithImpl<$Res>;

  $Res call({@JsonKey(ignore: true) String trip_id,
    @TimestampConverter() DateTime departure_time,
    @TimestampConverter() DateTime arrival_time,
    String departure_town,
    String destination_town,
    int trip_fare,
    @TimestampConverter() DateTime trip_date,
    String driver_name,
    String driver_mobile_num,
    String vehicle_name,
    String vehicle_reg_num,
    int total_seats,
    StatusDTO status,
    int available_seats,
    List<RouteDTO> routes,
    List<SeatDTO> seats});

  $StatusDTOCopyWith<$Res> get status;
}

/// @nodoc
class _$TripDTOCopyWithImpl<$Res> implements $TripDTOCopyWith<$Res> {
  _$TripDTOCopyWithImpl(this._value, this._then);

  final TripDTO _value;

  // ignore: unused_field
  final $Res Function(TripDTO) _then;

  @override
  $Res call({
    Object trip_id = freezed,
    Object departure_time = freezed,
    Object arrival_time = freezed,
    Object departure_town = freezed,
    Object destination_town = freezed,
    Object trip_fare = freezed,
    Object trip_date = freezed,
    Object driver_name = freezed,
    Object driver_mobile_num = freezed,
    Object vehicle_name = freezed,
    Object vehicle_reg_num = freezed,
    Object total_seats = freezed,
    Object status = freezed,
    Object available_seats = freezed,
    Object routes = freezed,
    Object seats = freezed,
  }) {
    return _then(_value.copyWith(
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      departure_time: departure_time == freezed
          ? _value.departure_time
          : departure_time as DateTime,
      arrival_time: arrival_time == freezed
          ? _value.arrival_time
          : arrival_time as DateTime,
      departure_town: departure_town == freezed
          ? _value.departure_town
          : departure_town as String,
      destination_town: destination_town == freezed
          ? _value.destination_town
          : destination_town as String,
      trip_fare: trip_fare == freezed ? _value.trip_fare : trip_fare as int,
      trip_date:
      trip_date == freezed ? _value.trip_date : trip_date as DateTime,
      driver_name:
      driver_name == freezed ? _value.driver_name : driver_name as String,
      driver_mobile_num: driver_mobile_num == freezed
          ? _value.driver_mobile_num
          : driver_mobile_num as String,
      vehicle_name: vehicle_name == freezed
          ? _value.vehicle_name
          : vehicle_name as String,
      vehicle_reg_num: vehicle_reg_num == freezed
          ? _value.vehicle_reg_num
          : vehicle_reg_num as String,
      total_seats:
      total_seats == freezed ? _value.total_seats : total_seats as int,
      status: status == freezed ? _value.status : status as StatusDTO,
      available_seats: available_seats == freezed
          ? _value.available_seats
          : available_seats as int,
      routes: routes == freezed ? _value.routes : routes as List<RouteDTO>,
      seats: seats == freezed ? _value.seats : seats as List<SeatDTO>,
    ));
  }

  @override
  $StatusDTOCopyWith<$Res> get status {
    if (_value.status == null) {
      return null;
    }
    return $StatusDTOCopyWith<$Res>(_value.status, (value) {
      return _then(_value.copyWith(status: value));
    });
  }
}

/// @nodoc
abstract class _$TripDTOCopyWith<$Res> implements $TripDTOCopyWith<$Res> {
  factory _$TripDTOCopyWith(_TripDTO value, $Res Function(_TripDTO) then) =
  __$TripDTOCopyWithImpl<$Res>;

  @override
  $Res call({@JsonKey(ignore: true) String trip_id,
    @TimestampConverter() DateTime departure_time,
    @TimestampConverter() DateTime arrival_time,
    String departure_town,
    String destination_town,
    int trip_fare,
    @TimestampConverter() DateTime trip_date,
    String driver_name,
    String driver_mobile_num,
    String vehicle_name,
    String vehicle_reg_num,
    int total_seats,
    StatusDTO status,
    int available_seats,
    List<RouteDTO> routes,
    List<SeatDTO> seats});

  @override
  $StatusDTOCopyWith<$Res> get status;
}

/// @nodoc
class __$TripDTOCopyWithImpl<$Res> extends _$TripDTOCopyWithImpl<$Res>
    implements _$TripDTOCopyWith<$Res> {
  __$TripDTOCopyWithImpl(_TripDTO _value, $Res Function(_TripDTO) _then)
      : super(_value, (v) => _then(v as _TripDTO));

  @override
  _TripDTO get _value => super._value as _TripDTO;

  @override
  $Res call({
    Object trip_id = freezed,
    Object departure_time = freezed,
    Object arrival_time = freezed,
    Object departure_town = freezed,
    Object destination_town = freezed,
    Object trip_fare = freezed,
    Object trip_date = freezed,
    Object driver_name = freezed,
    Object driver_mobile_num = freezed,
    Object vehicle_name = freezed,
    Object vehicle_reg_num = freezed,
    Object total_seats = freezed,
    Object status = freezed,
    Object available_seats = freezed,
    Object routes = freezed,
    Object seats = freezed,
  }) {
    return _then(_TripDTO(
      trip_id: trip_id == freezed ? _value.trip_id : trip_id as String,
      departure_time: departure_time == freezed
          ? _value.departure_time
          : departure_time as DateTime,
      arrival_time: arrival_time == freezed
          ? _value.arrival_time
          : arrival_time as DateTime,
      departure_town: departure_town == freezed
          ? _value.departure_town
          : departure_town as String,
      destination_town: destination_town == freezed
          ? _value.destination_town
          : destination_town as String,
      trip_fare: trip_fare == freezed ? _value.trip_fare : trip_fare as int,
      trip_date:
      trip_date == freezed ? _value.trip_date : trip_date as DateTime,
      driver_name:
      driver_name == freezed ? _value.driver_name : driver_name as String,
      driver_mobile_num: driver_mobile_num == freezed
          ? _value.driver_mobile_num
          : driver_mobile_num as String,
      vehicle_name: vehicle_name == freezed
          ? _value.vehicle_name
          : vehicle_name as String,
      vehicle_reg_num: vehicle_reg_num == freezed
          ? _value.vehicle_reg_num
          : vehicle_reg_num as String,
      total_seats:
      total_seats == freezed ? _value.total_seats : total_seats as int,
      status: status == freezed ? _value.status : status as StatusDTO,
      available_seats: available_seats == freezed
          ? _value.available_seats
          : available_seats as int,
      routes: routes == freezed ? _value.routes : routes as List<RouteDTO>,
      seats: seats == freezed ? _value.seats : seats as List<SeatDTO>,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_TripDTO extends _TripDTO {
  const _$_TripDTO({@JsonKey(ignore: true) this.trip_id,
    @TimestampConverter() this.departure_time,
    @TimestampConverter() this.arrival_time,
    this.departure_town,
    this.destination_town,
    this.trip_fare,
    @TimestampConverter() this.trip_date,
    this.driver_name,
    this.driver_mobile_num,
    this.vehicle_name,
    this.vehicle_reg_num,
    this.total_seats,
    this.status,
    this.available_seats,
    this.routes,
    this.seats})
      : super._();

  factory _$_TripDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_TripDTOFromJson(json);

  @override
  @JsonKey(ignore: true)
  final String trip_id;
  @override
  @TimestampConverter()
  final DateTime departure_time;
  @override
  @TimestampConverter()
  final DateTime arrival_time;
  @override
  final String departure_town;
  @override
  final String destination_town;
  @override
  final int trip_fare;
  @override
  @TimestampConverter()
  final DateTime trip_date;
  @override
  final String driver_name;
  @override
  final String driver_mobile_num;
  @override
  final String vehicle_name;
  @override
  final String vehicle_reg_num;
  @override
  final int total_seats;
  @override
  final StatusDTO status;
  @override
  final int available_seats;
  @override
  final List<RouteDTO> routes;
  @override
  final List<SeatDTO> seats;

  @override
  String toString() {
    return 'TripDTO(trip_id: $trip_id, departure_time: $departure_time, arrival_time: $arrival_time, departure_town: $departure_town, destination_town: $destination_town, trip_fare: $trip_fare, trip_date: $trip_date, driver_name: $driver_name, driver_mobile_num: $driver_mobile_num, vehicle_name: $vehicle_name, vehicle_reg_num: $vehicle_reg_num, total_seats: $total_seats, status: $status, available_seats: $available_seats, routes: $routes, seats: $seats)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripDTO &&
            (identical(other.trip_id, trip_id) ||
                const DeepCollectionEquality()
                    .equals(other.trip_id, trip_id)) &&
            (identical(other.departure_time, departure_time) ||
                const DeepCollectionEquality()
                    .equals(other.departure_time, departure_time)) &&
            (identical(other.arrival_time, arrival_time) ||
                const DeepCollectionEquality()
                    .equals(other.arrival_time, arrival_time)) &&
            (identical(other.departure_town, departure_town) ||
                const DeepCollectionEquality()
                    .equals(other.departure_town, departure_town)) &&
            (identical(other.destination_town, destination_town) ||
                const DeepCollectionEquality()
                    .equals(other.destination_town, destination_town)) &&
            (identical(other.trip_fare, trip_fare) ||
                const DeepCollectionEquality()
                    .equals(other.trip_fare, trip_fare)) &&
            (identical(other.trip_date, trip_date) ||
                const DeepCollectionEquality()
                    .equals(other.trip_date, trip_date)) &&
            (identical(other.driver_name, driver_name) ||
                const DeepCollectionEquality()
                    .equals(other.driver_name, driver_name)) &&
            (identical(other.driver_mobile_num, driver_mobile_num) ||
                const DeepCollectionEquality()
                    .equals(other.driver_mobile_num, driver_mobile_num)) &&
            (identical(other.vehicle_name, vehicle_name) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle_name, vehicle_name)) &&
            (identical(other.vehicle_reg_num, vehicle_reg_num) ||
                const DeepCollectionEquality()
                    .equals(other.vehicle_reg_num, vehicle_reg_num)) &&
            (identical(other.total_seats, total_seats) ||
                const DeepCollectionEquality()
                    .equals(other.total_seats, total_seats)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.available_seats, available_seats) ||
                const DeepCollectionEquality()
                    .equals(other.available_seats, available_seats)) &&
            (identical(other.routes, routes) ||
                const DeepCollectionEquality().equals(other.routes, routes)) &&
            (identical(other.seats, seats) ||
                const DeepCollectionEquality().equals(other.seats, seats)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(trip_id) ^
      const DeepCollectionEquality().hash(departure_time) ^
      const DeepCollectionEquality().hash(arrival_time) ^
      const DeepCollectionEquality().hash(departure_town) ^
      const DeepCollectionEquality().hash(destination_town) ^
      const DeepCollectionEquality().hash(trip_fare) ^
      const DeepCollectionEquality().hash(trip_date) ^
      const DeepCollectionEquality().hash(driver_name) ^
      const DeepCollectionEquality().hash(driver_mobile_num) ^
      const DeepCollectionEquality().hash(vehicle_name) ^
      const DeepCollectionEquality().hash(vehicle_reg_num) ^
      const DeepCollectionEquality().hash(total_seats) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(available_seats) ^
      const DeepCollectionEquality().hash(routes) ^
      const DeepCollectionEquality().hash(seats);

  @override
  _$TripDTOCopyWith<_TripDTO> get copyWith =>
      __$TripDTOCopyWithImpl<_TripDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_TripDTOToJson(this);
  }
}

abstract class _TripDTO extends TripDTO {
  const _TripDTO._() : super._();

  const factory _TripDTO({@JsonKey(ignore: true) String trip_id,
    @TimestampConverter() DateTime departure_time,
    @TimestampConverter() DateTime arrival_time,
    String departure_town,
    String destination_town,
    int trip_fare,
    @TimestampConverter() DateTime trip_date,
    String driver_name,
    String driver_mobile_num,
    String vehicle_name,
    String vehicle_reg_num,
    int total_seats,
    StatusDTO status,
    int available_seats,
    List<RouteDTO> routes,
    List<SeatDTO> seats}) = _$_TripDTO;

  factory _TripDTO.fromJson(Map<String, dynamic> json) = _$_TripDTO.fromJson;

  @override
  @JsonKey(ignore: true)
  String get trip_id;

  @override
  @TimestampConverter()
  DateTime get departure_time;

  @override
  @TimestampConverter()
  DateTime get arrival_time;

  @override
  String get departure_town;

  @override
  String get destination_town;

  @override
  int get trip_fare;

  @override
  @TimestampConverter()
  DateTime get trip_date;

  @override
  String get driver_name;

  @override
  String get driver_mobile_num;

  @override
  String get vehicle_name;

  @override
  String get vehicle_reg_num;

  @override
  int get total_seats;

  @override
  StatusDTO get status;

  @override
  int get available_seats;

  @override
  List<RouteDTO> get routes;

  @override
  List<SeatDTO> get seats;

  @override
  _$TripDTOCopyWith<_TripDTO> get copyWith;
}

RouteDTO _$RouteDTOFromJson(Map<String, dynamic> json) {
  return _RouteDTO.fromJson(json);
}

/// @nodoc
class _$RouteDTOTearOff {
  const _$RouteDTOTearOff();

// ignore: unused_element
  _RouteDTO call({@TimestampConverter() DateTime arrivalTime,
    @TimestampConverter() DateTime departureTime,
    String departureTown,
    String destinationTown,
    int routeFare}) {
    return _RouteDTO(
      arrivalTime: arrivalTime,
      departureTime: departureTime,
      departureTown: departureTown,
      destinationTown: destinationTown,
      routeFare: routeFare,
    );
  }

// ignore: unused_element
  RouteDTO fromJson(Map<String, Object> json) {
    return RouteDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $RouteDTO = _$RouteDTOTearOff();

/// @nodoc
mixin _$RouteDTO {
  @TimestampConverter()
  DateTime get arrivalTime;

  @TimestampConverter()
  DateTime get departureTime;

  String get departureTown;

  String get destinationTown;

  int get routeFare;

  Map<String, dynamic> toJson();

  $RouteDTOCopyWith<RouteDTO> get copyWith;
}

/// @nodoc
abstract class $RouteDTOCopyWith<$Res> {
  factory $RouteDTOCopyWith(RouteDTO value, $Res Function(RouteDTO) then) =
  _$RouteDTOCopyWithImpl<$Res>;

  $Res call({@TimestampConverter() DateTime arrivalTime,
    @TimestampConverter() DateTime departureTime,
    String departureTown,
    String destinationTown,
    int routeFare});
}

/// @nodoc
class _$RouteDTOCopyWithImpl<$Res> implements $RouteDTOCopyWith<$Res> {
  _$RouteDTOCopyWithImpl(this._value, this._then);

  final RouteDTO _value;

  // ignore: unused_field
  final $Res Function(RouteDTO) _then;

  @override
  $Res call({
    Object arrivalTime = freezed,
    Object departureTime = freezed,
    Object departureTown = freezed,
    Object destinationTown = freezed,
    Object routeFare = freezed,
  }) {
    return _then(_value.copyWith(
      arrivalTime:
      arrivalTime == freezed ? _value.arrivalTime : arrivalTime as DateTime,
      departureTime: departureTime == freezed
          ? _value.departureTime
          : departureTime as DateTime,
      departureTown: departureTown == freezed
          ? _value.departureTown
          : departureTown as String,
      destinationTown: destinationTown == freezed
          ? _value.destinationTown
          : destinationTown as String,
      routeFare: routeFare == freezed ? _value.routeFare : routeFare as int,
    ));
  }
}

/// @nodoc
abstract class _$RouteDTOCopyWith<$Res> implements $RouteDTOCopyWith<$Res> {
  factory _$RouteDTOCopyWith(_RouteDTO value, $Res Function(_RouteDTO) then) =
  __$RouteDTOCopyWithImpl<$Res>;

  @override
  $Res call({@TimestampConverter() DateTime arrivalTime,
    @TimestampConverter() DateTime departureTime,
    String departureTown,
    String destinationTown,
    int routeFare});
}

/// @nodoc
class __$RouteDTOCopyWithImpl<$Res> extends _$RouteDTOCopyWithImpl<$Res>
    implements _$RouteDTOCopyWith<$Res> {
  __$RouteDTOCopyWithImpl(_RouteDTO _value, $Res Function(_RouteDTO) _then)
      : super(_value, (v) => _then(v as _RouteDTO));

  @override
  _RouteDTO get _value => super._value as _RouteDTO;

  @override
  $Res call({
    Object arrivalTime = freezed,
    Object departureTime = freezed,
    Object departureTown = freezed,
    Object destinationTown = freezed,
    Object routeFare = freezed,
  }) {
    return _then(_RouteDTO(
      arrivalTime:
      arrivalTime == freezed ? _value.arrivalTime : arrivalTime as DateTime,
      departureTime: departureTime == freezed
          ? _value.departureTime
          : departureTime as DateTime,
      departureTown: departureTown == freezed
          ? _value.departureTown
          : departureTown as String,
      destinationTown: destinationTown == freezed
          ? _value.destinationTown
          : destinationTown as String,
      routeFare: routeFare == freezed ? _value.routeFare : routeFare as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_RouteDTO extends _RouteDTO {
  const _$_RouteDTO({@TimestampConverter() this.arrivalTime,
    @TimestampConverter() this.departureTime,
    this.departureTown,
    this.destinationTown,
    this.routeFare})
      : super._();

  factory _$_RouteDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_RouteDTOFromJson(json);

  @override
  @TimestampConverter()
  final DateTime arrivalTime;
  @override
  @TimestampConverter()
  final DateTime departureTime;
  @override
  final String departureTown;
  @override
  final String destinationTown;
  @override
  final int routeFare;

  @override
  String toString() {
    return 'RouteDTO(arrivalTime: $arrivalTime, departureTime: $departureTime, departureTown: $departureTown, destinationTown: $destinationTown, routeFare: $routeFare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RouteDTO &&
            (identical(other.arrivalTime, arrivalTime) ||
                const DeepCollectionEquality()
                    .equals(other.arrivalTime, arrivalTime)) &&
            (identical(other.departureTime, departureTime) ||
                const DeepCollectionEquality()
                    .equals(other.departureTime, departureTime)) &&
            (identical(other.departureTown, departureTown) ||
                const DeepCollectionEquality()
                    .equals(other.departureTown, departureTown)) &&
            (identical(other.destinationTown, destinationTown) ||
                const DeepCollectionEquality()
                    .equals(other.destinationTown, destinationTown)) &&
            (identical(other.routeFare, routeFare) ||
                const DeepCollectionEquality()
                    .equals(other.routeFare, routeFare)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(arrivalTime) ^
      const DeepCollectionEquality().hash(departureTime) ^
      const DeepCollectionEquality().hash(departureTown) ^
      const DeepCollectionEquality().hash(destinationTown) ^
      const DeepCollectionEquality().hash(routeFare);

  @override
  _$RouteDTOCopyWith<_RouteDTO> get copyWith =>
      __$RouteDTOCopyWithImpl<_RouteDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_RouteDTOToJson(this);
  }
}

abstract class _RouteDTO extends RouteDTO {
  const _RouteDTO._() : super._();

  const factory _RouteDTO({@TimestampConverter() DateTime arrivalTime,
    @TimestampConverter() DateTime departureTime,
    String departureTown,
    String destinationTown,
    int routeFare}) = _$_RouteDTO;

  factory _RouteDTO.fromJson(Map<String, dynamic> json) = _$_RouteDTO.fromJson;

  @override
  @TimestampConverter()
  DateTime get arrivalTime;

  @override
  @TimestampConverter()
  DateTime get departureTime;

  @override
  String get departureTown;

  @override
  String get destinationTown;

  @override
  int get routeFare;

  @override
  _$RouteDTOCopyWith<_RouteDTO> get copyWith;
}

StatusDTO _$StatusDTOFromJson(Map<String, dynamic> json) {
  return _StatusDTO.fromJson(json);
}

/// @nodoc
class _$StatusDTOTearOff {
  const _$StatusDTOTearOff();

// ignore: unused_element
  _StatusDTO call(String bgClass, String previewClass, String status,
      String textClass) {
    return _StatusDTO(
      bgClass,
      previewClass,
      status,
      textClass,
    );
  }

// ignore: unused_element
  StatusDTO fromJson(Map<String, Object> json) {
    return StatusDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $StatusDTO = _$StatusDTOTearOff();

/// @nodoc
mixin _$StatusDTO {
  String get bgClass;

  String get previewClass;

  String get status;

  String get textClass;

  Map<String, dynamic> toJson();

  $StatusDTOCopyWith<StatusDTO> get copyWith;
}

/// @nodoc
abstract class $StatusDTOCopyWith<$Res> {
  factory $StatusDTOCopyWith(StatusDTO value, $Res Function(StatusDTO) then) =
  _$StatusDTOCopyWithImpl<$Res>;

  $Res call(
      {String bgClass, String previewClass, String status, String textClass});
}

/// @nodoc
class _$StatusDTOCopyWithImpl<$Res> implements $StatusDTOCopyWith<$Res> {
  _$StatusDTOCopyWithImpl(this._value, this._then);

  final StatusDTO _value;

  // ignore: unused_field
  final $Res Function(StatusDTO) _then;

  @override
  $Res call({
    Object bgClass = freezed,
    Object previewClass = freezed,
    Object status = freezed,
    Object textClass = freezed,
  }) {
    return _then(_value.copyWith(
      bgClass: bgClass == freezed ? _value.bgClass : bgClass as String,
      previewClass: previewClass == freezed
          ? _value.previewClass
          : previewClass as String,
      status: status == freezed ? _value.status : status as String,
      textClass: textClass == freezed ? _value.textClass : textClass as String,
    ));
  }
}

/// @nodoc
abstract class _$StatusDTOCopyWith<$Res> implements $StatusDTOCopyWith<$Res> {
  factory _$StatusDTOCopyWith(_StatusDTO value,
      $Res Function(_StatusDTO) then) =
  __$StatusDTOCopyWithImpl<$Res>;

  @override
  $Res call(
      {String bgClass, String previewClass, String status, String textClass});
}

/// @nodoc
class __$StatusDTOCopyWithImpl<$Res> extends _$StatusDTOCopyWithImpl<$Res>
    implements _$StatusDTOCopyWith<$Res> {
  __$StatusDTOCopyWithImpl(_StatusDTO _value, $Res Function(_StatusDTO) _then)
      : super(_value, (v) => _then(v as _StatusDTO));

  @override
  _StatusDTO get _value => super._value as _StatusDTO;

  @override
  $Res call({
    Object bgClass = freezed,
    Object previewClass = freezed,
    Object status = freezed,
    Object textClass = freezed,
  }) {
    return _then(_StatusDTO(
      bgClass == freezed ? _value.bgClass : bgClass as String,
      previewClass == freezed ? _value.previewClass : previewClass as String,
      status == freezed ? _value.status : status as String,
      textClass == freezed ? _value.textClass : textClass as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_StatusDTO extends _StatusDTO {
  const _$_StatusDTO(this.bgClass, this.previewClass, this.status,
      this.textClass)
      : assert(bgClass != null),
        assert(previewClass != null),
        assert(status != null),
        assert(textClass != null),
        super._();

  factory _$_StatusDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_StatusDTOFromJson(json);

  @override
  final String bgClass;
  @override
  final String previewClass;
  @override
  final String status;
  @override
  final String textClass;

  @override
  String toString() {
    return 'StatusDTO(bgClass: $bgClass, previewClass: $previewClass, status: $status, textClass: $textClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatusDTO &&
            (identical(other.bgClass, bgClass) ||
                const DeepCollectionEquality()
                    .equals(other.bgClass, bgClass)) &&
            (identical(other.previewClass, previewClass) ||
                const DeepCollectionEquality()
                    .equals(other.previewClass, previewClass)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.textClass, textClass) ||
                const DeepCollectionEquality()
                    .equals(other.textClass, textClass)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(bgClass) ^
      const DeepCollectionEquality().hash(previewClass) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(textClass);

  @override
  _$StatusDTOCopyWith<_StatusDTO> get copyWith =>
      __$StatusDTOCopyWithImpl<_StatusDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatusDTOToJson(this);
  }
}

abstract class _StatusDTO extends StatusDTO {
  const _StatusDTO._() : super._();

  const factory _StatusDTO(String bgClass, String previewClass, String status,
      String textClass) = _$_StatusDTO;

  factory _StatusDTO.fromJson(Map<String, dynamic> json) =
  _$_StatusDTO.fromJson;

  @override
  String get bgClass;

  @override
  String get previewClass;

  @override
  String get status;

  @override
  String get textClass;

  @override
  _$StatusDTOCopyWith<_StatusDTO> get copyWith;
}

SeatDTO _$SeatDTOFromJson(Map<String, dynamic> json) {
  return _SeatDTO.fromJson(json);
}

/// @nodoc
class _$SeatDTOTearOff {
  const _$SeatDTOTearOff();

// ignore: unused_element
  _SeatDTO call(int seat_number, String status, String passenger_name,
      String passenger_id) {
    return _SeatDTO(
      seat_number,
      status,
      passenger_name,
      passenger_id,
    );
  }

// ignore: unused_element
  SeatDTO fromJson(Map<String, Object> json) {
    return SeatDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $SeatDTO = _$SeatDTOTearOff();

/// @nodoc
mixin _$SeatDTO {
  int get seat_number;

  String get status;

  String get passenger_name;

  String get passenger_id;

  Map<String, dynamic> toJson();

  $SeatDTOCopyWith<SeatDTO> get copyWith;
}

/// @nodoc
abstract class $SeatDTOCopyWith<$Res> {
  factory $SeatDTOCopyWith(SeatDTO value, $Res Function(SeatDTO) then) =
  _$SeatDTOCopyWithImpl<$Res>;

  $Res call({int seat_number,
    String status,
    String passenger_name,
    String passenger_id});
}

/// @nodoc
class _$SeatDTOCopyWithImpl<$Res> implements $SeatDTOCopyWith<$Res> {
  _$SeatDTOCopyWithImpl(this._value, this._then);

  final SeatDTO _value;

  // ignore: unused_field
  final $Res Function(SeatDTO) _then;

  @override
  $Res call({
    Object seat_number = freezed,
    Object status = freezed,
    Object passenger_name = freezed,
    Object passenger_id = freezed,
  }) {
    return _then(_value.copyWith(
      seat_number:
      seat_number == freezed ? _value.seat_number : seat_number as int,
      status: status == freezed ? _value.status : status as String,
      passenger_name: passenger_name == freezed
          ? _value.passenger_name
          : passenger_name as String,
      passenger_id: passenger_id == freezed
          ? _value.passenger_id
          : passenger_id as String,
    ));
  }
}

/// @nodoc
abstract class _$SeatDTOCopyWith<$Res> implements $SeatDTOCopyWith<$Res> {
  factory _$SeatDTOCopyWith(_SeatDTO value, $Res Function(_SeatDTO) then) =
  __$SeatDTOCopyWithImpl<$Res>;

  @override
  $Res call({int seat_number,
    String status,
    String passenger_name,
    String passenger_id});
}

/// @nodoc
class __$SeatDTOCopyWithImpl<$Res> extends _$SeatDTOCopyWithImpl<$Res>
    implements _$SeatDTOCopyWith<$Res> {
  __$SeatDTOCopyWithImpl(_SeatDTO _value, $Res Function(_SeatDTO) _then)
      : super(_value, (v) => _then(v as _SeatDTO));

  @override
  _SeatDTO get _value => super._value as _SeatDTO;

  @override
  $Res call({
    Object seat_number = freezed,
    Object status = freezed,
    Object passenger_name = freezed,
    Object passenger_id = freezed,
  }) {
    return _then(_SeatDTO(
      seat_number == freezed ? _value.seat_number : seat_number as int,
      status == freezed ? _value.status : status as String,
      passenger_name == freezed
          ? _value.passenger_name
          : passenger_name as String,
      passenger_id == freezed ? _value.passenger_id : passenger_id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_SeatDTO extends _SeatDTO {
  const _$_SeatDTO(this.seat_number, this.status, this.passenger_name,
      this.passenger_id)
      : assert(seat_number != null),
        assert(status != null),
        assert(passenger_name != null),
        assert(passenger_id != null),
        super._();

  factory _$_SeatDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_SeatDTOFromJson(json);

  @override
  final int seat_number;
  @override
  final String status;
  @override
  final String passenger_name;
  @override
  final String passenger_id;

  @override
  String toString() {
    return 'SeatDTO(seat_number: $seat_number, status: $status, passenger_name: $passenger_name, passenger_id: $passenger_id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SeatDTO &&
            (identical(other.seat_number, seat_number) ||
                const DeepCollectionEquality()
                    .equals(other.seat_number, seat_number)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.passenger_name, passenger_name) ||
                const DeepCollectionEquality()
                    .equals(other.passenger_name, passenger_name)) &&
            (identical(other.passenger_id, passenger_id) ||
                const DeepCollectionEquality()
                    .equals(other.passenger_id, passenger_id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(seat_number) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(passenger_name) ^
      const DeepCollectionEquality().hash(passenger_id);

  @override
  _$SeatDTOCopyWith<_SeatDTO> get copyWith =>
      __$SeatDTOCopyWithImpl<_SeatDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SeatDTOToJson(this);
  }
}

abstract class _SeatDTO extends SeatDTO {
  const _SeatDTO._() : super._();

  const factory _SeatDTO(int seat_number, String status, String passenger_name,
      String passenger_id) = _$_SeatDTO;

  factory _SeatDTO.fromJson(Map<String, dynamic> json) = _$_SeatDTO.fromJson;

  @override
  int get seat_number;

  @override
  String get status;

  @override
  String get passenger_name;

  @override
  String get passenger_id;

  @override
  _$SeatDTOCopyWith<_SeatDTO> get copyWith;
}
