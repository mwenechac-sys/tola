// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:google_sign_in/google_sign_in.dart';

import 'application/auth/auth_bloc.dart';
import 'application/booking/booking_bloc.dart';
import 'application/trips/booking_form/booking_form_bloc.dart';
import 'infrastructure/auth/firebase_auth_facade.dart';
import 'infrastructure/core/firebase_injectable_module.dart';
import 'domain/auth/i_auth_facade.dart';
import 'domain/trips/i_trip_repository.dart';
import 'application/trips/booking_form/passenger_count_bloc/passenger_count_bloc.dart';
import 'application/trips/passenger_details/passenger_details_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'infrastructure/trips/trip_repository.dart';
import 'application/trips/trip_watcher/trip_watcher_bloc.dart';

/// adds generated dependencies
/// to the provided [GetIt] instance

GetIt $initGetIt(
  GetIt get, {
  String environment,
  EnvironmentFilter environmentFilter,
}) {
  final gh = GetItHelper(get, environment, environmentFilter);
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  gh.factory<BookingBloc>(() => BookingBloc());
  gh.factory<BookingFormBloc>(() => BookingFormBloc());
  gh.lazySingleton<FirebaseAuth>(() => firebaseInjectableModule.firebaseAuth);
  gh.lazySingleton<FirebaseFirestore>(() => firebaseInjectableModule.firestore);
  gh.lazySingleton<GoogleSignIn>(() => firebaseInjectableModule.googleSignIn);
  gh.lazySingleton<IAuthFacade>(
      () => FirebaseAuthFacade(get<FirebaseAuth>(), get<GoogleSignIn>()));
  gh.lazySingleton<ITripRepository>(
      () => TripRepository(get<FirebaseFirestore>()));
  gh.factory<PassengerCountBloc>(() => PassengerCountBloc());
  gh.factory<PassengerDetailsBloc>(() => PassengerDetailsBloc());
  gh.factory<SignInFormBloc>(() => SignInFormBloc(get<IAuthFacade>()));
  gh.factory<TripWatcherBloc>(
      () => TripWatcherBloc(get<ITripRepository>(), get<BookingFormBloc>()));
  gh.factory<AuthBloc>(() => AuthBloc(get<IAuthFacade>()));
  return get;
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
