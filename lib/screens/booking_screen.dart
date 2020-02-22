import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tola/datepicker.dart';
import 'package:tola/screens/departure_city_search.dart';
import 'package:tola/screens/destination_city_search.dart';
import 'package:tola/screens/passengers.dart';
import 'package:tola/screens/trip_list.dart';

class BookingScreen extends StatefulWidget {
  String fromLocation;
  String toLocation;
  int numberOfPassengers;
  String date;

  @override
  _BookingScreenState createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {
  TextEditingController _departureTownController;
  TextEditingController _destinationTownController;
  TextEditingController _passengerCountController;
  TextEditingController _dateController;

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

  _navigateAndDisplayDepartureTown(BuildContext context) async {
    final departureTownName = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => DepartureCitySearch()));

    if (departureTownName != null)
      _departureTownController.text = departureTownName;
    widget.fromLocation = departureTownName;
  }

  _navigateAndDisplayDestinationTown(BuildContext context) async {
    final destinationTownName = await Navigator.push(context,
        MaterialPageRoute(builder: (context) => DestinationCitySearch()));

    if (destinationTownName != null)
      _destinationTownController.text = destinationTownName;
    widget.toLocation = destinationTownName;
  }

  _navigateAndDisplayPassengerCount(BuildContext context) async {
    final passengerCountText = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => Passengers()));

    if (passengerCountText != null) if (passengerCountText > 1) {
      _passengerCountController.text = passengerCountText.toString() +
          ' '
              'passengers';
    } else {
      _passengerCountController.text = passengerCountText.toString() +
          ' '
              'passenger';
    }
    widget.numberOfPassengers = passengerCountText;
  }

  _navigateAndDisplayDate(BuildContext context) async {
    final date = await Navigator.push(
        context, MaterialPageRoute(builder: (context) => DatePicker()));
    if (date != null) _dateController.text = DateFormat.yMMMd().format(date);
    widget.date = DateFormat('yyyy-MM-dd').format(date);
    print('date from datepicker: ${date}');
    print('converted date from datepicker: ${widget.date}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurpleAccent,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text('Book'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 32.0,
            vertical: 32.0,
          ),
          child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      10.0,
                    )),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Container(
                    child: Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 4.0,
                              ),
                              child: Icon(
                                Icons.my_location,
                                size: 24,
                                color: Colors.deepPurpleAccent[200],
                              ),
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: TextField(
                                enableInteractiveSelection:
                                    widget.fromLocation == null ? true : false,
                                focusNode: FocusNode(),
                                controller: _departureTownController,
                                onTap: () {
                                  _navigateAndDisplayDepartureTown(context);
                                },
                                decoration:
                                    InputDecoration.collapsed(hintText: 'From'),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(left: 14.0),
                              child: Column(
                                children: <Widget>[
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 6.0,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 6.0,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 6.0,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 6.0,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 6.0,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(
                                    height: 2.0,
                                  ),
                                  Icon(
                                    Icons.fiber_manual_record,
                                    size: 6.0,
                                    color: Colors.grey[400],
                                  ),
                                  SizedBox(
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
                            SizedBox(
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
                            Icon(
                              Icons.location_on,
                              size: 36.0,
                              color: Theme.of(context).primaryColor,
                            ),
                            SizedBox(
                              width: 20.0,
                            ),
                            Expanded(
                              child: TextField(
                                enableInteractiveSelection:
                                    widget.toLocation == null ? true : false,
                                focusNode: FocusNode(),
                                controller: _destinationTownController,
                                onTap: () {
                                  _navigateAndDisplayDestinationTown(context);
                                },
                                decoration:
                                    InputDecoration.collapsed(hintText: 'To'),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                enableInteractiveSelection:
                    widget.numberOfPassengers == null ? true : false,
                focusNode: FocusNode(),
                controller: _passengerCountController,
                onTap: () {
                  _navigateAndDisplayPassengerCount(context);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    color: Colors.deepPurpleAccent[200],
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'For',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              TextField(
                enableInteractiveSelection: widget.date == null ? true : false,
                focusNode: FocusNode(),
                controller: _dateController,
                onTap: () {
                  _navigateAndDisplayDate(context);
                },
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    FontAwesomeIcons.calendarAlt,
                    color: Colors.deepPurpleAccent[200],
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Date',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 16.0,
              ),
              AnimatedOpacity(
                opacity: widget.fromLocation != null &&
                        widget.toLocation != null &&
                        widget.numberOfPassengers != null &&
                        widget.date != null
                    ? 1.0
                    : 0.0,
                duration: Duration(milliseconds: 600),
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Trips(
                                  tripDate: widget.date,
                                  passengerCount: widget.numberOfPassengers,
                                  departureLocation: widget.fromLocation,
                                  destinationLocation: widget.toLocation,
                                )));
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.amber[400],
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    alignment: Alignment.center,
                    height: 56.0,
                    width: double.infinity,
                    child: Text(
                      'Search',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.deepPurple[900],
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
