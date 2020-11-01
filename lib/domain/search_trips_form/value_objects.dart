import 'package:dartz/dartz.dart';
import 'package:tola/domain/core/failures.dart';
import 'package:tola/domain/core/value_objects.dart';
import 'package:tola/domain/core/value_validators.dart';

class DepartureTownField extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const DepartureTownField._(this.value);

  factory DepartureTownField(String input) {
    assert(input != null);
    return DepartureTownField._(validateStringNotEmpty(input));
  }
}

class DestinationTownField extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const DestinationTownField._(this.value);

  factory DestinationTownField(String input) {
    assert(input != null);
    return DestinationTownField._(validateStringNotEmpty(input));
  }
}

class PassengersField extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const PassengersField._(this.value);

  factory PassengersField(String input) {
    assert(input != null);
    return PassengersField._(validateStringNotEmpty(input));
  }
}

class DateField extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  const DateField._(this.value);

  factory DateField(String input) {
    assert(input != null);
    return DateField._(validateStringNotEmpty(input));
  }
}
