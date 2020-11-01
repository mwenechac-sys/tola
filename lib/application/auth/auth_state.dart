part of 'auth_bloc.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = Initial;

  const factory AuthState.signInWithEmail() = SignInWithEmail;

  const factory AuthState.authenticated() = Authenticated;

  const factory AuthState.unauthenticated() = Unauthenticated;

  const factory AuthState.bookingScreenHome() = BookingScreenHome;
}
