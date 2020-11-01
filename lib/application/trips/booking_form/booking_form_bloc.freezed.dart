// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'booking_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$BookingFormEventTearOff {
  const _$BookingFormEventTearOff();

// ignore: unused_element
  _DepartureTownFieldChanged departureTownFieldChanged(
      String departureTownString) {
    return _DepartureTownFieldChanged(
      departureTownString,
    );
  }

// ignore: unused_element
  _DestinationTownFieldChanged destinationTownFieldChanged(
      String destinationTownString) {
    return _DestinationTownFieldChanged(
      destinationTownString,
    );
  }

// ignore: unused_element
  _PassengersFieldChanged passengersFieldChanged(int passengersCount) {
    return _PassengersFieldChanged(
      passengersCount,
    );
  }

// ignore: unused_element
  _DateFieldChanged dateFieldChanged(DateTime dateString) {
    return _DateFieldChanged(
      dateString,
    );
  }

// ignore: unused_element
  _SearchButtonPressed searchButtonPressed() {
    return const _SearchButtonPressed();
  }

// ignore: unused_element
  _ChildrenPassengersFieldChanged childrenPassengersFieldChanged(
      int childrenPassengersCount) {
    return _ChildrenPassengersFieldChanged(
      childrenPassengersCount,
    );
  }

// ignore: unused_element
  _InfantPassengersFieldChanged infantPassengersFieldChanged(
      int infantPassengersCount) {
    return _InfantPassengersFieldChanged(
      infantPassengersCount,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookingFormEvent = _$BookingFormEventTearOff();

/// @nodoc
mixin _$BookingFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $BookingFormEventCopyWith<$Res> {
  factory $BookingFormEventCopyWith(
          BookingFormEvent value, $Res Function(BookingFormEvent) then) =
      _$BookingFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookingFormEventCopyWithImpl<$Res>
    implements $BookingFormEventCopyWith<$Res> {
  _$BookingFormEventCopyWithImpl(this._value, this._then);

  final BookingFormEvent _value;

  // ignore: unused_field
  final $Res Function(BookingFormEvent) _then;
}

/// @nodoc
abstract class _$DepartureTownFieldChangedCopyWith<$Res> {
  factory _$DepartureTownFieldChangedCopyWith(_DepartureTownFieldChanged value,
          $Res Function(_DepartureTownFieldChanged) then) =
      __$DepartureTownFieldChangedCopyWithImpl<$Res>;

  $Res call({String departureTownString});
}

/// @nodoc
class __$DepartureTownFieldChangedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$DepartureTownFieldChangedCopyWith<$Res> {
  __$DepartureTownFieldChangedCopyWithImpl(_DepartureTownFieldChanged _value,
      $Res Function(_DepartureTownFieldChanged) _then)
      : super(_value, (v) => _then(v as _DepartureTownFieldChanged));

  @override
  _DepartureTownFieldChanged get _value =>
      super._value as _DepartureTownFieldChanged;

  @override
  $Res call({
    Object departureTownString = freezed,
  }) {
    return _then(_DepartureTownFieldChanged(
      departureTownString == freezed
          ? _value.departureTownString
          : departureTownString as String,
    ));
  }
}

/// @nodoc
class _$_DepartureTownFieldChanged implements _DepartureTownFieldChanged {
  const _$_DepartureTownFieldChanged(this.departureTownString)
      : assert(departureTownString != null);

  @override
  final String departureTownString;

  @override
  String toString() {
    return 'BookingFormEvent.departureTownFieldChanged(departureTownString: $departureTownString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DepartureTownFieldChanged &&
            (identical(other.departureTownString, departureTownString) ||
                const DeepCollectionEquality()
                    .equals(other.departureTownString, departureTownString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(departureTownString);

  @override
  _$DepartureTownFieldChangedCopyWith<_DepartureTownFieldChanged>
      get copyWith =>
          __$DepartureTownFieldChangedCopyWithImpl<_DepartureTownFieldChanged>(
              this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return departureTownFieldChanged(departureTownString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (departureTownFieldChanged != null) {
      return departureTownFieldChanged(departureTownString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return departureTownFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (departureTownFieldChanged != null) {
      return departureTownFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _DepartureTownFieldChanged implements BookingFormEvent {
  const factory _DepartureTownFieldChanged(String departureTownString) =
      _$_DepartureTownFieldChanged;

  String get departureTownString;

  _$DepartureTownFieldChangedCopyWith<_DepartureTownFieldChanged> get copyWith;
}

/// @nodoc
abstract class _$DestinationTownFieldChangedCopyWith<$Res> {
  factory _$DestinationTownFieldChangedCopyWith(
          _DestinationTownFieldChanged value,
          $Res Function(_DestinationTownFieldChanged) then) =
      __$DestinationTownFieldChangedCopyWithImpl<$Res>;

  $Res call({String destinationTownString});
}

/// @nodoc
class __$DestinationTownFieldChangedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$DestinationTownFieldChangedCopyWith<$Res> {
  __$DestinationTownFieldChangedCopyWithImpl(
      _DestinationTownFieldChanged _value,
      $Res Function(_DestinationTownFieldChanged) _then)
      : super(_value, (v) => _then(v as _DestinationTownFieldChanged));

  @override
  _DestinationTownFieldChanged get _value =>
      super._value as _DestinationTownFieldChanged;

  @override
  $Res call({
    Object destinationTownString = freezed,
  }) {
    return _then(_DestinationTownFieldChanged(
      destinationTownString == freezed
          ? _value.destinationTownString
          : destinationTownString as String,
    ));
  }
}

/// @nodoc
class _$_DestinationTownFieldChanged implements _DestinationTownFieldChanged {
  const _$_DestinationTownFieldChanged(this.destinationTownString)
      : assert(destinationTownString != null);

  @override
  final String destinationTownString;

  @override
  String toString() {
    return 'BookingFormEvent.destinationTownFieldChanged(destinationTownString: $destinationTownString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DestinationTownFieldChanged &&
            (identical(other.destinationTownString, destinationTownString) ||
                const DeepCollectionEquality().equals(
                    other.destinationTownString, destinationTownString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(destinationTownString);

  @override
  _$DestinationTownFieldChangedCopyWith<_DestinationTownFieldChanged>
      get copyWith => __$DestinationTownFieldChangedCopyWithImpl<
          _DestinationTownFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return destinationTownFieldChanged(destinationTownString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (destinationTownFieldChanged != null) {
      return destinationTownFieldChanged(destinationTownString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return destinationTownFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (destinationTownFieldChanged != null) {
      return destinationTownFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _DestinationTownFieldChanged implements BookingFormEvent {
  const factory _DestinationTownFieldChanged(String destinationTownString) =
      _$_DestinationTownFieldChanged;

  String get destinationTownString;

  _$DestinationTownFieldChangedCopyWith<_DestinationTownFieldChanged>
      get copyWith;
}

/// @nodoc
abstract class _$PassengersFieldChangedCopyWith<$Res> {
  factory _$PassengersFieldChangedCopyWith(_PassengersFieldChanged value,
          $Res Function(_PassengersFieldChanged) then) =
      __$PassengersFieldChangedCopyWithImpl<$Res>;

  $Res call({int passengersCount});
}

/// @nodoc
class __$PassengersFieldChangedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$PassengersFieldChangedCopyWith<$Res> {
  __$PassengersFieldChangedCopyWithImpl(_PassengersFieldChanged _value,
      $Res Function(_PassengersFieldChanged) _then)
      : super(_value, (v) => _then(v as _PassengersFieldChanged));

  @override
  _PassengersFieldChanged get _value => super._value as _PassengersFieldChanged;

  @override
  $Res call({
    Object passengersCount = freezed,
  }) {
    return _then(_PassengersFieldChanged(
      passengersCount == freezed
          ? _value.passengersCount
          : passengersCount as int,
    ));
  }
}

/// @nodoc
class _$_PassengersFieldChanged implements _PassengersFieldChanged {
  const _$_PassengersFieldChanged(this.passengersCount)
      : assert(passengersCount != null);

  @override
  final int passengersCount;

  @override
  String toString() {
    return 'BookingFormEvent.passengersFieldChanged(passengersCount: $passengersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PassengersFieldChanged &&
            (identical(other.passengersCount, passengersCount) ||
                const DeepCollectionEquality()
                    .equals(other.passengersCount, passengersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(passengersCount);

  @override
  _$PassengersFieldChangedCopyWith<_PassengersFieldChanged> get copyWith =>
      __$PassengersFieldChangedCopyWithImpl<_PassengersFieldChanged>(
          this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return passengersFieldChanged(passengersCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passengersFieldChanged != null) {
      return passengersFieldChanged(passengersCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return passengersFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (passengersFieldChanged != null) {
      return passengersFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _PassengersFieldChanged implements BookingFormEvent {
  const factory _PassengersFieldChanged(int passengersCount) =
      _$_PassengersFieldChanged;

  int get passengersCount;

  _$PassengersFieldChangedCopyWith<_PassengersFieldChanged> get copyWith;
}

/// @nodoc
abstract class _$DateFieldChangedCopyWith<$Res> {
  factory _$DateFieldChangedCopyWith(
          _DateFieldChanged value, $Res Function(_DateFieldChanged) then) =
      __$DateFieldChangedCopyWithImpl<$Res>;

  $Res call({DateTime dateString});
}

/// @nodoc
class __$DateFieldChangedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$DateFieldChangedCopyWith<$Res> {
  __$DateFieldChangedCopyWithImpl(
      _DateFieldChanged _value, $Res Function(_DateFieldChanged) _then)
      : super(_value, (v) => _then(v as _DateFieldChanged));

  @override
  _DateFieldChanged get _value => super._value as _DateFieldChanged;

  @override
  $Res call({
    Object dateString = freezed,
  }) {
    return _then(_DateFieldChanged(
      dateString == freezed ? _value.dateString : dateString as DateTime,
    ));
  }
}

/// @nodoc
class _$_DateFieldChanged implements _DateFieldChanged {
  const _$_DateFieldChanged(this.dateString) : assert(dateString != null);

  @override
  final DateTime dateString;

  @override
  String toString() {
    return 'BookingFormEvent.dateFieldChanged(dateString: $dateString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DateFieldChanged &&
            (identical(other.dateString, dateString) ||
                const DeepCollectionEquality()
                    .equals(other.dateString, dateString)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(dateString);

  @override
  _$DateFieldChangedCopyWith<_DateFieldChanged> get copyWith =>
      __$DateFieldChangedCopyWithImpl<_DateFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return dateFieldChanged(dateString);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dateFieldChanged != null) {
      return dateFieldChanged(dateString);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return dateFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (dateFieldChanged != null) {
      return dateFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _DateFieldChanged implements BookingFormEvent {
  const factory _DateFieldChanged(DateTime dateString) = _$_DateFieldChanged;

  DateTime get dateString;

  _$DateFieldChangedCopyWith<_DateFieldChanged> get copyWith;
}

/// @nodoc
abstract class _$SearchButtonPressedCopyWith<$Res> {
  factory _$SearchButtonPressedCopyWith(_SearchButtonPressed value,
          $Res Function(_SearchButtonPressed) then) =
      __$SearchButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SearchButtonPressedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$SearchButtonPressedCopyWith<$Res> {
  __$SearchButtonPressedCopyWithImpl(
      _SearchButtonPressed _value, $Res Function(_SearchButtonPressed) _then)
      : super(_value, (v) => _then(v as _SearchButtonPressed));

  @override
  _SearchButtonPressed get _value => super._value as _SearchButtonPressed;
}

/// @nodoc
class _$_SearchButtonPressed implements _SearchButtonPressed {
  const _$_SearchButtonPressed();

  @override
  String toString() {
    return 'BookingFormEvent.searchButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SearchButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return searchButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchButtonPressed != null) {
      return searchButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return searchButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (searchButtonPressed != null) {
      return searchButtonPressed(this);
    }
    return orElse();
  }
}

abstract class _SearchButtonPressed implements BookingFormEvent {
  const factory _SearchButtonPressed() = _$_SearchButtonPressed;
}

/// @nodoc
abstract class _$ChildrenPassengersFieldChangedCopyWith<$Res> {
  factory _$ChildrenPassengersFieldChangedCopyWith(
          _ChildrenPassengersFieldChanged value,
          $Res Function(_ChildrenPassengersFieldChanged) then) =
      __$ChildrenPassengersFieldChangedCopyWithImpl<$Res>;

  $Res call({int childrenPassengersCount});
}

/// @nodoc
class __$ChildrenPassengersFieldChangedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$ChildrenPassengersFieldChangedCopyWith<$Res> {
  __$ChildrenPassengersFieldChangedCopyWithImpl(
      _ChildrenPassengersFieldChanged _value,
      $Res Function(_ChildrenPassengersFieldChanged) _then)
      : super(_value, (v) => _then(v as _ChildrenPassengersFieldChanged));

  @override
  _ChildrenPassengersFieldChanged get _value =>
      super._value as _ChildrenPassengersFieldChanged;

  @override
  $Res call({
    Object childrenPassengersCount = freezed,
  }) {
    return _then(_ChildrenPassengersFieldChanged(
      childrenPassengersCount == freezed
          ? _value.childrenPassengersCount
          : childrenPassengersCount as int,
    ));
  }
}

/// @nodoc
class _$_ChildrenPassengersFieldChanged
    implements _ChildrenPassengersFieldChanged {
  const _$_ChildrenPassengersFieldChanged(this.childrenPassengersCount)
      : assert(childrenPassengersCount != null);

  @override
  final int childrenPassengersCount;

  @override
  String toString() {
    return 'BookingFormEvent.childrenPassengersFieldChanged(childrenPassengersCount: $childrenPassengersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _ChildrenPassengersFieldChanged &&
            (identical(
                    other.childrenPassengersCount, childrenPassengersCount) ||
                const DeepCollectionEquality().equals(
                    other.childrenPassengersCount, childrenPassengersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(childrenPassengersCount);

  @override
  _$ChildrenPassengersFieldChangedCopyWith<_ChildrenPassengersFieldChanged>
      get copyWith => __$ChildrenPassengersFieldChangedCopyWithImpl<
          _ChildrenPassengersFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return childrenPassengersFieldChanged(childrenPassengersCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (childrenPassengersFieldChanged != null) {
      return childrenPassengersFieldChanged(childrenPassengersCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return childrenPassengersFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (childrenPassengersFieldChanged != null) {
      return childrenPassengersFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _ChildrenPassengersFieldChanged implements BookingFormEvent {
  const factory _ChildrenPassengersFieldChanged(int childrenPassengersCount) =
      _$_ChildrenPassengersFieldChanged;

  int get childrenPassengersCount;

  _$ChildrenPassengersFieldChangedCopyWith<_ChildrenPassengersFieldChanged>
      get copyWith;
}

/// @nodoc
abstract class _$InfantPassengersFieldChangedCopyWith<$Res> {
  factory _$InfantPassengersFieldChangedCopyWith(
          _InfantPassengersFieldChanged value,
          $Res Function(_InfantPassengersFieldChanged) then) =
      __$InfantPassengersFieldChangedCopyWithImpl<$Res>;

  $Res call({int infantPassengersCount});
}

/// @nodoc
class __$InfantPassengersFieldChangedCopyWithImpl<$Res>
    extends _$BookingFormEventCopyWithImpl<$Res>
    implements _$InfantPassengersFieldChangedCopyWith<$Res> {
  __$InfantPassengersFieldChangedCopyWithImpl(
      _InfantPassengersFieldChanged _value,
      $Res Function(_InfantPassengersFieldChanged) _then)
      : super(_value, (v) => _then(v as _InfantPassengersFieldChanged));

  @override
  _InfantPassengersFieldChanged get _value =>
      super._value as _InfantPassengersFieldChanged;

  @override
  $Res call({
    Object infantPassengersCount = freezed,
  }) {
    return _then(_InfantPassengersFieldChanged(
      infantPassengersCount == freezed
          ? _value.infantPassengersCount
          : infantPassengersCount as int,
    ));
  }
}

/// @nodoc
class _$_InfantPassengersFieldChanged implements _InfantPassengersFieldChanged {
  const _$_InfantPassengersFieldChanged(this.infantPassengersCount)
      : assert(infantPassengersCount != null);

  @override
  final int infantPassengersCount;

  @override
  String toString() {
    return 'BookingFormEvent.infantPassengersFieldChanged(infantPassengersCount: $infantPassengersCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InfantPassengersFieldChanged &&
            (identical(other.infantPassengersCount, infantPassengersCount) ||
                const DeepCollectionEquality().equals(
                    other.infantPassengersCount, infantPassengersCount)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(infantPassengersCount);

  @override
  _$InfantPassengersFieldChangedCopyWith<_InfantPassengersFieldChanged>
      get copyWith => __$InfantPassengersFieldChangedCopyWithImpl<
          _InfantPassengersFieldChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result departureTownFieldChanged(String departureTownString),
    @required Result destinationTownFieldChanged(String destinationTownString),
    @required Result passengersFieldChanged(int passengersCount),
    @required Result dateFieldChanged(DateTime dateString),
    @required Result searchButtonPressed(),
    @required
        Result childrenPassengersFieldChanged(int childrenPassengersCount),
    @required Result infantPassengersFieldChanged(int infantPassengersCount),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return infantPassengersFieldChanged(infantPassengersCount);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result departureTownFieldChanged(String departureTownString),
    Result destinationTownFieldChanged(String destinationTownString),
    Result passengersFieldChanged(int passengersCount),
    Result dateFieldChanged(DateTime dateString),
    Result searchButtonPressed(),
    Result childrenPassengersFieldChanged(int childrenPassengersCount),
    Result infantPassengersFieldChanged(int infantPassengersCount),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (infantPassengersFieldChanged != null) {
      return infantPassengersFieldChanged(infantPassengersCount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required
        Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    @required
        Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    @required Result passengersFieldChanged(_PassengersFieldChanged value),
    @required Result dateFieldChanged(_DateFieldChanged value),
    @required Result searchButtonPressed(_SearchButtonPressed value),
    @required
        Result childrenPassengersFieldChanged(
            _ChildrenPassengersFieldChanged value),
    @required
        Result infantPassengersFieldChanged(
            _InfantPassengersFieldChanged value),
  }) {
    assert(departureTownFieldChanged != null);
    assert(destinationTownFieldChanged != null);
    assert(passengersFieldChanged != null);
    assert(dateFieldChanged != null);
    assert(searchButtonPressed != null);
    assert(childrenPassengersFieldChanged != null);
    assert(infantPassengersFieldChanged != null);
    return infantPassengersFieldChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result departureTownFieldChanged(_DepartureTownFieldChanged value),
    Result destinationTownFieldChanged(_DestinationTownFieldChanged value),
    Result passengersFieldChanged(_PassengersFieldChanged value),
    Result dateFieldChanged(_DateFieldChanged value),
    Result searchButtonPressed(_SearchButtonPressed value),
    Result childrenPassengersFieldChanged(
        _ChildrenPassengersFieldChanged value),
    Result infantPassengersFieldChanged(_InfantPassengersFieldChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (infantPassengersFieldChanged != null) {
      return infantPassengersFieldChanged(this);
    }
    return orElse();
  }
}

abstract class _InfantPassengersFieldChanged implements BookingFormEvent {
  const factory _InfantPassengersFieldChanged(int infantPassengersCount) =
      _$_InfantPassengersFieldChanged;

  int get infantPassengersCount;

  _$InfantPassengersFieldChangedCopyWith<_InfantPassengersFieldChanged>
      get copyWith;
}

/// @nodoc
class _$BookingFormStateTearOff {
  const _$BookingFormStateTearOff();

// ignore: unused_element
  _BookingFormState call(
      {DepartureTownField departureTownField,
      DestinationTownField destinationTownField,
      AdultPassengersField passengersField,
      ChildrenPassengersField childrenPassengersField,
      InfantPassengersField infantPassengersField,
      DateField dateField,
      bool showErrorMessages,
      bool loadTrips,
      @required
          Option<Either<TripFailure, Unit>>
              bookingFormFailureOrSuccessOption}) {
    return _BookingFormState(
      departureTownField: departureTownField,
      destinationTownField: destinationTownField,
      passengersField: passengersField,
      childrenPassengersField: childrenPassengersField,
      infantPassengersField: infantPassengersField,
      dateField: dateField,
      showErrorMessages: showErrorMessages,
      loadTrips: loadTrips,
      bookingFormFailureOrSuccessOption: bookingFormFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $BookingFormState = _$BookingFormStateTearOff();

/// @nodoc
mixin _$BookingFormState {
  DepartureTownField get departureTownField;

  DestinationTownField get destinationTownField;

  AdultPassengersField get passengersField;

  ChildrenPassengersField get childrenPassengersField;

  InfantPassengersField get infantPassengersField;

  DateField get dateField;

  bool get showErrorMessages;

  bool get loadTrips;

  Option<Either<TripFailure, Unit>> get bookingFormFailureOrSuccessOption;

  $BookingFormStateCopyWith<BookingFormState> get copyWith;
}

/// @nodoc
abstract class $BookingFormStateCopyWith<$Res> {
  factory $BookingFormStateCopyWith(
          BookingFormState value, $Res Function(BookingFormState) then) =
      _$BookingFormStateCopyWithImpl<$Res>;

  $Res call(
      {DepartureTownField departureTownField,
      DestinationTownField destinationTownField,
      AdultPassengersField passengersField,
      ChildrenPassengersField childrenPassengersField,
      InfantPassengersField infantPassengersField,
      DateField dateField,
      bool showErrorMessages,
      bool loadTrips,
      Option<Either<TripFailure, Unit>> bookingFormFailureOrSuccessOption});
}

/// @nodoc
class _$BookingFormStateCopyWithImpl<$Res>
    implements $BookingFormStateCopyWith<$Res> {
  _$BookingFormStateCopyWithImpl(this._value, this._then);

  final BookingFormState _value;

  // ignore: unused_field
  final $Res Function(BookingFormState) _then;

  @override
  $Res call({
    Object departureTownField = freezed,
    Object destinationTownField = freezed,
    Object passengersField = freezed,
    Object childrenPassengersField = freezed,
    Object infantPassengersField = freezed,
    Object dateField = freezed,
    Object showErrorMessages = freezed,
    Object loadTrips = freezed,
    Object bookingFormFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      departureTownField: departureTownField == freezed
          ? _value.departureTownField
          : departureTownField as DepartureTownField,
      destinationTownField: destinationTownField == freezed
          ? _value.destinationTownField
          : destinationTownField as DestinationTownField,
      passengersField: passengersField == freezed
          ? _value.passengersField
          : passengersField as AdultPassengersField,
      childrenPassengersField: childrenPassengersField == freezed
          ? _value.childrenPassengersField
          : childrenPassengersField as ChildrenPassengersField,
      infantPassengersField: infantPassengersField == freezed
          ? _value.infantPassengersField
          : infantPassengersField as InfantPassengersField,
      dateField:
          dateField == freezed ? _value.dateField : dateField as DateField,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      loadTrips: loadTrips == freezed ? _value.loadTrips : loadTrips as bool,
      bookingFormFailureOrSuccessOption:
          bookingFormFailureOrSuccessOption == freezed
              ? _value.bookingFormFailureOrSuccessOption
              : bookingFormFailureOrSuccessOption
                  as Option<Either<TripFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$BookingFormStateCopyWith<$Res>
    implements $BookingFormStateCopyWith<$Res> {
  factory _$BookingFormStateCopyWith(
          _BookingFormState value, $Res Function(_BookingFormState) then) =
      __$BookingFormStateCopyWithImpl<$Res>;

  @override
  $Res call(
      {DepartureTownField departureTownField,
      DestinationTownField destinationTownField,
      AdultPassengersField passengersField,
      ChildrenPassengersField childrenPassengersField,
      InfantPassengersField infantPassengersField,
      DateField dateField,
      bool showErrorMessages,
      bool loadTrips,
      Option<Either<TripFailure, Unit>> bookingFormFailureOrSuccessOption});
}

/// @nodoc
class __$BookingFormStateCopyWithImpl<$Res>
    extends _$BookingFormStateCopyWithImpl<$Res>
    implements _$BookingFormStateCopyWith<$Res> {
  __$BookingFormStateCopyWithImpl(
      _BookingFormState _value, $Res Function(_BookingFormState) _then)
      : super(_value, (v) => _then(v as _BookingFormState));

  @override
  _BookingFormState get _value => super._value as _BookingFormState;

  @override
  $Res call({
    Object departureTownField = freezed,
    Object destinationTownField = freezed,
    Object passengersField = freezed,
    Object childrenPassengersField = freezed,
    Object infantPassengersField = freezed,
    Object dateField = freezed,
    Object showErrorMessages = freezed,
    Object loadTrips = freezed,
    Object bookingFormFailureOrSuccessOption = freezed,
  }) {
    return _then(_BookingFormState(
      departureTownField: departureTownField == freezed
          ? _value.departureTownField
          : departureTownField as DepartureTownField,
      destinationTownField: destinationTownField == freezed
          ? _value.destinationTownField
          : destinationTownField as DestinationTownField,
      passengersField: passengersField == freezed
          ? _value.passengersField
          : passengersField as AdultPassengersField,
      childrenPassengersField: childrenPassengersField == freezed
          ? _value.childrenPassengersField
          : childrenPassengersField as ChildrenPassengersField,
      infantPassengersField: infantPassengersField == freezed
          ? _value.infantPassengersField
          : infantPassengersField as InfantPassengersField,
      dateField:
          dateField == freezed ? _value.dateField : dateField as DateField,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      loadTrips: loadTrips == freezed ? _value.loadTrips : loadTrips as bool,
      bookingFormFailureOrSuccessOption:
          bookingFormFailureOrSuccessOption == freezed
              ? _value.bookingFormFailureOrSuccessOption
              : bookingFormFailureOrSuccessOption
                  as Option<Either<TripFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_BookingFormState implements _BookingFormState {
  const _$_BookingFormState(
      {this.departureTownField,
      this.destinationTownField,
      this.passengersField,
      this.childrenPassengersField,
      this.infantPassengersField,
      this.dateField,
      this.showErrorMessages,
      this.loadTrips,
      @required this.bookingFormFailureOrSuccessOption})
      : assert(bookingFormFailureOrSuccessOption != null);

  @override
  final DepartureTownField departureTownField;
  @override
  final DestinationTownField destinationTownField;
  @override
  final AdultPassengersField passengersField;
  @override
  final ChildrenPassengersField childrenPassengersField;
  @override
  final InfantPassengersField infantPassengersField;
  @override
  final DateField dateField;
  @override
  final bool showErrorMessages;
  @override
  final bool loadTrips;
  @override
  final Option<Either<TripFailure, Unit>> bookingFormFailureOrSuccessOption;

  @override
  String toString() {
    return 'BookingFormState(departureTownField: $departureTownField, destinationTownField: $destinationTownField, passengersField: $passengersField, childrenPassengersField: $childrenPassengersField, infantPassengersField: $infantPassengersField, dateField: $dateField, showErrorMessages: $showErrorMessages, loadTrips: $loadTrips, bookingFormFailureOrSuccessOption: $bookingFormFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _BookingFormState &&
            (identical(other.departureTownField, departureTownField) ||
                const DeepCollectionEquality()
                    .equals(other.departureTownField, departureTownField)) &&
            (identical(other.destinationTownField, destinationTownField) ||
                const DeepCollectionEquality().equals(
                    other.destinationTownField, destinationTownField)) &&
            (identical(other.passengersField, passengersField) ||
                const DeepCollectionEquality()
                    .equals(other.passengersField, passengersField)) &&
            (identical(
                    other.childrenPassengersField, childrenPassengersField) ||
                const DeepCollectionEquality().equals(
                    other.childrenPassengersField, childrenPassengersField)) &&
            (identical(other.infantPassengersField, infantPassengersField) ||
                const DeepCollectionEquality().equals(
                    other.infantPassengersField, infantPassengersField)) &&
            (identical(other.dateField, dateField) ||
                const DeepCollectionEquality()
                    .equals(other.dateField, dateField)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.loadTrips, loadTrips) ||
                const DeepCollectionEquality()
                    .equals(other.loadTrips, loadTrips)) &&
            (identical(other.bookingFormFailureOrSuccessOption,
                    bookingFormFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.bookingFormFailureOrSuccessOption,
                    bookingFormFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(departureTownField) ^
      const DeepCollectionEquality().hash(destinationTownField) ^
      const DeepCollectionEquality().hash(passengersField) ^
      const DeepCollectionEquality().hash(childrenPassengersField) ^
      const DeepCollectionEquality().hash(infantPassengersField) ^
      const DeepCollectionEquality().hash(dateField) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(loadTrips) ^
      const DeepCollectionEquality().hash(bookingFormFailureOrSuccessOption);

  @override
  _$BookingFormStateCopyWith<_BookingFormState> get copyWith =>
      __$BookingFormStateCopyWithImpl<_BookingFormState>(this, _$identity);
}

abstract class _BookingFormState implements BookingFormState {
  const factory _BookingFormState(
      {DepartureTownField departureTownField,
      DestinationTownField destinationTownField,
      AdultPassengersField passengersField,
      ChildrenPassengersField childrenPassengersField,
      InfantPassengersField infantPassengersField,
      DateField dateField,
      bool showErrorMessages,
      bool loadTrips,
      @required
          Option<Either<TripFailure, Unit>>
              bookingFormFailureOrSuccessOption}) = _$_BookingFormState;

  @override
  DepartureTownField get departureTownField;

  @override
  DestinationTownField get destinationTownField;

  @override
  AdultPassengersField get passengersField;

  @override
  ChildrenPassengersField get childrenPassengersField;

  @override
  InfantPassengersField get infantPassengersField;

  @override
  DateField get dateField;

  @override
  bool get showErrorMessages;

  @override
  bool get loadTrips;

  @override
  Option<Either<TripFailure, Unit>> get bookingFormFailureOrSuccessOption;

  @override
  _$BookingFormStateCopyWith<_BookingFormState> get copyWith;
}
