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
  final Color seatColor;
  final Color seatNumberColor;

  SeatItem(
      {this.key,
      this.seat,
      this.isSelected,
      this.seatNumber,
      this.print,
      this.reservedSeatColor,
      this.bookedSeatColor,
      this.availableSeatColor,
        this.unAvailableSeatColor,
        this.seatColor,
        this.seatNumberColor});

  @override
  _SeatItemState createState() => _SeatItemState();
}

class _SeatItemState extends State<SeatItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            TolaBustSeat.bus_seat,
            color: widget.seatColor,
            size: 48,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            widget.seatNumber.toString(),
            style: TextStyle(fontWeight: FontWeight.w600,
                fontSize: 14.0,
                color: widget.seatNumberColor),
          ),
        ],
      ),
    );
  }
}
