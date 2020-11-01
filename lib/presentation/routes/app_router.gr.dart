// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../domain/trips/trip.dart';
import '../booking/booking_form/booking_page.dart';
import '../booking/booking_form/departure_city_search.dart';
import '../booking/booking_form/destination_city_search.dart';
import '../booking/booking_form/passengers_page.dart';
import '../booking/passenger_details/passenger_details_page.dart';
import '../booking/seat-selection/seat_selection_page.dart';
import '../booking/trip_selection/trip_details_page.dart';
import '../booking/trip_selection/trips_page.dart';
import '../core/widgets/datepicker.dart';
import '../on_boarding/on_boarding_screen.dart';
import '../sign_in/sign_in_screen.dart';
import '../splash/splash_screen.dart';

class Routes {
  static const String splashScreen = '/';
  static const String onBoardingScreen = '/on-boarding-screen';
  static const String signInScreen = '/sign-in-screen';
  static const String bookingPage = '/booking-page';
  static const String departureCitySearch = '/departure-city-search';
  static const String destinationCitySearch = '/destination-city-search';
  static const String datePicker = '/date-picker';
  static const String tripsPage = '/trips-page';
  static const String tripDetailsPage = '/trip-details-page';
  static const String passengerDetailsPage = '/passenger-details-page';
  static const String passengersPage = '/passengers-page';
  static const String seatSelectionPage = '/seat-selection-page';
  static const all = <String>{
    splashScreen,
    onBoardingScreen,
    signInScreen,
    bookingPage,
    departureCitySearch,
    destinationCitySearch,
    datePicker,
    tripsPage,
    tripDetailsPage,
    passengerDetailsPage,
    passengersPage,
    seatSelectionPage,
  };
}

class AppRouter extends RouterBase {
  @override
  List<RouteDef> get routes => _routes;
  final _routes = <RouteDef>[
    RouteDef(Routes.splashScreen, page: SplashScreen),
    RouteDef(Routes.onBoardingScreen, page: OnBoardingScreen),
    RouteDef(Routes.signInScreen, page: SignInScreen),
    RouteDef(Routes.bookingPage, page: BookingPage),
    RouteDef(Routes.departureCitySearch, page: DepartureCitySearch),
    RouteDef(Routes.destinationCitySearch, page: DestinationCitySearch),
    RouteDef(Routes.datePicker, page: DatePicker),
    RouteDef(Routes.tripsPage, page: TripsPage),
    RouteDef(Routes.tripDetailsPage, page: TripDetailsPage),
    RouteDef(Routes.passengerDetailsPage, page: PassengerDetailsPage),
    RouteDef(Routes.passengersPage, page: PassengersPage),
    RouteDef(Routes.seatSelectionPage, page: SeatSelectionPage),
  ];

  @override
  Map<Type, AutoRouteFactory> get pagesMap => _pagesMap;
  final _pagesMap = <Type, AutoRouteFactory>{
    SplashScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SplashScreen(),
        settings: data,
      );
    },
    OnBoardingScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => OnBoardingScreen(),
        settings: data,
      );
    },
    SignInScreen: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SignInScreen(),
        settings: data,
      );
    },
    BookingPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => BookingPage(),
        settings: data,
      );
    },
    DepartureCitySearch: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DepartureCitySearch(),
        settings: data,
      );
    },
    DestinationCitySearch: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DestinationCitySearch(),
        settings: data,
      );
    },
    DatePicker: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => DatePicker(),
        settings: data,
      );
    },
    TripsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => TripsPage(),
        settings: data,
      );
    },
    TripDetailsPage: (data) {
      final args = data.getArgs<TripDetailsPageArguments>(
        orElse: () => TripDetailsPageArguments(),
      );
      return MaterialPageRoute<dynamic>(
        builder: (context) => TripDetailsPage(trip: args.trip),
        settings: data,
      );
    },
    PassengerDetailsPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PassengerDetailsPage(),
        settings: data,
      );
    },
    PassengersPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => PassengersPage(),
        settings: data,
      );
    },
    SeatSelectionPage: (data) {
      return MaterialPageRoute<dynamic>(
        builder: (context) => SeatSelectionPage(),
        settings: data,
      );
    },
  };
}

/// ************************************************************************
/// Navigation helper methods extension
/// *************************************************************************

extension AppRouterExtendedNavigatorStateX on ExtendedNavigatorState {
  Future<dynamic> pushSplashScreen() => push<dynamic>(Routes.splashScreen);

  Future<dynamic> pushOnBoardingScreen() =>
      push<dynamic>(Routes.onBoardingScreen);

  Future<dynamic> pushSignInScreen() => push<dynamic>(Routes.signInScreen);

  Future<dynamic> pushBookingPage() => push<dynamic>(Routes.bookingPage);

  Future<dynamic> pushDepartureCitySearch() =>
      push<dynamic>(Routes.departureCitySearch);

  Future<dynamic> pushDestinationCitySearch() =>
      push<dynamic>(Routes.destinationCitySearch);

  Future<dynamic> pushDatePicker() => push<dynamic>(Routes.datePicker);

  Future<dynamic> pushTripsPage() => push<dynamic>(Routes.tripsPage);

  Future<dynamic> pushTripDetailsPage({
    Trip trip,
  }) =>
      push<dynamic>(
        Routes.tripDetailsPage,
        arguments: TripDetailsPageArguments(trip: trip),
      );

  Future<dynamic> pushPassengerDetailsPage() =>
      push<dynamic>(Routes.passengerDetailsPage);

  Future<dynamic> pushPassengersPage() => push<dynamic>(Routes.passengersPage);

  Future<dynamic> pushSeatSelectionPage() =>
      push<dynamic>(Routes.seatSelectionPage);
}

/// ************************************************************************
/// Arguments holder classes
/// *************************************************************************

/// TripDetailsPage arguments holder class
class TripDetailsPageArguments {
  final Trip trip;

  TripDetailsPageArguments({this.trip});
}
