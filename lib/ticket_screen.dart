import 'package:flutter/material.dart';
import 'package:tola/constants.dart';

import 'components/tola_ticket_widget.dart';

class TicketScreen extends StatefulWidget {
  @override
  _TicketScreenState createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      appBar: AppBar(
        title: Text('Ticket'),
      ),
      body: Center(
        child: Container(
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 20.0, // has the effect of softening the shadow
                spreadRadius: 5.0, // has the effect of extending the shadow
                offset: Offset(
                  10.0, // horizontal, move right 10
                  10.0, // vertical, move down 10
                ),
              )
            ],
          ),
          child: FlutterTicketWidget(
            width: 350,
            height: 500,
            isCornerRounded: true,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Text(
                      'Bus Ticket',
                      style: TextStyle(
                          color: kPrimaryTextColor,
                          fontSize: 20.0,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 25.0),
                    child: Column(
                      children: <Widget>[
                        ticketDetailsWidget(
                            firstTitle: 'Passengers',
                            secondTitle: 'Seat',
                            firstDesc: 'Chanda Mwenechanya',
                            secondDesc: '31'),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 12.0, right: 40.0),
                          child: ticketDetailsWidget(
                              firstTitle: 'Departure',
                              firstDesc: 'Lusaka',
                              secondTitle: 'Destination',
                              secondDesc: 'Kitwe'),
                        ),
                        Padding(
                          padding:
                              const EdgeInsets.only(top: 12.0, right: 40.0),
                          child: ticketDetailsWidget(
                              firstTitle: 'Trip',
                              firstDesc: 'QWTRYERIM',
                              secondTitle: 'Date',
                              secondDesc: '20-03-2020'),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 40.0, left: 30.0, right: 30.0),
                          child: Container(
                            width: 120,
                            height: 120,
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/qr_code.png'),
                                    fit: BoxFit.contain)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 10.0, left: 50, right: 50),
                          child: Text(
                            '0VYsJ5uMQ6awCGUoCDPp',
                            style: TextStyle(
                              color: Colors.black,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget ticketDetailsWidget(
      {String firstTitle,
      String firstDesc,
      String secondTitle,
      String secondDesc}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                firstTitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  firstDesc,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                secondTitle,
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: Text(
                  secondDesc,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
