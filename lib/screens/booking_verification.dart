import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tola/components/bottom_button.dart';
import 'package:tola/constants.dart';

import '../ticket_screen.dart';

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
      body: SingleChildScrollView(
        child: Column(
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
                                  width: double.infinity,
                                  child: Text('Seat No')),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
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
                        'Summary of charges',
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
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
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
                                      'MTN MoMo',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w500),
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
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'Total trip charges:',
                          style: TextStyle(
                              fontWeight: FontWeight.w600,
                              letterSpacing: 0.8,
                              fontSize: 16.0),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Text(
                          'ZMK 200',
                          style: TextStyle(
                              fontWeight: FontWeight.w800,
                              letterSpacing: 0.8,
                              fontSize: 30.0),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            //terms and conditions card
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    bottom: BorderSide(width: 1.0, color: Colors.grey[300]),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: <Widget>[
//                    Text(
//                      '',
//                      style: TextStyle(
//                          fontWeight: FontWeight.w600,
//                          letterSpacing: 0.8,
//                          fontSize: 18.0),
//                    ),
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
                                      'Terms and conditions',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w600),
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
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200],
                                            width: 1.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          'Fare conditions',
                                          style: TextStyle(
                                              decoration:
                                              TextDecoration.underline),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200],
                                            width: 1.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                        width: double.infinity,
                                        child: Text(
                                          'Booking terms and conditions',
                                          style: TextStyle(
                                              decoration:
                                              TextDecoration.underline),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[200],
                                            width: 1.0),
                                      ),
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: SizedBox(
                                          width: double.infinity,
                                          child: RichText(
                                            text: TextSpan(
                                                text:
                                                'Any personal data you provide will be handled according to the ',
                                                style: TextStyle(
                                                    color: kPrimaryTextColor,
                                                    fontSize: 16.0),
                                                children: <TextSpan>[
                                                  TextSpan(
                                                    text: 'Tola Privacy Policy',
                                                    style: TextStyle(
                                                        decoration:
                                                        TextDecoration
                                                            .underline),
                                                  ),
                                                ]),
                                          )),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20.0,
                      ),
                      SizedBox(
                        child: Text(
                            'Click Pay now to complete your payment. If you have entered your MoMo, Card, or ZamPay details, your account will be charged now. For any payment issues, please contact us.'),
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            FontAwesomeIcons.toggleOff,
                            color: Colors.grey[600],
                            size: 32.0,
                          ),
                          SizedBox(
                            width: 20.0,
                          ),
                          Container(
                            child: Flexible(
                              child: Text(
                                'I have read and agree to the Terms and Conditions',
                                style: (TextStyle(fontWeight: FontWeight.w600)),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 32.0,
                      ),
                      TolaButton(
                        buttonTitle: 'Pay now',
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => TicketScreen()));
                        },
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
