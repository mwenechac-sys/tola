import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tola/application/booking/booking_bloc.dart';

import '../constants.dart';

class TripDetail extends StatefulWidget {
  final DocumentSnapshot documentSnapshot;
  final String route;
  final int totalCost;

  TripDetail({this.documentSnapshot, this.route, this.totalCost});

  @override
  _TripDetailState createState() => _TripDetailState();
}

_timeStampToTimeConverter(var timeStamp) {
  var dateTime = DateTime.parse(timeStamp.toString());
  var time = DateFormat('HH:mm').format(dateTime);
  return time;
}

class _TripDetailState extends State<TripDetail> {
  @override
  Widget build(BuildContext context) {
    var data = widget.documentSnapshot.data();
    var departureTime = _timeStampToTimeConverter(
        data['routes']['${widget.route}']['departure_time'].toDate());

    var arrivalTime = _timeStampToTimeConverter(
        data['routes']['${widget.route}']['arrival_time'].toDate());

    bool status = data['in_transit'] as bool;
    print(status);
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      appBar: AppBar(
        title: Text('Trip Details'),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Container(
                        child: Text(data['vehicle']['vehicle_name']
                            .toString()
                            .toUpperCase(),
                            style: kCardTextStyleNormal),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(data['vendor']
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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(data['departure_location']
                              .toString()
                              .toUpperCase(),
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
                                    bottom:
                                        BorderSide(color: Colors.grey[300]))),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
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
                          Text(data['destination_location']
                              .toString()
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
                        text: data['routes']['${widget.route}']['fare']
                            .toString(),
                        style: kCardTextStyleBold,
                      )
                    ]),
                  ),
                ),
              ),
              Divider(
                thickness: .2,
                color: kDividerColor,
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'STATUS',
                    style: kCardTextStyleNormal,
                  ),
                  Text(
                    status ? 'In-Transit' : 'Listed',
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              Divider(
                thickness: .2,
                color: kDividerColor,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'TOTAL',
                    style: kCardTextStyleNormal,
                  ),
                  Text(
                    widget.totalCost.toString().toUpperCase(),
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )
                ],
              ),
              SizedBox(
                height: 48.0,
              ),
              ButtonTheme(
                minWidth: double.infinity,
                height: 56.0,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: RaisedButton(
                      elevation: 6.0,
                      child: Text(
                        'Book',
                        style: TextStyle(fontSize: 18.0, color: Colors.white),
                      ),
                      color: Colors.deepPurple[500],
                      onPressed: () {

                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
