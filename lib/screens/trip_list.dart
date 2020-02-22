import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
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
  _dateToTimeStampConverter(String date) {
    var mdate = DateTime.parse('$date');
    Timestamp timestamp = Timestamp.fromDate(mdate);
    return timestamp;
  }

  Future getTrips() async {
    var firestore = Firestore.instance;
    QuerySnapshot querySnapshot = await firestore
        .collection('trips')
        .where('trip_date',
            isEqualTo: _dateToTimeStampConverter(widget.tripDate))
        .where('destination_location',
            arrayContains: widget.destinationLocation)
        .getDocuments();

    return querySnapshot.documents;
  }

  @override
  Widget build(BuildContext context) {
    print('trip date: ${widget.tripDate}');
    print('timestamp: ${_dateToTimeStampConverter(widget.tripDate)}');
    return Scaffold(
      appBar: AppBar(
        title: Text('Trips'),
      ),
      body: Container(
        child: FutureBuilder(
          future: getTrips(),
          builder: (_, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: Text('loading....'),
              );
            } else {
              return ListView.builder(
                itemCount: snapshot.data.length,
                itemBuilder: (_, index) {
                  String vendorName = snapshot.data[index].data['vendor'];
                  var fdate = snapshot.data[index].data['trip_date'];
                  print('firestore timestamp: $fdate');
                  return GestureDetector(
                    onTap: () => _navigateDetailScreen(snapshot.data[index]),
                    child: Card(
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
                                        vendorName.toUpperCase(),
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
                                        'KITWE',
                                        style: kCardTextStyleNormal,
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '09:00',
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
                                      SizedBox(
                                        height: 5.0,
                                      ),
                                      Container(
                                        child: Text(
                                          '6 hrs 0 mins',
                                          style: kCardTextStyleNormal,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: <Widget>[
                                      Text(
                                        'LUSAKA',
                                        style: kCardTextStyleNormal,
                                      ),
                                      SizedBox(
                                        height: 2.0,
                                      ),
                                      Text(
                                        '14:00',
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
                                    text: 'K200',
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

  _navigateDetailScreen(DocumentSnapshot trip) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => TripDetail(
                  documentSnapshot: trip,
                )));
  }
}
