import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tola/constants.dart';

import 'trip_detail.dart';

class Trips extends StatefulWidget {
  final String tripDate;
  final int passengerCount;
  final String departureLocation;
  final String destinationLocation;

  Trips(
      {this.tripDate,
      this.passengerCount,
      this.departureLocation,
      this.destinationLocation});

  @override
  _TripsState createState() => _TripsState();
}

class _TripsState extends State<Trips> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  _dateToTimeStampConverter(String date) {
    var mdate = DateTime.parse('$date');
    Timestamp timestamp = Timestamp.fromDate(mdate);
    return timestamp;
  }

  _timeStampToTimeConverter(var timeStamp) {
    var dateTime = DateTime.parse(timeStamp.toString());
    var time = DateFormat('HH:mm').format(dateTime);
    return time;
  }

  getData() {
    Stream<QuerySnapshot> stream1 = Firestore.instance
        .collection('trips')
        .where('trip_date',
            isEqualTo: _dateToTimeStampConverter(widget.tripDate))
        .where('bus_stops.Lusaka', isEqualTo: true)
        .where('bus_stops.Kabwe', isEqualTo: true)
        .snapshots();

    return stream1;
  }

  @override
  Widget build(BuildContext context) {
    print('trip date: ${widget.tripDate}');
    print('timestamp: ${_dateToTimeStampConverter(widget.tripDate)}');
    var totalPrice;
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      appBar: AppBar(
        title: Text('Trips'),
      ),
      body: Container(
        child: StreamBuilder<QuerySnapshot>(
          stream: getData(),
          builder: (BuildContext context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text('loading....'),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.documents.length,
                itemBuilder: (_, index) {
                  var route =
                      '${widget.departureLocation} - ${widget.destinationLocation}';

                  var departureTime = _timeStampToTimeConverter(snapshot
                      .data
                      .documents[index]
                      .data['routes']['$route']['departure_time']
                      .toDate());

                  var arrivalTime = _timeStampToTimeConverter(snapshot.data
                      .documents[index].data['routes']['$route']['arrival_time']
                      .toDate());

                  totalPrice = snapshot.data.documents[index].data['routes']
                          ['$route']['fare'] *
                      widget.passengerCount;

                  print(snapshot.data.documents.length);
                  print(route);

                  var fdate = snapshot.data.documents[index].data['trip_date'];
                  print('itemcount: ${snapshot.data.documents.length}');
                  print('firestore timestamp: $fdate');
                  return GestureDetector(
                    onTap: () => _navigateDetailScreen(
                        snapshot.data.documents[index], route, totalPrice),
                    child: Card(
                      color: kScaffoldBgColor,
                      elevation: 3.0,
                      margin: EdgeInsets.all(12.0),
                      child: Column(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Container(
                                    child: Text('HIGER',
                                        style: kCardTextStyleNormal),
                                  ),
                                  Flexible(
                                    child: Container(
                                      child: Text(
                                        snapshot.data.documents[index]
                                            .data['vendor']
                                            .toString()
                                            .toUpperCase(),
                                        style: kCardTextStyleNormal,
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            color: Colors.grey[100],
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text(
                                        widget.departureLocation.toUpperCase(),
                                        style: kCardTextStyleNormal,
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        departureTime.toString().toUpperCase(),
                                        style: kCardTextStyleBold,
                                      ),
                                    ],
                                  ),
                                  Column(
                                    children: <Widget>[
                                      Container(
                                        decoration: BoxDecoration(
                                            border: Border(
                                                bottom: BorderSide(
                                                    color: Colors.grey[300]))),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          children: <Widget>[
                                            Icon(
                                              Icons.location_on,
                                              size: 18.0,
                                              color: Colors.amber,
                                            ),
                                            SizedBox(
                                              width: 48.0,
                                            ),
                                            Container(
                                              child: Icon(
                                                FontAwesomeIcons.bus,
                                                color: Colors.grey[500],
                                              ),
                                            ),
                                            SizedBox(
                                              width: 48.0,
                                            ),
                                            Icon(
                                              Icons.location_on,
                                              size: 18.0,
                                              color: Colors.amber,
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        widget.destinationLocation
                                            .toUpperCase(),
                                        style: kCardTextStyleNormal,
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        arrivalTime.toString().toUpperCase(),
                                        style: kCardTextStyleBold,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: RichText(
                                text: TextSpan(children: <TextSpan>[
                                  TextSpan(
                                    text: 'PRICE: ',
                                    style: kCardTextStyleNormal,
                                  ),
                                  TextSpan(
                                    text: snapshot.data.documents[index]
                                        .data['routes']['$route']['fare']
                                        .toString(),
                                    style: kCardTextStyleBold,
                                  )
                                ]),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  _navigateDetailScreen(DocumentSnapshot trip, String route, int cost) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TripDetail(
                  documentSnapshot: trip,
                  route: route,
                  totalCost: cost,
                )));
  }
}
