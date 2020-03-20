import 'package:flutter/material.dart';
import 'package:tola/models/seat_model.dart';

import '../tola_bust_seat_icons.dart';

class SeatItem extends StatefulWidget {
  final Key key;
  final Seat seat;
  final ValueChanged<bool> isSelected;
  final String seatNumber;
  final Function print;
  final Color reservedSeatColor;
  final Color bookedSeatColor;
  final Color availableSeatColor;
  final Color unAvailableSeatColor;

  SeatItem(
      {this.key,
      this.seat,
      this.isSelected,
      this.seatNumber,
      this.print,
      this.reservedSeatColor,
      this.bookedSeatColor,
      this.availableSeatColor,
      this.unAvailableSeatColor});

  @override
  _SeatItemState createState() => _SeatItemState();
}

class _SeatItemState extends State<SeatItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    getColor() {
      Color color = Colors.grey[300];
      if (widget.seat.isReserved) {
        color = Colors.deepPurple[400];
      } else if (widget.seat.isBooked) {
        color = Colors.pinkAccent;
      } else if (isSelected) {
        color = Colors.green[600];
      }
      return color;
    }

    return InkWell(
      onTap: (widget.seat.isBooked || widget.seat.isReserved)
          ? null
          : () {
              setState(() {
                isSelected = !isSelected;
                widget.isSelected(isSelected);
              });
            },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            TolaBustSeat.bus_seat,
            color: getColor(),
            size: 48,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            widget.seatNumber,
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
