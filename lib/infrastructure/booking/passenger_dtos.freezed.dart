// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'passenger_dtos.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

PassengerDTO _$PassengerDTOFromJson(Map<String, dynamic> json) {
  return _PassengerDTO.fromJson(json);
}

/// @nodoc
class _$PassengerDTOTearOff {
  const _$PassengerDTOTearOff();

// ignore: unused_element
  _PassengerDTO call({String first_name,
    String last_name,
    String departure_town,
    String destination_town,
    String seat_number,
    String age,
    String status,
    String title,
    String id}) {
    return _PassengerDTO(
      first_name: first_name,
      last_name: last_name,
      departure_town: departure_town,
      destination_town: destination_town,
      seat_number: seat_number,
      age: age,
      status: status,
      title: title,
      id: id,
    );
  }

// ignore: unused_element
  PassengerDTO fromJson(Map<String, Object> json) {
    return PassengerDTO.fromJson(json);
  }
}

/// @nodoc
// ignore: unused_element
const $PassengerDTO = _$PassengerDTOTearOff();

/// @nodoc
mixin _$PassengerDTO {
  String get first_name;

  String get last_name;

  String get departure_town;

  String get destination_town;

  String get seat_number;

  String get age;

  String get status;

  String get title;

  String get id;

  Map<String, dynamic> toJson();

  $PassengerDTOCopyWith<PassengerDTO> get copyWith;
}

/// @nodoc
abstract class $PassengerDTOCopyWith<$Res> {
  factory $PassengerDTOCopyWith(PassengerDTO value,
      $Res Function(PassengerDTO) then) =
  _$PassengerDTOCopyWithImpl<$Res>;

  $Res call({String first_name,
    String last_name,
    String departure_town,
    String destination_town,
    String seat_number,
    String age,
    String status,
    String title,
    String id});
}

/// @nodoc
class _$PassengerDTOCopyWithImpl<$Res> implements $PassengerDTOCopyWith<$Res> {
  _$PassengerDTOCopyWithImpl(this._value, this._then);

  final PassengerDTO _value;

  // ignore: unused_field
  final $Res Function(PassengerDTO) _then;

  @override
  $Res call({
    Object first_name = freezed,
    Object last_name = freezed,
    Object departure_town = freezed,
    Object destination_town = freezed,
    Object seat_number = freezed,
    Object age = freezed,
    Object status = freezed,
    Object title = freezed,
    Object id = freezed,
  }) {
    return _then(_value.copyWith(
      first_name:
      first_name == freezed ? _value.first_name : first_name as String,
      last_name: last_name == freezed ? _value.last_name : last_name as String,
      departure_town: departure_town == freezed
          ? _value.departure_town
          : departure_town as String,
      destination_town: destination_town == freezed
          ? _value.destination_town
          : destination_town as String,
      seat_number:
      seat_number == freezed ? _value.seat_number : seat_number as String,
      age: age == freezed ? _value.age : age as String,
      status: status == freezed ? _value.status : status as String,
      title: title == freezed ? _value.title : title as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

/// @nodoc
abstract class _$PassengerDTOCopyWith<$Res>
    implements $PassengerDTOCopyWith<$Res> {
  factory _$PassengerDTOCopyWith(_PassengerDTO value,
      $Res Function(_PassengerDTO) then) =
  __$PassengerDTOCopyWithImpl<$Res>;

  @override
  $Res call({String first_name,
    String last_name,
    String departure_town,
    String destination_town,
    String seat_number,
    String age,
    String status,
    String title,
    String id});
}

/// @nodoc
class __$PassengerDTOCopyWithImpl<$Res> extends _$PassengerDTOCopyWithImpl<$Res>
    implements _$PassengerDTOCopyWith<$Res> {
  __$PassengerDTOCopyWithImpl(_PassengerDTO _value,
      $Res Function(_PassengerDTO) _then)
      : super(_value, (v) => _then(v as _PassengerDTO));

  @override
  _PassengerDTO get _value => super._value as _PassengerDTO;

  @override
  $Res call({
    Object first_name = freezed,
    Object last_name = freezed,
    Object departure_town = freezed,
    Object destination_town = freezed,
    Object seat_number = freezed,
    Object age = freezed,
    Object status = freezed,
    Object title = freezed,
    Object id = freezed,
  }) {
    return _then(_PassengerDTO(
      first_name:
      first_name == freezed ? _value.first_name : first_name as String,
      last_name: last_name == freezed ? _value.last_name : last_name as String,
      departure_town: departure_town == freezed
          ? _value.departure_town
          : departure_town as String,
      destination_town: destination_town == freezed
          ? _value.destination_town
          : destination_town as String,
      seat_number:
      seat_number == freezed ? _value.seat_number : seat_number as String,
      age: age == freezed ? _value.age : age as String,
      status: status == freezed ? _value.status : status as String,
      title: title == freezed ? _value.title : title as String,
      id: id == freezed ? _value.id : id as String,
    ));
  }
}

@JsonSerializable()

/// @nodoc class _$_PassengerDTO extends _PassengerDTO {
  const _$_PassengerDTO({this.first_name,
    this.last_name,
    this.departure_town,
    this.destination_town,
    this.seat_number,
    this.age,
    this.status,
    this.title,
    this.id})
      : super._();

  factory _$_PassengerDTO.fromJson(Map<String, dynamic> json) =>
      _$_$_PassengerDTOFromJson(json);

  @override
  final String first_name;
  @override
  final String last_name;
  @override
  final String departure_town;
  @override
  final String destination_town;
  @override
  final String seat_number;
  @override
  final String age;
  @override
  final String status;
  @override
  final String title;
  @override
  final String id;

  @override
  String toString() {
    return 'PassengerDTO(first_name: $first_name, last_name: $last_name, departure_town: $departure_town, destination_town: $destination_town, seat_number: $seat_number, age: $age, status: $status, title: $title, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PassengerDTO &&
            (identical(other.first_name, first_name) ||
                const DeepCollectionEquality()
                    .equals(other.first_name, first_name)) &&
            (identical(other.last_name, last_name) ||
                const DeepCollectionEquality()
                    .equals(other.last_name, last_name)) &&
            (identical(other.departure_town, departure_town) ||
                const DeepCollectionEquality()
                    .equals(other.departure_town, departure_town)) &&
            (identical(other.destination_town, destination_town) ||
                const DeepCollectionEquality()
                    .equals(other.destination_town, destination_town)) &&
            (identical(other.seat_number, seat_number) ||
                const DeepCollectionEquality()
                    .equals(other.seat_number, seat_number)) &&
            (identical(other.age, age) ||
                const DeepCollectionEquality().equals(other.age, age)) &&
            (identical(other.status, status) ||
                const DeepCollectionEquality().equals(other.status, status)) &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.id, id) ||
                const DeepCollectionEquality().equals(other.id, id)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(first_name) ^
      const DeepCollectionEquality().hash(last_name) ^
      const DeepCollectionEquality().hash(departure_town) ^
      const DeepCollectionEquality().hash(destination_town) ^
      const DeepCollectionEquality().hash(seat_number) ^
      const DeepCollectionEquality().hash(age) ^
      const DeepCollectionEquality().hash(status) ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(id);

  @override
  _$PassengerDTOCopyWith<_PassengerDTO> get copyWith =>
      __$PassengerDTOCopyWithImpl<_PassengerDTO>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PassengerDTOToJson(this);
  }
}

abstract class _PassengerDTO extends PassengerDTO {
  const _PassengerDTO._() : super._();

  const factory _PassengerDTO({String first_name,
    String last_name,
    String departure_town,
    String destination_town,
    String seat_number,
    String age,
    String status,
    String title,
    String id}) = _$_PassengerDTO;

  factory _PassengerDTO.fromJson(Map<String, dynamic> json) =
  _$_PassengerDTO.fromJson;

  @override
  String get first_name;

  @override
  String get last_name;

  @override
  String get departure_town;

  @override
  String get destination_town;

  @override
  String get seat_number;

  @override
  String get age;

  @override
  String get status;

  @override
  String get title;

  @override
  String get id;

  @override
  _$PassengerDTOCopyWith<_PassengerDTO> get copyWith;
}
