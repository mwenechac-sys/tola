import 'package:flutter/material.dart';
import 'package:kt_dart/collection.dart';
import 'package:tola/components/seat_item.dart';
import 'package:tola/models/seat_model.dart';
import 'package:tola/services/db.dart';

import '../../../../constants.dart';
import '../../../../tola_bust_seat_icons.dart';

class SeatSelectionWidget extends StatefulWidget {
  final KtList seats;

  const SeatSelectionWidget({this.seats});

  @override
  _SeatSelectionWidgetState createState() => _SeatSelectionWidgetState();
}

class _SeatSelectionWidgetState extends State<SeatSelectionWidget> {
  Iterable<int> getRange(int start, int finish) sync* {
    for (int i = start; i <= finish; i++) {
      yield i;
    }
  }

  List getRowLabels(int n) {
    final List y = [];
    final numbers = getRange(1, 15);
    for (final int val in numbers) {
      final int x = 4 * val - n;
      y.add(x);
    }
    return y;
  }

  List firstColumnLabels = [];
  List secondColumnLabels = [];
  List thirdColumnLabels = [];
  List fourthColumnLabels = [];

  final int passengerCount = 1;

  List<Seat> _seats = [];

//columns to hold seats from firestore
  final List<Seat> _columnOneSeats = [];
  final List<Seat> _columnTwoSeats = [];
  final List<Seat> _columnThreeSeats = [];
  final List<Seat> _columnFourSeats = [];

  //seat colour variables
  Color _getColor(Seat seat) {
    Color color;
    if (seat.isAvailable) {
      color = kAvailableSeatColour;
    } else if (seat.isBooked) {
      color = kBookedSeatColour;
    } else if (seat.isReserved) {
      color = kReservedSeatColour;
    }
    return color;
  }

  //universal isSelected variable
  bool isSelected = false;

  List<Seat> selectedSeats = [];

  @override
  void initState() {
    super.initState();
    _setupSeats();
    firstColumnLabels = getRowLabels(0);
    secondColumnLabels = getRowLabels(1);
    thirdColumnLabels = getRowLabels(2);
    fourthColumnLabels = getRowLabels(3);
  }

  _setupSeats() async {
    final List<Seat> seats =
        await DatabaseService.getSeats('0qGqDjbHNknhlJIVit3e');
    setState(() {
      _seats = seats;
    });
  }

  @override
  Widget build(BuildContext context) {
    //    print(_seats);
    //check firestore seat labels
//    _seats.forEach((seat)=> print('firestore seat labels: ${seat.seatNumber}'));

//    print('column one seat list ${widget.firstColumnLabels}');
//    print('column one firestore seat list: ${_columnOneSeats.length}');
//    print('column one firestore last seat: ${_columnOneSeats.last.seatNumber}');
//    _columnOneSeats
//        .forEach((f) => {print('column one firestore seats: ${f.seatNumber}')});
//
//    print('column two seat list: ${widget.secondColumnLabels}');
//    print('column two firestoe seat list: ${_columnTwoSeats.length}');
//    print('column two firestore last seat: ${_columnTwoSeats.last.seatNumber}');
//    _columnTwoSeats
//        .forEach((f) => {print('column two firestore seats: ${f.seatNumber}')});
//
//    print('column three seat list: ${widget.thirdColumnLabels}');
//    print('column three firestoe seat list: ${_columnThreeSeats.length}');
//    print(
//        'column three firestore last seat: ${_columnThreeSeats.last.seatNumber}');
//    _columnThreeSeats.forEach(
//        (f) => {print('column three firestore seats: ${f.seatNumber}')});
//
//    print('column four seat list: ${widget.fourthColumnLabels}');
//    print('column four firestoe seat list: ${_columnFourSeats.length}');
//    print(
//        'column four firestore last seat: ${_columnFourSeats.last.seatNumber}');
//    _columnFourSeats.forEach(
//        (f) => {print('column four firestore seats: ${f.seatNumber}')});
    _seats.forEach((seat) => {
          if (firstColumnLabels.contains(seat.seatNumber))
            {_columnOneSeats.add(seat)}
          else if (secondColumnLabels.contains(seat.seatNumber) != null)
            {_columnTwoSeats.add(seat)}
          else if (thirdColumnLabels.contains(seat.seatNumber) != null)
            {_columnThreeSeats.add(seat)}
          else if (fourthColumnLabels.contains(seat.seatNumber) != null)
            {_columnFourSeats.add(seat)}
        });
    //set last row seats
    final List<Seat> lastRowSeats = [
      _columnFourSeats.last,
      _columnOneSeats.last,
      _columnTwoSeats.last,
      _columnThreeSeats.last,
      _columnFourSeats.elementAt(_columnFourSeats.length - 2)
    ];
    return SingleChildScrollView(
      physics: const ScrollPhysics(),
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 32.0,
          ),
          ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 13,
              shrinkWrap: true,
              itemBuilder: (BuildContext context, index) {
                final columnOne = _columnOneSeats[index];
                final columnTwo = _columnTwoSeats[index];
                final columnThree = _columnThreeSeats[index];
                final columnFour = _columnFourSeats[index];

                //get color method for each seat

                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 4.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      //column one seats
                      Container(
                        width: 52.0,
                        child: SeatItem(
                          seat: columnOne,
                          onChanged: (bool value) {
                            print(
                                'tapped seat ${columnOne.seatNumber} is : ${columnOne.isSelected}');
                            setState(() {
                              if (value &&
                                  passengerCount == 1 &&
                                  selectedSeats.length > 1) {
                                columnOne.isSelected = false;
                              } else {}
                              selectedSeats.add(columnOne);
                            });
                            print(
                                'tapped seat ${selectedSeats[0].seatNumber} is now: ${selectedSeats[0].isSelected}');
                          },
                          seatNumber: columnOne.seatNumber.toString(),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      //column two seats
                      Container(
                        width: 52.0,
                        child: SeatItem(
                          seat: columnTwo,
                          onChanged: (bool value) {
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
                      const SizedBox(width: 20.0),
                      //middle column seats
                      Container(
                          width: 52.0,
                          child: Column(
                            children: <Widget>[
                              const Icon(
                                TolaBustSeat.bus_seat,
                                color: kScaffoldBgColor,
                                size: 48,
                              ),
                              const SizedBox(
                                height: 5.0,
                              ),
                              const Text(
                                '',
                              ),
                            ],
                          )),
                      const SizedBox(width: 20.0),
                      //column three seats
                      Container(
                        width: 52.0,
                        child: SeatItem(
                          seat: columnThree,
                          onChanged: (bool value) {
                            setState(() {
                              if (value) {
                                selectedSeats.add(columnThree);
                              } else {
//                                    selectedSeats[0].isSelected = false;
                              }
                            });
                          },
                          seatNumber: columnThree.seatNumber.toString(),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      //column four seats
                      Container(
                        width: 52.0,
                        child: SeatItem(
                          seat: columnFour,
                          onChanged: (bool value) {
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
          const SizedBox(
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
                    seatColor: _getColor(lastRowSeats[0]),
                    seat: lastRowSeats[0],
                    onChanged: (bool value) {
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
                const SizedBox(width: 20.0),
                //column two seats
                Container(
                  width: 52.0,
                  child: SeatItem(
                    seat: lastRowSeats[1],
                    seatColor: _getColor(
                      lastRowSeats[1],
                    ),
                    onChanged: (bool value) {
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
                const SizedBox(width: 20.0),
                //middle column seats
                Container(
                  width: 52.0,
                  child: SeatItem(
                    seat: lastRowSeats[1],
                    seatColor: _getColor(lastRowSeats[2]),
                    seatNumberColor: kPrimaryTextColor,
                    seatNumber: lastRowSeats[2].seatNumber.toString(),
                    onChanged: (bool value) {
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
                const SizedBox(width: 20.0),
                //column three seats
                Container(
                  width: 52.0,
                  child: SeatItem(
                    seat: lastRowSeats[3],
                    seatColor: _getColor(lastRowSeats[3]),
                    onChanged: (bool value) {
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
                const SizedBox(width: 20.0),
                //column four seats
                Container(
                  width: 52.0,
                  child: SeatItem(
                    seat: lastRowSeats[4],
                    seatColor: _getColor(lastRowSeats[4]),
                    onChanged: (bool value) {
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
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          ButtonTheme(
            minWidth: double.infinity,
            height: 56.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 32.0),
              child: RaisedButton(
                clipBehavior: Clip.antiAlias,
                color: Colors.deepPurple[400],
                onPressed: () {
                  // Navigator.push(
                  //     context,
                  //     MaterialPageRoute(
                  //         builder: (context) => PaymentScreen()));
                },
                child: const Text(
                  'Book a ride',
                  style: TextStyle(fontSize: 18.0, color: Colors.white),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
