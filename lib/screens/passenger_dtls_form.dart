import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tola/constants.dart';
import 'package:tola/screens/seat_selection.dart';

class PassengerDetails extends StatefulWidget {
  @override
  _PassengerDetailsState createState() => _PassengerDetailsState();
}

class _PassengerDetailsState extends State<PassengerDetails> {
  int count = 2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Passenger Details'),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
                itemCount: count,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          alignment: Alignment.centerLeft,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            border: Border(
                              bottom: BorderSide(color: kDividerColor),
                              top: BorderSide(color: kDividerColor),
                            ),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'PASSENGER DETAILS',
                              style: kCardTextStyleNormal,
                            ),
                          ),
                        ),
                        Container(
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  'Personal '
                                  'details',
                                  style: TextStyle(fontWeight: FontWeight.w600),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'T'
                                        'itle'
                                        '',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'First name',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                                TextField(
                                  decoration: InputDecoration(
                                    labelText: 'Last name',
                                    border: OutlineInputBorder(),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.0,
                                ),
                              ],
                            ),
                          ),
                        ),
//                        if (index == count)
//                          Container(
//                            height: 56.0,
//                            color: Theme.of(context).primaryColor,
//                          ),
                      ],
                    ),
                  );
                }),
          ),
          GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SeatSelection()));
              },
              child: Container(
                height: 56.0,
                color: Theme.of(context).primaryColor,
              ))
        ],
      ),
    );
  }
}
