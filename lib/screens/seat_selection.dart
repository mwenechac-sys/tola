import 'package:flutter/material.dart';
import 'package:tola/tola_bust_seat_icons.dart';

import '../constants.dart';

abstract class ListItem {}

class Seat implements ListItem {}

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
  @override
  Widget build(BuildContext context) {
    print('list is ${widget.firstRowLabels}');
    print('list is ${widget.secondRowLabels}');
    print('list is ${widget.thirdRowLabels}');
    print('list is ${widget.fourthRowLabels}');
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          child: Icon(Icons.close),
          onTap: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: Colors.white,
        title: Text('Seat selection'),
      ),
      body: ListView.builder(
          itemCount: 14,
          itemBuilder: (BuildContext context, index) {
            final rowOne = widget.firstRowLabels[index];
            final rowTwo = widget.secondRowLabels[index];
            final rowThree = widget.thirdRowLabels[index];
            final rowFour = widget.fourthRowLabels[index];
            int lastIndexPosition = 13;
            return Row(
              children: <Widget>[
                GestureDetector(
                  onTap: () => {print(widget.firstRowLabels[index])},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        TolaBustSeat.bus_seat,
                        color: Colors.blue[400],
                        size: 48,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        rowOne.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.0),
                GestureDetector(
                  onTap: () => {print(widget.secondRowLabels[index])},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        TolaBustSeat.bus_seat,
                        color: Colors.blue[400],
                        size: kSeatIconSize,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        rowTwo.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.0),
                GestureDetector(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        TolaBustSeat.bus_seat,
                        color: index == lastIndexPosition
                            ? Colors.blue[400]
                            : kInvisibleSeatColor,
                        size: kSeatIconSize,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        index == lastIndexPosition
                            ? (rowTwo + 1).toString()
                            : rowFour.toString(),
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: index == lastIndexPosition
                              ? kPrimaryTextColor
                              : kInvisibleSeatColor,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.0),
                GestureDetector(
                  onTap: () => {print(widget.thirdRowLabels[index])},
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        TolaBustSeat.bus_seat,
                        color: Colors.blue[400],
                        size: kSeatIconSize,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        index == lastIndexPosition
                            ? (widget.thirdRowLabels[index] + 1).toString()
                            : rowThree.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 30.0),
                GestureDetector(
                  onTap: () => {
                    index == lastIndexPosition
                        ? print(rowFour + 1)
                        : print(rowFour)
                  },
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        TolaBustSeat.bus_seat,
                        color: Colors.blue[400],
                        size: kSeatIconSize,
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Text(
                        index == lastIndexPosition
                            ? (rowFour + 1).toString()
                            : rowFour.toString(),
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }),
    );
  }
}
