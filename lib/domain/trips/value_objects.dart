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

class AdultPassengersField extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const AdultPassengersField._(this.value);

  factory AdultPassengersField(int input) {
    assert(input != null);
    return AdultPassengersField._(validateInputNotZeroOrLess(input));
  }
}

class DateField extends ValueObject<DateTime> {
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  const DateField._(this.value);

  factory DateField(DateTime input) {
    assert(input != null);
    return DateField._(validateDateNotNull(input));
  }
}

class InfantPassengersField extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const InfantPassengersField._(this.value);

  factory InfantPassengersField(int input) {
    assert(input != null);
    return InfantPassengersField._(validateInputNotNegative(input));
  }
}

class ChildrenPassengersField extends ValueObject<int> {
  @override
  final Either<ValueFailure<int>, int> value;

  const ChildrenPassengersField._(this.value);

  factory ChildrenPassengersField(int input) {
    assert(input != null);
    return ChildrenPassengersField._(validateInputNotNegative(input));
  }
}
