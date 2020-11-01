// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthEventTearOff {
  const _$AuthEventTearOff();

// ignore: unused_element
  AuthCheckRequested authCheckRequested() {
    return const AuthCheckRequested();
  }

// ignore: unused_element
  SignedOut signedOut() {
    return const SignedOut();
  }

// ignore: unused_element
  SignInWithEmailButtonPressed signInWithEmailButtonPressed() {
    return const SignInWithEmailButtonPressed();
  }

// ignore: unused_element
  CancelSignInWithEmailButtonPressed cancelSignInWithEmailButtonPressed() {
    return const CancelSignInWithEmailButtonPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthEvent = _$AuthEventTearOff();

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result signInWithEmailButtonPressed(),
    @required Result cancelSignInWithEmailButtonPressed(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result signInWithEmailButtonPressed(),
    Result cancelSignInWithEmailButtonPressed(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    @required
        Result cancelSignInWithEmailButtonPressed(
            CancelSignInWithEmailButtonPressed value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    Result cancelSignInWithEmailButtonPressed(
        CancelSignInWithEmailButtonPressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res> implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  final AuthEvent _value;

  // ignore: unused_field
  final $Res Function(AuthEvent) _then;
}

/// @nodoc
abstract class $AuthCheckRequestedCopyWith<$Res> {
  factory $AuthCheckRequestedCopyWith(
          AuthCheckRequested value, $Res Function(AuthCheckRequested) then) =
      _$AuthCheckRequestedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthCheckRequestedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $AuthCheckRequestedCopyWith<$Res> {
  _$AuthCheckRequestedCopyWithImpl(
      AuthCheckRequested _value, $Res Function(AuthCheckRequested) _then)
      : super(_value, (v) => _then(v as AuthCheckRequested));

  @override
  AuthCheckRequested get _value => super._value as AuthCheckRequested;
}

/// @nodoc
class _$AuthCheckRequested implements AuthCheckRequested {
  const _$AuthCheckRequested();

  @override
  String toString() {
    return 'AuthEvent.authCheckRequested()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthCheckRequested);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result signInWithEmailButtonPressed(),
    @required Result cancelSignInWithEmailButtonPressed(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return authCheckRequested();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result signInWithEmailButtonPressed(),
    Result cancelSignInWithEmailButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    @required
        Result cancelSignInWithEmailButtonPressed(
            CancelSignInWithEmailButtonPressed value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return authCheckRequested(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    Result cancelSignInWithEmailButtonPressed(
        CancelSignInWithEmailButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authCheckRequested != null) {
      return authCheckRequested(this);
    }
    return orElse();
  }
}

abstract class AuthCheckRequested implements AuthEvent {
  const factory AuthCheckRequested() = _$AuthCheckRequested;
}

/// @nodoc
abstract class $SignedOutCopyWith<$Res> {
  factory $SignedOutCopyWith(SignedOut value, $Res Function(SignedOut) then) =
      _$SignedOutCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignedOutCopyWithImpl<$Res> extends _$AuthEventCopyWithImpl<$Res>
    implements $SignedOutCopyWith<$Res> {
  _$SignedOutCopyWithImpl(SignedOut _value, $Res Function(SignedOut) _then)
      : super(_value, (v) => _then(v as SignedOut));

  @override
  SignedOut get _value => super._value as SignedOut;
}

/// @nodoc
class _$SignedOut implements SignedOut {
  const _$SignedOut();

  @override
  String toString() {
    return 'AuthEvent.signedOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignedOut);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result signInWithEmailButtonPressed(),
    @required Result cancelSignInWithEmailButtonPressed(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return signedOut();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result signInWithEmailButtonPressed(),
    Result cancelSignInWithEmailButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    @required
        Result cancelSignInWithEmailButtonPressed(
            CancelSignInWithEmailButtonPressed value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return signedOut(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    Result cancelSignInWithEmailButtonPressed(
        CancelSignInWithEmailButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signedOut != null) {
      return signedOut(this);
    }
    return orElse();
  }
}

abstract class SignedOut implements AuthEvent {
  const factory SignedOut() = _$SignedOut;
}

/// @nodoc
abstract class $SignInWithEmailButtonPressedCopyWith<$Res> {
  factory $SignInWithEmailButtonPressedCopyWith(
          SignInWithEmailButtonPressed value,
          $Res Function(SignInWithEmailButtonPressed) then) =
      _$SignInWithEmailButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $SignInWithEmailButtonPressedCopyWith<$Res> {
  _$SignInWithEmailButtonPressedCopyWithImpl(
      SignInWithEmailButtonPressed _value,
      $Res Function(SignInWithEmailButtonPressed) _then)
      : super(_value, (v) => _then(v as SignInWithEmailButtonPressed));

  @override
  SignInWithEmailButtonPressed get _value =>
      super._value as SignInWithEmailButtonPressed;
}

/// @nodoc
class _$SignInWithEmailButtonPressed implements SignInWithEmailButtonPressed {
  const _$SignInWithEmailButtonPressed();

  @override
  String toString() {
    return 'AuthEvent.signInWithEmailButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmailButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result signInWithEmailButtonPressed(),
    @required Result cancelSignInWithEmailButtonPressed(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return signInWithEmailButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result signInWithEmailButtonPressed(),
    Result cancelSignInWithEmailButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailButtonPressed != null) {
      return signInWithEmailButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    @required
        Result cancelSignInWithEmailButtonPressed(
            CancelSignInWithEmailButtonPressed value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return signInWithEmailButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    Result cancelSignInWithEmailButtonPressed(
        CancelSignInWithEmailButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmailButtonPressed != null) {
      return signInWithEmailButtonPressed(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmailButtonPressed implements AuthEvent {
  const factory SignInWithEmailButtonPressed() = _$SignInWithEmailButtonPressed;
}

/// @nodoc
abstract class $CancelSignInWithEmailButtonPressedCopyWith<$Res> {
  factory $CancelSignInWithEmailButtonPressedCopyWith(
          CancelSignInWithEmailButtonPressed value,
          $Res Function(CancelSignInWithEmailButtonPressed) then) =
      _$CancelSignInWithEmailButtonPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelSignInWithEmailButtonPressedCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res>
    implements $CancelSignInWithEmailButtonPressedCopyWith<$Res> {
  _$CancelSignInWithEmailButtonPressedCopyWithImpl(
      CancelSignInWithEmailButtonPressed _value,
      $Res Function(CancelSignInWithEmailButtonPressed) _then)
      : super(_value, (v) => _then(v as CancelSignInWithEmailButtonPressed));

  @override
  CancelSignInWithEmailButtonPressed get _value =>
      super._value as CancelSignInWithEmailButtonPressed;
}

/// @nodoc
class _$CancelSignInWithEmailButtonPressed
    implements CancelSignInWithEmailButtonPressed {
  const _$CancelSignInWithEmailButtonPressed();

  @override
  String toString() {
    return 'AuthEvent.cancelSignInWithEmailButtonPressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is CancelSignInWithEmailButtonPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authCheckRequested(),
    @required Result signedOut(),
    @required Result signInWithEmailButtonPressed(),
    @required Result cancelSignInWithEmailButtonPressed(),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return cancelSignInWithEmailButtonPressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authCheckRequested(),
    Result signedOut(),
    Result signInWithEmailButtonPressed(),
    Result cancelSignInWithEmailButtonPressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelSignInWithEmailButtonPressed != null) {
      return cancelSignInWithEmailButtonPressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authCheckRequested(AuthCheckRequested value),
    @required Result signedOut(SignedOut value),
    @required
        Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    @required
        Result cancelSignInWithEmailButtonPressed(
            CancelSignInWithEmailButtonPressed value),
  }) {
    assert(authCheckRequested != null);
    assert(signedOut != null);
    assert(signInWithEmailButtonPressed != null);
    assert(cancelSignInWithEmailButtonPressed != null);
    return cancelSignInWithEmailButtonPressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authCheckRequested(AuthCheckRequested value),
    Result signedOut(SignedOut value),
    Result signInWithEmailButtonPressed(SignInWithEmailButtonPressed value),
    Result cancelSignInWithEmailButtonPressed(
        CancelSignInWithEmailButtonPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (cancelSignInWithEmailButtonPressed != null) {
      return cancelSignInWithEmailButtonPressed(this);
    }
    return orElse();
  }
}

abstract class CancelSignInWithEmailButtonPressed implements AuthEvent {
  const factory CancelSignInWithEmailButtonPressed() =
      _$CancelSignInWithEmailButtonPressed;
}

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  Initial initial() {
    return const Initial();
  }

// ignore: unused_element
  SignInWithEmail signInWithEmail() {
    return const SignInWithEmail();
  }

// ignore: unused_element
  Authenticated authenticated() {
    return const Authenticated();
  }

// ignore: unused_element
  Unauthenticated unauthenticated() {
    return const Unauthenticated();
  }

// ignore: unused_element
  BookingScreenHome bookingScreenHome() {
    return const BookingScreenHome();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInWithEmail(),
    @required Result authenticated(),
    @required Result unauthenticated(),
    @required Result bookingScreenHome(),
  });

  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInWithEmail(),
    Result authenticated(),
    Result unauthenticated(),
    Result bookingScreenHome(),
    @required Result orElse(),
  });

  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result bookingScreenHome(BookingScreenHome value),
  });

  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signInWithEmail(SignInWithEmail value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    Result bookingScreenHome(BookingScreenHome value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;

  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $InitialCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;
}

/// @nodoc
class _$Initial implements Initial {
  const _$Initial();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInWithEmail(),
    @required Result authenticated(),
    @required Result unauthenticated(),
    @required Result bookingScreenHome(),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return initial();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInWithEmail(),
    Result authenticated(),
    Result unauthenticated(),
    Result bookingScreenHome(),
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
    @required Result initial(Initial value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result bookingScreenHome(BookingScreenHome value),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return initial(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signInWithEmail(SignInWithEmail value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    Result bookingScreenHome(BookingScreenHome value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements AuthState {
  const factory Initial() = _$Initial;
}

/// @nodoc
abstract class $SignInWithEmailCopyWith<$Res> {
  factory $SignInWithEmailCopyWith(
          SignInWithEmail value, $Res Function(SignInWithEmail) then) =
      _$SignInWithEmailCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInWithEmailCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $SignInWithEmailCopyWith<$Res> {
  _$SignInWithEmailCopyWithImpl(
      SignInWithEmail _value, $Res Function(SignInWithEmail) _then)
      : super(_value, (v) => _then(v as SignInWithEmail));

  @override
  SignInWithEmail get _value => super._value as SignInWithEmail;
}

/// @nodoc
class _$SignInWithEmail implements SignInWithEmail {
  const _$SignInWithEmail();

  @override
  String toString() {
    return 'AuthState.signInWithEmail()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is SignInWithEmail);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInWithEmail(),
    @required Result authenticated(),
    @required Result unauthenticated(),
    @required Result bookingScreenHome(),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return signInWithEmail();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInWithEmail(),
    Result authenticated(),
    Result unauthenticated(),
    Result bookingScreenHome(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result bookingScreenHome(BookingScreenHome value),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return signInWithEmail(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signInWithEmail(SignInWithEmail value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    Result bookingScreenHome(BookingScreenHome value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (signInWithEmail != null) {
      return signInWithEmail(this);
    }
    return orElse();
  }
}

abstract class SignInWithEmail implements AuthState {
  const factory SignInWithEmail() = _$SignInWithEmail;
}

/// @nodoc
abstract class $AuthenticatedCopyWith<$Res> {
  factory $AuthenticatedCopyWith(
          Authenticated value, $Res Function(Authenticated) then) =
      _$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthenticatedCopyWith<$Res> {
  _$AuthenticatedCopyWithImpl(
      Authenticated _value, $Res Function(Authenticated) _then)
      : super(_value, (v) => _then(v as Authenticated));

  @override
  Authenticated get _value => super._value as Authenticated;
}

/// @nodoc
class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInWithEmail(),
    @required Result authenticated(),
    @required Result unauthenticated(),
    @required Result bookingScreenHome(),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return authenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInWithEmail(),
    Result authenticated(),
    Result unauthenticated(),
    Result bookingScreenHome(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result bookingScreenHome(BookingScreenHome value),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signInWithEmail(SignInWithEmail value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    Result bookingScreenHome(BookingScreenHome value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthState {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class $UnauthenticatedCopyWith<$Res> {
  factory $UnauthenticatedCopyWith(
          Unauthenticated value, $Res Function(Unauthenticated) then) =
      _$UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UnauthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements $UnauthenticatedCopyWith<$Res> {
  _$UnauthenticatedCopyWithImpl(
      Unauthenticated _value, $Res Function(Unauthenticated) _then)
      : super(_value, (v) => _then(v as Unauthenticated));

  @override
  Unauthenticated get _value => super._value as Unauthenticated;
}

/// @nodoc
class _$Unauthenticated implements Unauthenticated {
  const _$Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInWithEmail(),
    @required Result authenticated(),
    @required Result unauthenticated(),
    @required Result bookingScreenHome(),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInWithEmail(),
    Result authenticated(),
    Result unauthenticated(),
    Result bookingScreenHome(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result bookingScreenHome(BookingScreenHome value),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signInWithEmail(SignInWithEmail value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    Result bookingScreenHome(BookingScreenHome value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class Unauthenticated implements AuthState {
  const factory Unauthenticated() = _$Unauthenticated;
}

/// @nodoc
abstract class $BookingScreenHomeCopyWith<$Res> {
  factory $BookingScreenHomeCopyWith(
          BookingScreenHome value, $Res Function(BookingScreenHome) then) =
      _$BookingScreenHomeCopyWithImpl<$Res>;
}

/// @nodoc
class _$BookingScreenHomeCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $BookingScreenHomeCopyWith<$Res> {
  _$BookingScreenHomeCopyWithImpl(
      BookingScreenHome _value, $Res Function(BookingScreenHome) _then)
      : super(_value, (v) => _then(v as BookingScreenHome));

  @override
  BookingScreenHome get _value => super._value as BookingScreenHome;
}

/// @nodoc
class _$BookingScreenHome implements BookingScreenHome {
  const _$BookingScreenHome();

  @override
  String toString() {
    return 'AuthState.bookingScreenHome()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is BookingScreenHome);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result initial(),
    @required Result signInWithEmail(),
    @required Result authenticated(),
    @required Result unauthenticated(),
    @required Result bookingScreenHome(),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return bookingScreenHome();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result initial(),
    Result signInWithEmail(),
    Result authenticated(),
    Result unauthenticated(),
    Result bookingScreenHome(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookingScreenHome != null) {
      return bookingScreenHome();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result initial(Initial value),
    @required Result signInWithEmail(SignInWithEmail value),
    @required Result authenticated(Authenticated value),
    @required Result unauthenticated(Unauthenticated value),
    @required Result bookingScreenHome(BookingScreenHome value),
  }) {
    assert(initial != null);
    assert(signInWithEmail != null);
    assert(authenticated != null);
    assert(unauthenticated != null);
    assert(bookingScreenHome != null);
    return bookingScreenHome(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result initial(Initial value),
    Result signInWithEmail(SignInWithEmail value),
    Result authenticated(Authenticated value),
    Result unauthenticated(Unauthenticated value),
    Result bookingScreenHome(BookingScreenHome value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (bookingScreenHome != null) {
      return bookingScreenHome(this);
    }
    return orElse();
  }
}

abstract class BookingScreenHome implements AuthState {
  const factory BookingScreenHome() = _$BookingScreenHome;
}
