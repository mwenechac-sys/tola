// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'route.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$InnerRouteTearOff {
  const _$InnerRouteTearOff();

// ignore: unused_element
  _InnerRoute call(
      {DateTime arrivalTime,
      DateTime departureTime,
      String departureTown,
      String destinationTown,
      int routeFare}) {
    return _InnerRoute(
      arrivalTime: arrivalTime,
      departureTime: departureTime,
      departureTown: departureTown,
      destinationTown: destinationTown,
      routeFare: routeFare,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $InnerRoute = _$InnerRouteTearOff();

/// @nodoc
mixin _$InnerRoute {
  DateTime get arrivalTime;

  DateTime get departureTime;

  String get departureTown;

  String get destinationTown;

  int get routeFare;

  $InnerRouteCopyWith<InnerRoute> get copyWith;
}

/// @nodoc
abstract class $InnerRouteCopyWith<$Res> {
  factory $InnerRouteCopyWith(
          InnerRoute value, $Res Function(InnerRoute) then) =
      _$InnerRouteCopyWithImpl<$Res>;

  $Res call(
      {DateTime arrivalTime,
      DateTime departureTime,
      String departureTown,
      String destinationTown,
      int routeFare});
}

/// @nodoc
class _$InnerRouteCopyWithImpl<$Res> implements $InnerRouteCopyWith<$Res> {
  _$InnerRouteCopyWithImpl(this._value, this._then);

  final InnerRoute _value;

  // ignore: unused_field
  final $Res Function(InnerRoute) _then;

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
abstract class _$InnerRouteCopyWith<$Res> implements $InnerRouteCopyWith<$Res> {
  factory _$InnerRouteCopyWith(
          _InnerRoute value, $Res Function(_InnerRoute) then) =
      __$InnerRouteCopyWithImpl<$Res>;

  @override
  $Res call(
      {DateTime arrivalTime,
      DateTime departureTime,
      String departureTown,
      String destinationTown,
      int routeFare});
}

/// @nodoc
class __$InnerRouteCopyWithImpl<$Res> extends _$InnerRouteCopyWithImpl<$Res>
    implements _$InnerRouteCopyWith<$Res> {
  __$InnerRouteCopyWithImpl(
      _InnerRoute _value, $Res Function(_InnerRoute) _then)
      : super(_value, (v) => _then(v as _InnerRoute));

  @override
  _InnerRoute get _value => super._value as _InnerRoute;

  @override
  $Res call({
    Object arrivalTime = freezed,
    Object departureTime = freezed,
    Object departureTown = freezed,
    Object destinationTown = freezed,
    Object routeFare = freezed,
  }) {
    return _then(_InnerRoute(
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
class _$_InnerRoute implements _InnerRoute {
  const _$_InnerRoute(
      {this.arrivalTime,
      this.departureTime,
      this.departureTown,
      this.destinationTown,
      this.routeFare});

  @override
  final DateTime arrivalTime;
  @override
  final DateTime departureTime;
  @override
  final String departureTown;
  @override
  final String destinationTown;
  @override
  final int routeFare;

  @override
  String toString() {
    return 'InnerRoute(arrivalTime: $arrivalTime, departureTime: $departureTime, departureTown: $departureTown, destinationTown: $destinationTown, routeFare: $routeFare)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InnerRoute &&
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
  _$InnerRouteCopyWith<_InnerRoute> get copyWith =>
      __$InnerRouteCopyWithImpl<_InnerRoute>(this, _$identity);
}

abstract class _InnerRoute implements InnerRoute {
  const factory _InnerRoute(
      {DateTime arrivalTime,
      DateTime departureTime,
      String departureTown,
      String destinationTown,
      int routeFare}) = _$_InnerRoute;

  @override
  DateTime get arrivalTime;

  @override
  DateTime get departureTime;

  @override
  String get departureTown;

  @override
  String get destinationTown;

  @override
  int get routeFare;

  @override
  _$InnerRouteCopyWith<_InnerRoute> get copyWith;
}
