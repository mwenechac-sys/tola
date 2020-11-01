// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$StatusTearOff {
  const _$StatusTearOff();

// ignore: unused_element
  _Status call(
      {String bgClass, String previewClass, String status, String textClass}) {
    return _Status(
      bgClass: bgClass,
      previewClass: previewClass,
      status: status,
      textClass: textClass,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $Status = _$StatusTearOff();

/// @nodoc
mixin _$Status {
  String get bgClass;

  String get previewClass;

  String get status;

  String get textClass;

  $StatusCopyWith<Status> get copyWith;
}

/// @nodoc
abstract class $StatusCopyWith<$Res> {
  factory $StatusCopyWith(Status value, $Res Function(Status) then) =
      _$StatusCopyWithImpl<$Res>;

  $Res call(
      {String bgClass, String previewClass, String status, String textClass});
}

/// @nodoc
class _$StatusCopyWithImpl<$Res> implements $StatusCopyWith<$Res> {
  _$StatusCopyWithImpl(this._value, this._then);

  final Status _value;

  // ignore: unused_field
  final $Res Function(Status) _then;

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
abstract class _$StatusCopyWith<$Res> implements $StatusCopyWith<$Res> {
  factory _$StatusCopyWith(_Status value, $Res Function(_Status) then) =
      __$StatusCopyWithImpl<$Res>;

  @override
  $Res call(
      {String bgClass, String previewClass, String status, String textClass});
}

/// @nodoc
class __$StatusCopyWithImpl<$Res> extends _$StatusCopyWithImpl<$Res>
    implements _$StatusCopyWith<$Res> {
  __$StatusCopyWithImpl(_Status _value, $Res Function(_Status) _then)
      : super(_value, (v) => _then(v as _Status));

  @override
  _Status get _value => super._value as _Status;

  @override
  $Res call({
    Object bgClass = freezed,
    Object previewClass = freezed,
    Object status = freezed,
    Object textClass = freezed,
  }) {
    return _then(_Status(
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
class _$_Status implements _Status {
  const _$_Status(
      {this.bgClass, this.previewClass, this.status, this.textClass});

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
    return 'Status(bgClass: $bgClass, previewClass: $previewClass, status: $status, textClass: $textClass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _Status &&
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
  _$StatusCopyWith<_Status> get copyWith =>
      __$StatusCopyWithImpl<_Status>(this, _$identity);
}

abstract class _Status implements Status {
  const factory _Status(
      {String bgClass,
      String previewClass,
      String status,
      String textClass}) = _$_Status;

  @override
  String get bgClass;

  @override
  String get previewClass;

  @override
  String get status;

  @override
  String get textClass;

  @override
  _$StatusCopyWith<_Status> get copyWith;
}
