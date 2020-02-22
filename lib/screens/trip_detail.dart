import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tola/screens/passenger_dtls_form.dart';

import '../constants.dart';

class TripDetail extends StatefulWidget {
  final DocumentSnapshot documentSnapshot;

  TripDetail({this.documentSnapshot});

  @override
  _TripDetailState createState() => _TripDetailState();
}

class _TripDetailState extends State<TripDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        child: Text('HIGER', style: kCardTextStyleNormal),
                      ),
                      Flexible(
                        child: Container(
                          child: Text(
                            'MAZHANDU',
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
                    'In-transit',
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
              SizedBox(
                height: 10.0,
              ),
              ExpandablePanel(
                header: Text(
                  'STOPS',
                  style: kCardTextStyleNormal,
                ),
                hasIcon: true,
                tapBodyToCollapse: true,
                expanded: Column(
                  children: <Widget>[
                    Divider(
                      thickness: .2,
                      color: kDividerColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Town',
                          style: kCardTextStyleNormal,
                        ),
                        Icon(
                          Icons.timer,
                          color: Colors.amber[800],
                          size: 20.0,
                        )
                      ],
                    ),
                    Divider(
                      thickness: .2,
                      color: kDividerColor,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Kabwe',
                          style: kCardTextStyleNormal,
                        ),
                        Text(
                          '20 '
                          'minutes',
                          style: kCardTextStyleNormal,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Kapiri Mposhi',
                          style: kCardTextStyleNormal,
                        ),
                        Text(
                          '15 '
                          'minutes',
                          style: kCardTextStyleNormal,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Ndola',
                          style: kCardTextStyleNormal,
                        ),
                        Text(
                          '15 '
                          'minutes',
                          style: kCardTextStyleNormal,
                        )
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 48.0,
              ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => PassengerDetails()));
                },
                color: Theme.of(context).primaryColor,
                child: Text(
                  'BOOK',
                  style: Theme.of(context).textTheme.button,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
