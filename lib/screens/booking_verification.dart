import 'package:flutter/material.dart';

class VerifyBooking extends StatefulWidget {
  @override
  _VerifyBookingState createState() => _VerifyBookingState();
}

class _VerifyBookingState extends State<VerifyBooking> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''
            'Booking verification'),
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  top: BorderSide(width: 1.0, color: Colors.grey[300]),
                  bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: <Widget>[
                    Text(
                      'Passenger(s)',
                      style: TextStyle(
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.8,
                          fontSize: 18.0),
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Card(
                      elevation: 4.0,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                                width: double.infinity,
                                child: Text('Chanda Mwenenechanya')),
                            SizedBox(
                                width: double.infinity, child: Text('Seat No')),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border(
//                  top: BorderSide(width: 1.0, color: Colors.grey[300]),
                bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Payment',
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.8,
                        fontSize: 18.0),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Card(
                    elevation: 4.0,
                    child: Column(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border(
                                bottom: BorderSide(
                                  width: 1.0,
                                  color: Colors.grey[200],
                                ),
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'Payment Method',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              SizedBox(
                                width: double.infinity,
                                child: Text(
                                  'MTN MOMO',
                                  style: TextStyle(fontWeight: FontWeight.w500),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text('0961710358'),
                              ),
                              SizedBox(
                                width: double.infinity,
                                child: Text('K 200'),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
