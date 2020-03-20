import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tola/components/seat_item.dart';
import 'package:tola/services/db.dart';
import 'package:tola/tola_bust_seat_icons.dart';

import '../constants.dart';

Iterable<int> getRange(int start, int finish) sync* {
  for (int i = start; i <= finish; i++) {
    yield i;
  }
}

getRowLabels(int n) {
  var y = [];
  final numbers = getRange(1, 15);
  for (int val in numbers) {
    int x = 4 * val - n;
    y.add(x);
  }
  return y;
}

class SeatSelection extends StatefulWidget {
  final firstRowLabels = getRowLabels(1);
  final secondRowLabels = getRowLabels(0);
  final thirdRowLabels = getRowLabels(-1);
  final fourthRowLabels = getRowLabels(-2);

  @override
  _SeatSelectionState createState() => _SeatSelectionState();
}

class _SeatSelectionState extends State<SeatSelection> {
  List<SeatItem> selectedList;
  getSeat(){
    Future<CollectionReference> seat = DatabaseService.getSeats('qGqDjbHNknhlJIVit3e');
    return seat;
  }

  @override
  Widget build(BuildContext context) {
    print('list is ${widget.firstRowLabels}');
    print('list is ${widget.secondRowLabels}');
    print('list is ${widget.thirdRowLabels}');
    print('list is ${widget.fourthRowLabels}');
    return Scaffold(
        appBar: AppBar(
          leading: GestureDetector(
            child: Icon(
              Icons.close,
              color: Colors.black,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          backgroundColor: Colors.white,
          title: Text(
            'Seat selection',
            style: TextStyle(color: kPrimaryTextColor),
          ),
        ),
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 32.0,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 14,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    final rowOne = widget.firstRowLabels[index];
                    final rowTwo = widget.secondRowLabels[index];
                    final rowThree = widget.thirdRowLabels[index];
                    final rowFour = widget.fourthRowLabels[index];
                    int lastIndexPosition = 13;
                    Future<CollectionReference>seat = getSeat();
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 32.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          SeatItem(
                            isSelected: (bool value) {
                              setState(() {
                                if (value) {
//                                  selectedList.add();
                                } else {
//                                  selectedList.remove();
                                }
                              });
                            },
                            seatNumber: rowOne.toString(),
                          ),
                          SizedBox(width: 20.0),
                          SeatItem(
                            isSelected: (bool value) {
                              setState(() {
                                if (value) {
//                                  selectedList.add();
                                } else {
//                                  selectedList.remove();
                                }
                              });
                            },
                            seatNumber: rowTwo.toString(),
                          ),
                          SizedBox(width: 20.0),
                          SeatItem(
                            isSelected: (bool value) {
                              setState(() {
                                if (value) {
//                                  selectedList.add();
                                } else {
//                                  selectedList.remove();
                                }
                              });
                            },
                            seatNumber: rowThree.toString(),
                          ),
                          SizedBox(width: 20.0),
                          SeatItem(
                            isSelected: (bool value) {
                              setState(() {
                                if (value) {
//                                  selectedList.add();
                                } else {
//                                  selectedList.remove();
                                }
                              });
                            },
                            seatNumber: rowThree.toString(),
                          ),
                          SizedBox(width: 20.0),
                          SeatItem(
                            isSelected: (bool value) {
                              setState(() {
                                if (value) {
//                                  selectedList.add();
                                } else {
//                                  selectedList.remove();
                                }
                              });
                            },
                            seatNumber: rowFour.toString(),
                          ),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 32.0,
              )
            ],
          ),
        ));
  }
}
