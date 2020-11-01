// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'trip_watcher_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$TripWatcherEventTearOff {
  const _$TripWatcherEventTearOff();

// ignore: unused_element
  _WatchAllStarted watchAllStarted(
      {DateTime travelDate,
      String departureTown,
      String destinationTown,
      int passengerCount}) {
    return _WatchAllStarted(
      travelDate: travelDate,
      departureTown: departureTown,
      destinationTown: destinationTown,
      passengerCount: passengerCount,
    );
  }

// ignore: unused_element
  _TripsReceived tripsReceived(
      Either<TripFailure, KtList<Trip>> failureOrTrips) {
    return _TripsReceived(
      failureOrTrips,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TripWatcherEvent = _$TripWatcherEventTearOff();

/// @nodoc
mixin _$TripWatcherEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(DateTime travelDate, String departureTown,
            String destinationTown, int passengerCount),
    @required
        Result tripsReceived(Either<TripFailure, KtList<Trip>> failureOrTrips),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(DateTime travelDate, String departureTown,
        String destinationTown, int passengerCount),
    Result tripsReceived(Either<TripFailure, KtList<Trip>> failureOrTrips),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result tripsReceived(_TripsReceived value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result tripsReceived(_TripsReceived value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TripWatcherEventCopyWith<$Res> {
  factory $TripWatcherEventCopyWith(
          TripWatcherEvent value, $Res Function(TripWatcherEvent) then) =
      _$TripWatcherEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripWatcherEventCopyWithImpl<$Res>
    implements $TripWatcherEventCopyWith<$Res> {
  _$TripWatcherEventCopyWithImpl(this._value, this._then);

  final TripWatcherEvent _value;

  // ignore: unused_field
  final $Res Function(TripWatcherEvent) _then;
}

/// @nodoc
abstract class _$WatchAllStartedCopyWith<$Res> {
  factory _$WatchAllStartedCopyWith(
          _WatchAllStarted value, $Res Function(_WatchAllStarted) then) =
      __$WatchAllStartedCopyWithImpl<$Res>;

  $Res call(
      {DateTime travelDate,
      String departureTown,
      String destinationTown,
      int passengerCount});
}

/// @nodoc
class __$WatchAllStartedCopyWithImpl<$Res>
    extends _$TripWatcherEventCopyWithImpl<$Res>
    implements _$WatchAllStartedCopyWith<$Res> {
  __$WatchAllStartedCopyWithImpl(
      _WatchAllStarted _value, $Res Function(_WatchAllStarted) _then)
      : super(_value, (v) => _then(v as _WatchAllStarted));

  @override
  _WatchAllStarted get _value => super._value as _WatchAllStarted;

  @override
  $Res call({
    Object travelDate = freezed,
    Object departureTown = freezed,
    Object destinationTown = freezed,
    Object passengerCount = freezed,
  }) {
    return _then(_WatchAllStarted(
      travelDate:
          travelDate == freezed ? _value.travelDate : travelDate as DateTime,
      departureTown: departureTown == freezed
          ? _value.departureTown
          : departureTown as String,
      destinationTown: destinationTown == freezed
          ? _value.destinationTown
          : destinationTown as String,
      passengerCount: passengerCount == freezed
          ? _value.passengerCount
          : passengerCount as int,
    ));
  }
}

/// @nodoc
class _$_WatchAllStarted implements _WatchAllStarted {
  const _$_WatchAllStarted(
      {this.travelDate,
      this.departureTown,
      this.destinationTown,
      this.passengerCount});

  @override
  final DateTime travelDate;
  @override
  final String departureTown;
  @override
  final String destinationTown;
  @override
  final int passengerCount;

  @override
  String toString() {
    return 'TripWatcherEvent.watchAllStarted(travelDate: $travelDate, departureTown: $departureTown, destinationTown: $destinationTown, passengerCount: $passengerCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _WatchAllStarted &&
            (identical(other.travelDate, travelDate) ||
                const DeepCollectionEquality()
                    .equals(other.travelDate, travelDate)) &&
            (identical(other.departureTown, departureTown) ||
                const DeepCollectionEquality()
                    .equals(other.departureTown, departureTown)) &&
            (identical(other.destinationTown, destinationTown) ||
                const DeepCollectionEquality()
                    .equals(other.destinationTown, destinationTown)) &&
            (identical(other.passengerCount, passengerCount) ||
                const DeepCollectionEquality()
                    .equals(other.passengerCount, passengerCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(travelDate) ^
      const DeepCollectionEquality().hash(departureTown) ^
      const DeepCollectionEquality().hash(destinationTown) ^
      const DeepCollectionEquality().hash(passengerCount);

  @override
  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith =>
      __$WatchAllStartedCopyWithImpl<_WatchAllStarted>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(DateTime travelDate, String departureTown,
            String destinationTown, int passengerCount),
    @required
        Result tripsReceived(Either<TripFailure, KtList<Trip>> failureOrTrips),
  }) {
    assert(watchAllStarted != null);
    assert(tripsReceived != null);
    return watchAllStarted(
        travelDate, departureTown, destinationTown, passengerCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(DateTime travelDate, String departureTown,
        String destinationTown, int passengerCount),
    Result tripsReceived(Either<TripFailure, KtList<Trip>> failureOrTrips),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(
          travelDate, departureTown, destinationTown, passengerCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result tripsReceived(_TripsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(tripsReceived != null);
    return watchAllStarted(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result tripsReceived(_TripsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (watchAllStarted != null) {
      return watchAllStarted(this);
    }
    return orElse();
  }
}

abstract class _WatchAllStarted implements TripWatcherEvent {
  const factory _WatchAllStarted(
      {DateTime travelDate,
      String departureTown,
      String destinationTown,
      int passengerCount}) = _$_WatchAllStarted;

  DateTime get travelDate;

  String get departureTown;

  String get destinationTown;

  int get passengerCount;

  _$WatchAllStartedCopyWith<_WatchAllStarted> get copyWith;
}

/// @nodoc
abstract class _$TripsReceivedCopyWith<$Res> {
  factory _$TripsReceivedCopyWith(
          _TripsReceived value, $Res Function(_TripsReceived) then) =
      __$TripsReceivedCopyWithImpl<$Res>;

  $Res call({Either<TripFailure, KtList<Trip>> failureOrTrips});
}

/// @nodoc
class __$TripsReceivedCopyWithImpl<$Res>
    extends _$TripWatcherEventCopyWithImpl<$Res>
    implements _$TripsReceivedCopyWith<$Res> {
  __$TripsReceivedCopyWithImpl(
      _TripsReceived _value, $Res Function(_TripsReceived) _then)
      : super(_value, (v) => _then(v as _TripsReceived));

  @override
  _TripsReceived get _value => super._value as _TripsReceived;

  @override
  $Res call({
    Object failureOrTrips = freezed,
  }) {
    return _then(_TripsReceived(
      failureOrTrips == freezed
          ? _value.failureOrTrips
          : failureOrTrips as Either<TripFailure, KtList<Trip>>,
    ));
  }
}

/// @nodoc
class _$_TripsReceived implements _TripsReceived {
  const _$_TripsReceived(this.failureOrTrips) : assert(failureOrTrips != null);

  @override
  final Either<TripFailure, KtList<Trip>> failureOrTrips;

  @override
  String toString() {
    return 'TripWatcherEvent.tripsReceived(failureOrTrips: $failureOrTrips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TripsReceived &&
            (identical(other.failureOrTrips, failureOrTrips) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrTrips, failureOrTrips)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(failureOrTrips);

  @override
  _$TripsReceivedCopyWith<_TripsReceived> get copyWith =>
      __$TripsReceivedCopyWithImpl<_TripsReceived>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required
        Result watchAllStarted(DateTime travelDate, String departureTown,
            String destinationTown, int passengerCount),
    @required
        Result tripsReceived(Either<TripFailure, KtList<Trip>> failureOrTrips),
  }) {
    assert(watchAllStarted != null);
    assert(tripsReceived != null);
    return tripsReceived(failureOrTrips);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result watchAllStarted(DateTime travelDate, String departureTown,
        String destinationTown, int passengerCount),
    Result tripsReceived(Either<TripFailure, KtList<Trip>> failureOrTrips),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tripsReceived != null) {
      return tripsReceived(failureOrTrips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result watchAllStarted(_WatchAllStarted value),
    @required Result tripsReceived(_TripsReceived value),
  }) {
    assert(watchAllStarted != null);
    assert(tripsReceived != null);
    return tripsReceived(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result watchAllStarted(_WatchAllStarted value),
    Result tripsReceived(_TripsReceived value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (tripsReceived != null) {
      return tripsReceived(this);
    }
    return orElse();
  }
}

abstract class _TripsReceived implements TripWatcherEvent {
  const factory _TripsReceived(
      Either<TripFailure, KtList<Trip>> failureOrTrips) = _$_TripsReceived;

  Either<TripFailure, KtList<Trip>> get failureOrTrips;

  _$TripsReceivedCopyWith<_TripsReceived> get copyWith;
}

/// @nodoc
class _$TripWatcherStateTearOff {
  const _$TripWatcherStateTearOff();

// ignore: unused_element
  _Initial initial() {
    return const _Initial();
  }

// ignore: unused_element
  _LoadInProgress loadInProgress() {
    return const _LoadInProgress();
  }

// ignore: unused_element
  _LoadSuccess loadSuccess(KtList<Trip> trips) {
    return _LoadSuccess(
      trips,
    );
  }

// ignore: unused_element
  LoadFailure loadFailure(TripFailure tripFailure) {
    return LoadFailure(
      tripFailure,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $TripWatcherState = _$TripWatcherStateTearOff();

/// @nodoc
mixin _$TripWatcherState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Trip> trips),
    @required Result loadFailure(TripFailure tripFailure),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Trip> trips),
    Result loadFailure(TripFailure tripFailure),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $TripWatcherStateCopyWith<$Res> {
  factory $TripWatcherStateCopyWith(
          TripWatcherState value, $Res Function(TripWatcherState) then) =
      _$TripWatcherStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$TripWatcherStateCopyWithImpl<$Res>
    implements $TripWatcherStateCopyWith<$Res> {
  _$TripWatcherStateCopyWithImpl(this._value, this._then);

  final TripWatcherState _value;

  // ignore: unused_field
  final $Res Function(TripWatcherState) _then;
}

/// @nodoc
abstract class _$InitialCopyWith<$Res> {
  factory _$InitialCopyWith(_Initial value, $Res Function(_Initial) then) =
      __$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$InitialCopyWithImpl<$Res> extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$InitialCopyWith<$Res> {
  __$InitialCopyWithImpl(_Initial _value, $Res Function(_Initial) _then)
      : super(_value, (v) => _then(v as _Initial));

  @override
  _Initial get _value => super._value as _Initial;
}

/// @nodoc
class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'TripWatcherState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Trip> trips),
    @required Result loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Trip> trips),
    Result loadFailure(TripFailure tripFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TripWatcherState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$LoadInProgressCopyWith<$Res> {
  factory _$LoadInProgressCopyWith(
          _LoadInProgress value, $Res Function(_LoadInProgress) then) =
      __$LoadInProgressCopyWithImpl<$Res>;
}

/// @nodoc
class __$LoadInProgressCopyWithImpl<$Res>
    extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$LoadInProgressCopyWith<$Res> {
  __$LoadInProgressCopyWithImpl(
      _LoadInProgress _value, $Res Function(_LoadInProgress) _then)
      : super(_value, (v) => _then(v as _LoadInProgress));

  @override
  _LoadInProgress get _value => super._value as _LoadInProgress;
}

/// @nodoc
class _$_LoadInProgress implements _LoadInProgress {
  const _$_LoadInProgress();

  @override
  String toString() {
    return 'TripWatcherState.loadInProgress()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _LoadInProgress);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Trip> trips),
    @required Result loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Trip> trips),
    Result loadFailure(TripFailure tripFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements TripWatcherState {
  const factory _LoadInProgress() = _$_LoadInProgress;
}

/// @nodoc
abstract class _$LoadSuccessCopyWith<$Res> {
  factory _$LoadSuccessCopyWith(
          _LoadSuccess value, $Res Function(_LoadSuccess) then) =
      __$LoadSuccessCopyWithImpl<$Res>;

  $Res call({KtList<Trip> trips});
}

/// @nodoc
class __$LoadSuccessCopyWithImpl<$Res>
    extends _$TripWatcherStateCopyWithImpl<$Res>
    implements _$LoadSuccessCopyWith<$Res> {
  __$LoadSuccessCopyWithImpl(
      _LoadSuccess _value, $Res Function(_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _LoadSuccess));

  @override
  _LoadSuccess get _value => super._value as _LoadSuccess;

  @override
  $Res call({
    Object trips = freezed,
  }) {
    return _then(_LoadSuccess(
      trips == freezed ? _value.trips : trips as KtList<Trip>,
    ));
  }
}

/// @nodoc
class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.trips) : assert(trips != null);

  @override
  final KtList<Trip> trips;

  @override
  String toString() {
    return 'TripWatcherState.loadSuccess(trips: $trips)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _LoadSuccess &&
            (identical(other.trips, trips) ||
                const DeepCollectionEquality().equals(other.trips, trips)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(trips);

  @override
  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith =>
      __$LoadSuccessCopyWithImpl<_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Trip> trips),
    @required Result loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(trips);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Trip> trips),
    Result loadFailure(TripFailure tripFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(trips);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements TripWatcherState {
  const factory _LoadSuccess(KtList<Trip> trips) = _$_LoadSuccess;

  KtList<Trip> get trips;

  _$LoadSuccessCopyWith<_LoadSuccess> get copyWith;
}

/// @nodoc
abstract class $LoadFailureCopyWith<$Res> {
  factory $LoadFailureCopyWith(
          LoadFailure value, $Res Function(LoadFailure) then) =
      _$LoadFailureCopyWithImpl<$Res>;

  $Res call({TripFailure tripFailure});

  $TripFailureCopyWith<$Res> get tripFailure;
}

/// @nodoc
class _$LoadFailureCopyWithImpl<$Res>
    extends _$TripWatcherStateCopyWithImpl<$Res>
    implements $LoadFailureCopyWith<$Res> {
  _$LoadFailureCopyWithImpl(
      LoadFailure _value, $Res Function(LoadFailure) _then)
      : super(_value, (v) => _then(v as LoadFailure));

  @override
  LoadFailure get _value => super._value as LoadFailure;

  @override
  $Res call({
    Object tripFailure = freezed,
  }) {
    return _then(LoadFailure(
      tripFailure == freezed ? _value.tripFailure : tripFailure as TripFailure,
    ));
  }

  @override
  $TripFailureCopyWith<$Res> get tripFailure {
    if (_value.tripFailure == null) {
      return null;
    }
    return $TripFailureCopyWith<$Res>(_value.tripFailure, (value) {
      return _then(_value.copyWith(tripFailure: value));
    });
  }
}

/// @nodoc
class _$LoadFailure implements LoadFailure {
  const _$LoadFailure(this.tripFailure) : assert(tripFailure != null);

  @override
  final TripFailure tripFailure;

  @override
  String toString() {
    return 'TripWatcherState.loadFailure(tripFailure: $tripFailure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LoadFailure &&
            (identical(other.tripFailure, tripFailure) ||
                const DeepCollectionEquality()
                    .equals(other.tripFailure, tripFailure)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(tripFailure);

  @override
  $LoadFailureCopyWith<LoadFailure> get copyWith =>
      _$LoadFailureCopyWithImpl<LoadFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result loadInProgress(),
    @required Result loadSuccess(KtList<Trip> trips),
    @required Result loadFailure(TripFailure tripFailure),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(tripFailure);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result loadInProgress(),
    Result loadSuccess(KtList<Trip> trips),
    Result loadFailure(TripFailure tripFailure),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(tripFailure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(_Initial value),
    @required Result loadInProgress(_LoadInProgress value),
    @required Result loadSuccess(_LoadSuccess value),
    @required Result loadFailure(LoadFailure value),
  }) {
    assert(initial != null);
    assert(loadInProgress != null);
    assert(loadSuccess != null);
    assert(loadFailure != null);
    return loadFailure(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(_Initial value),
    Result loadInProgress(_LoadInProgress value),
    Result loadSuccess(_LoadSuccess value),
    Result loadFailure(LoadFailure value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (loadFailure != null) {
      return loadFailure(this);
    }
    return orElse();
  }
}

abstract class LoadFailure implements TripWatcherState {
  const factory LoadFailure(TripFailure tripFailure) = _$LoadFailure;

  TripFailure get tripFailure;

  $LoadFailureCopyWith<LoadFailure> get copyWith;
}
