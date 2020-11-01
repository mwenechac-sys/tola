import 'package:auto_route/auto_route_annotations.dart';
import 'package:tola/presentation/booking/booking_form/booking_page.dart';
import 'package:tola/presentation/booking/booking_form/departure_city_search.dart';
import 'package:tola/presentation/booking/booking_form/destination_city_search.dart';
import 'package:tola/presentation/booking/booking_form/passengers_page.dart';
import 'package:tola/presentation/booking/passenger_details/passenger_details_page.dart';
import 'package:tola/presentation/booking/seat-selection/seat_selection_page.dart';
import 'package:tola/presentation/booking/trip_selection/trip_details_page.dart';
import 'package:tola/presentation/booking/trip_selection/trips_page.dart';
import 'package:tola/presentation/core/widgets/datepicker.dart';
import 'package:tola/presentation/on_boarding/on_boarding_screen.dart';
import 'package:tola/presentation/sign_in/sign_in_screen.dart';
import 'package:tola/presentation/splash/splash_screen.dart';

@MaterialAutoRouter(
  generateNavigationHelperExtension: true,
  routes: <AutoRoute>[
    MaterialRoute(page: SplashScreen, initial: true),
    MaterialRoute(page: OnBoardingScreen),
    MaterialRoute(page: SignInScreen),
    MaterialRoute(page: BookingPage),
    MaterialRoute(page: DepartureCitySearch),
    MaterialRoute(page: DestinationCitySearch),
    MaterialRoute(page: DatePicker),
    MaterialRoute(page: TripsPage),
    MaterialRoute(page: TripDetailsPage),
    MaterialRoute(page: PassengerDetailsPage),
    MaterialRoute(page: PassengersPage),
    MaterialRoute(page: SeatSelectionPage),
  ],
)
class $AppRouter {}
