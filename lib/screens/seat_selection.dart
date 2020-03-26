import 'package:flutter/material.dart';
import 'package:tola/components/seat_item.dart';
import 'package:tola/models/seat_model.dart';
import 'package:tola/services/db.dart';

import '../constants.dart';

Iterable<int> getRange(int start, int finish) sync* {
  for (int i = start; i <= finish; i++) {
    yield i;
  }
}

getRowLabels(int n) {
  List y = [];
  final numbers = getRange(1, 15);
  for (int val in numbers) {
    int x = 4 * val - n;
    y.add(x);
  }
  return y;
}

class SeatSelection extends StatefulWidget {
  final List firstColumnLabels = getRowLabels(0);
  final secondColumnLabels = getRowLabels(1);
  final thirdColumnLabels = getRowLabels(2);
  final fourthColumnLabels = getRowLabels(3);

  @override
  _SeatSelectionState createState() => _SeatSelectionState();
}

class _SeatSelectionState extends State<SeatSelection> {
  List<Seat> _seats = [];

//columns to hold seats from firestore
  List<Seat> _columnOneSeats = [];
  List<Seat> _columnTwoSeats = [];
  List<Seat> _columnThreeSeats = [];
  List<Seat> _columnFourSeats = [];

  @override
  void initState() {
    super.initState();
    _setupSeats();
  }

  _setupSeats() async {
    List<Seat> seats = await DatabaseService.getSeats('0qGqDjbHNknhlJIVit3e');
    setState(() {
      _seats = seats;
    });
  }

  @override
  Widget build(BuildContext context) {
    _seats
        .forEach((seat) => print('firestore seat labels: ${seat.seatNumber}'));

    _seats.forEach((seat) =>
    {
      if (widget.firstColumnLabels.contains(seat.seatNumber))
        {_columnOneSeats.add(seat)}
      else
        if (widget.secondColumnLabels.contains(seat.seatNumber))
          {_columnTwoSeats.add(seat)}
        else
          if (widget.thirdColumnLabels.contains(seat.seatNumber))
            {_columnThreeSeats.add(seat)}
          else
            if (widget.fourthColumnLabels.contains(seat.seatNumber))
              {_columnFourSeats.add(seat)}
    });

    List<Seat> lastRowSeats = [
      _columnFourSeats.last,
      _columnOneSeats.last,
      _columnTwoSeats.last,
      _columnThreeSeats.last,
      _columnFourSeats.elementAt(_columnFourSeats.length - 2)
    ];

    print(_seats);
    //check firestore seat labels
//    _seats.forEach((seat)=> print('firestore seat labels: ${seat.seatNumber}'));

    print('column one seat list ${widget.firstColumnLabels}');
    print('column one firestore seat list: ${_columnOneSeats.length}');
    print('column one firestore last seat: ${_columnOneSeats.last.seatNumber}');
    _columnOneSeats
        .forEach((f) => {print('column one firestore seats: ${f.seatNumber}')});

    print('column two seat list: ${widget.secondColumnLabels}');
    print('column two firestoe seat list: ${_columnTwoSeats.length}');
    print('column two firestore last seat: ${_columnTwoSeats.last.seatNumber}');
    _columnTwoSeats
        .forEach((f) => {print('column two firestore seats: ${f.seatNumber}')});

    print('column three seat list: ${widget.thirdColumnLabels}');
    print('column three firestoe seat list: ${_columnThreeSeats.length}');
    print(
        'column three firestore last seat: ${_columnThreeSeats.last
            .seatNumber}');
    _columnThreeSeats.forEach(
            (f) => {print('column three firestore seats: ${f.seatNumber}')});

    print('column four seat list: ${widget.fourthColumnLabels}');
    print('column four firestoe seat list: ${_columnFourSeats.length}');
    print(
        'column four firestore last seat: ${_columnFourSeats.last.seatNumber}');
    _columnFourSeats.forEach(
            (f) => {print('column four firestore seats: ${f.seatNumber}')});

    print(lastRowSeats);
    return Scaffold(
        backgroundColor: kScaffoldBgColor,
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
                  itemCount: 13,
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, index) {
                    final columnOne = _columnOneSeats[index];
                    final columnTwo = _columnTwoSeats[index];
                    final columnThree = _columnThreeSeats[index];
                    final columnFour = _columnFourSeats[index];
                    return Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 4.0
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          //column one seats
                          Container(
                            width: 52.0,
                            child: SeatItem(
                              seatColor: Colors.blue,
                              seat: columnOne,
                              isSelected: (bool value) {
                                setState(() {
                                  if (value) {
//                                  selectedList.add();
                                  } else {
//                                  selectedList.remove();
                                  }
                                });
                              },
                              seatNumber: columnOne.seatNumber.toString(),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          //column two seats
                          Container(
                            width: 52.0,
                            child: SeatItem(
                              seatColor: Colors.blue,
                              isSelected: (bool value) {
                                setState(() {
                                  if (value) {
//                                  selectedList.add();
                                  } else {
//                                  selectedList.remove();
                                  }
                                });
                              },
                              seatNumber: columnTwo.seatNumber.toString(),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          //middle column seats
                          Container(
                            width: 52.0,
                            child: SeatItem(
                              seatColor: kScaffoldBgColor,
                              seatNumberColor: kScaffoldBgColor,
                              seatNumber: '',
                              isSelected: (bool value) {
                                setState(() {
                                  if (value) {
//                                  selectedList.add();
                                  } else {
//                                  selectedList.remove();
                                  }
                                });
                              },
                            ),
                          ),
                          SizedBox(width: 20.0),
                          //column three seats
                          Container(
                            width: 52.0,
                            child: SeatItem(
                              seatColor: Colors.blue,
                              isSelected: (bool value) {
                                setState(() {
                                  if (value) {
//                                  selectedList.add();
                                  } else {
//                                  selectedList.remove();
                                  }
                                });
                              },
                              seatNumber: columnThree.seatNumber.toString(),
                            ),
                          ),
                          SizedBox(width: 20.0),
                          //column four seats
                          Container(
                            width: 52.0,
                            child: SeatItem(
                              seatColor: Colors.blue,
                              isSelected: (bool value) {
                                setState(() {
                                  if (value) {
//                                  selectedList.add();
                                  } else {
//                                  selectedList.remove();
                                  }
                                });
                              },
                              seatNumber: columnFour.seatNumber.toString(),
                            ),
                          ),
                        ],
                      ),
                    );
                  }),
              SizedBox(
                height: 4.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    //column one seats
                    Container(
                      width: 52.0,
                      child: SeatItem(
                        seatColor: Colors.blue,
                        seat: lastRowSeats[0],
                        isSelected: (bool value) {
                          setState(() {
                            if (value) {
//                                  selectedList.add();
                            } else {
//                                  selectedList.remove();
                            }
                          });
                        },
                        seatNumber: lastRowSeats[0].seatNumber.toString(),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    //column two seats
                    Container(
                      width: 52.0,
                      child: SeatItem(
                        seat: lastRowSeats[1],
                        seatColor: Colors.blue,
                        isSelected: (bool value) {
                          setState(() {
                            if (value) {
//                                  selectedList.add();
                            } else {
//                                  selectedList.remove();
                            }
                          });
                        },
                        seatNumber: lastRowSeats[1].seatNumber.toString(),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    //middle column seats
                    Container(
                      width: 52.0,
                      child: SeatItem(
                        seat: lastRowSeats[1],
                        seatColor: Colors.blue,
                        seatNumberColor: kPrimaryTextColor,
                        seatNumber: lastRowSeats[2].seatNumber.toString(),
                        isSelected: (bool value) {
                          setState(() {
                            if (value) {
//                                  selectedList.add();
                            } else {
//                                  selectedList.remove();
                            }
                          });
                        },
                      ),
                    ),
                    SizedBox(width: 20.0),
                    //column three seats
                    Container(
                      width: 52.0,
                      child: SeatItem(
                        seat: lastRowSeats[3],
                        seatColor: Colors.blue,
                        isSelected: (bool value) {
                          setState(() {
                            if (value) {
//                                  selectedList.add();
                            } else {
//                                  selectedList.remove();
                            }
                          });
                        },
                        seatNumber: lastRowSeats[3].seatNumber.toString(),
                      ),
                    ),
                    SizedBox(width: 20.0),
                    //column four seats
                    Container(
                      width: 52.0,
                      child: SeatItem(
                        seat: lastRowSeats[4],
                        seatColor: Colors.blue,
                        isSelected: (bool value) {
                          setState(() {
                            if (value) {
//                                  selectedList.add();
                            } else {
//                                  selectedList.remove();
                            }
                          });
                        },
                        seatNumber: lastRowSeats[4].seatNumber.toString(),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
            ],
          ),
        ));
  }
}
