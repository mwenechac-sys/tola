import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tola/screens/payment_dtls.dart';

class PaymentScreen extends StatefulWidget {
  @override
  _PaymentScreenState createState() => _PaymentScreenState();
}

class _PaymentScreenState extends State<PaymentScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Payment details'),
      ),
      body: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 8.0,
              ),
              Card(
                elevation: 1.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MomoPaymentDetails()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[200],
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                        height: 32.0,
                                        width: 40.0,
                                        child: Image.asset(
                                          'assets/images/mtn-vector-logo.png',
                                          fit: BoxFit.fill,
                                        )),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text('MoMo'),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => MomoPaymentDetails()));
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey[200],
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(2.0),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Container(
                                      height: 32.0,
                                      width: 40.0,
                                      child: Icon(
                                        FontAwesomeIcons.wallet,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                    SizedBox(
                                      width: 8.0,
                                    ),
                                    Text('Cash'),
                                  ],
                                ),
                                Icon(
                                  Icons.keyboard_arrow_right,
                                  color: Colors.amber,
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
//              ButtonTheme(
//                minWidth: double.infinity,
//                height: 50.0,
//                child: RaisedButton(
//                    clipBehavior: Clip.antiAlias,
//                    child: Text(
//                      'Proceed',
//                      style: TextStyle(fontSize: 18.0, color: Colors.white),
//                    ),
//                    color: Colors.deepPurple[400],
//                    onPressed: () {
//                      Navigator.push(
//                          context,
//                          MaterialPageRoute(
//                              builder: (context) => PaymentScreen()));
//                    }),
//              ),
            ],
          ),
        ),
      ),
    );
  }
}
