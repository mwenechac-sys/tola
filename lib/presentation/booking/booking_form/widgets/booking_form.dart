import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/presentation/core/widgets/submit_button.dart';
import 'package:tola/presentation/routes/app_router.gr.dart';

import '../../../../constants.dart';

class BookingForm extends StatefulWidget {
  @override
  _BookingFormState createState() => _BookingFormState();
}

class _BookingFormState extends State<BookingForm> {
  TextEditingController _departureTownController;
  TextEditingController _destinationTownController;
  TextEditingController _passengerCountController;
  TextEditingController _dateController;
  String fromLocation = '';
  String toLocation = '';
  int numberOfPassengers;
  String sDate = '';

  @override
  void initState() {
    _departureTownController = TextEditingController();
    _destinationTownController = TextEditingController();
    _passengerCountController = TextEditingController();
    _dateController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _passengerCountController.dispose();
    _destinationTownController.dispose();
    _departureTownController.dispose();
    _dateController.dispose();
    super.dispose();
  }

  Future<String> _navigateAndDisplayDepartureTown(BuildContext context) async {
    final departureTownName =
        await ExtendedNavigator.of(context).push(Routes.departureCitySearch);

    if (departureTownName != null) {
      _departureTownController.text = departureTownName as String;
      context.bloc<BookingFormBloc>().add(
          BookingFormEvent.departureTownFieldChanged(
              _departureTownController.text));
    }
    fromLocation = departureTownName as String;

    return fromLocation;
  }

  Future<String> _navigateAndDisplayDestinationTown(
      BuildContext context) async {
    final destinationTownName =
        await ExtendedNavigator.of(context).push(Routes.departureCitySearch);

    if (destinationTownName != null) {
      _destinationTownController.text = destinationTownName as String;
      context.bloc<BookingFormBloc>().add(
          BookingFormEvent.destinationTownFieldChanged(
              _destinationTownController.text));
    }
    toLocation = destinationTownName as String;
    return toLocation;
  }

  Future<int> _navigateAndDisplayPassengerCount(BuildContext context) async {
    final passengerCountText =
        await ExtendedNavigator.of(context).push(Routes.passengersPage) as int;
    if (passengerCountText != null) {
      context
          .bloc<BookingFormBloc>()
          .add(BookingFormEvent.passengersFieldChanged(passengerCountText));

      if (passengerCountText >= 2) {
        _passengerCountController.text = '$passengerCountText passengers';
      } else {
        _passengerCountController.text = '$passengerCountText passenger';
      }
    }

    numberOfPassengers = passengerCountText as int;

    return numberOfPassengers;
  }

  Future<String> _navigateAndDisplayDate(BuildContext context) async {
    final date =
        await ExtendedNavigator.of(context).push(Routes.datePicker) as DateTime;
    if (date != null) {
      _dateController.text = DateFormat.yMMMd().format(date);
      context
          .bloc<BookingFormBloc>()
          .add(BookingFormEvent.dateFieldChanged(date));
    }
    sDate = DateFormat('yyyy-MM-dd').format(date);
    return sDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        title: const Text(
          'Search trips',
          style: TextStyle(
            color: kPrimaryTextColor,
          ),
        ),
      ),
      body: BlocConsumer<BookingFormBloc, BookingFormState>(
        listener: (BuildContext context, state) {
          if (state.loadTrips) {
            ExtendedNavigator.of(context).push(Routes.tripsPage);
          }
        },
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32.0,
                  vertical: 32.0,
                ),
                child: Column(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: kTolaDarkGrey,
                          borderRadius: BorderRadius.circular(
                            5.0,
                          )),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    focusNode: FocusNode(),
                                    controller: _departureTownController,
                                    validator: (_) => context
                                        .bloc<BookingFormBloc>()
                                        .state
                                        .departureTownField
                                        .value
                                        .fold(
                                            (f) => f.maybeMap(
                                                empty: (_) =>
                                                    'Please select your departure town',
                                                orElse: () => null),
                                            (r) => null),
                                    onTap: () {
                                      _navigateAndDisplayDepartureTown(context);
                                    },
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.my_location,
                                        size: 16,
                                        color: Colors.deepPurpleAccent[200],
                                      ),
                                      hintText: 'From'
                                          '',
                                      hintStyle: const TextStyle(
                                          color: kPrimaryTextColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(left: 20.0),
                                  child: Column(
                                    children: <Widget>[
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                      const SizedBox(
                                        height: 2.0,
                                      ),
                                      Icon(
                                        Icons.fiber_manual_record,
                                        size: 6.0,
                                        color: Colors.grey[400],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 32.0,
                                ),
                                Container(
                                  width: 230.0,
                                  height: 0.8,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: TextFormField(
                                    validator: (_) => context
                                        .bloc<BookingFormBloc>()
                                        .state
                                        .destinationTownField
                                        .value
                                        .fold(
                                            (f) => f.maybeMap(
                                                empty: (_) =>
                                                    ' Please select your destination town',
                                                orElse: () => null),
                                            (_) => null),
                                    enableInteractiveSelection:
                                        toLocation.isEmpty ? true : false,
                                    focusNode: FocusNode(),
                                    controller: _destinationTownController,
                                    onTap: () {
                                      _navigateAndDisplayDestinationTown(
                                          context);
                                    },
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      prefixIcon: Icon(
                                        Icons.location_on,
                                        size: 24.0,
                                        color: Theme.of(context).primaryColor,
                                      ),
                                      hintText: 'To',
                                      hintStyle: const TextStyle(
                                          color: kPrimaryTextColor),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      focusNode: FocusNode(),
                      controller: _passengerCountController,
                      validator: (_) => context
                          .bloc<BookingFormBloc>()
                          .state
                          .passengersField
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  empty: (_) =>
                                      'Please indicate the number of passengers',
                                  orElse: () => null),
                              (_) => null),
                      onTap: () {
                        _navigateAndDisplayPassengerCount(context);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            Icons.person_outline,
                            color: Colors.deepPurpleAccent[200],
                            size: 18,
                          ),
                          filled: true,
                          fillColor: kTolaDarkGrey,
                          hintText: 'For',
                          hintStyle: const TextStyle(color: kPrimaryTextColor),
                          border: InputBorder.none),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    TextFormField(
                      focusNode: FocusNode(),
                      controller: _dateController,
                      validator: (_) => context
                          .bloc<BookingFormBloc>()
                          .state
                          .dateField
                          .value
                          .fold(
                              (l) => l.maybeMap(
                                  empty: (_) =>
                                      'Please indicate the date of travel',
                                  orElse: () => null),
                              (_) => null),
                      onTap: () {
                        _navigateAndDisplayDate(context);
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(
                            FontAwesomeIcons.calendarAlt,
                            color: Colors.deepPurpleAccent[200],
                            size: 18,
                          ),
                          filled: true,
                          fillColor: kTolaDarkGrey,
                          hintText: 'Date',
                          hintStyle: const TextStyle(color: kPrimaryTextColor),
                          border: InputBorder.none),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    SubmitButton(
                      title: 'SEARCH',
                      function: () => {
                        context
                            .bloc<BookingFormBloc>()
                            .add(const BookingFormEvent.searchButtonPressed())
                        // ExtendedNavigator.of(context).push(Routes.tripsPage)
                      },
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
