import 'package:flutter/material.dart';
import 'package:tola/models/seat_model.dart';

import '../constants.dart';
import '../tola_bust_seat_icons.dart';

class SeatItem extends StatefulWidget {
  final Key key;
  final Seat seat;
  final ValueChanged<bool> onChanged;
  final String seatNumber;
  final Function print;
  final Color reservedSeatColor;
  final Color bookedSeatColor;
  final Color availableSeatColor;
  final Color unAvailableSeatColor;
  final Color seatColor;
  final Color seatNumberColor;
  final bool active;

  SeatItem(
      {this.key,
      this.seat,
        this.onChanged,
      this.seatNumber,
      this.print,
      this.reservedSeatColor,
      this.bookedSeatColor,
      this.availableSeatColor,
        this.unAvailableSeatColor,
        this.seatColor,
        this.seatNumberColor,
        this.active});

  @override
  _SeatItemState createState() => _SeatItemState();
}

class _SeatItemState extends State<SeatItem> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    Color _getColor() {
      Color color;
      if (widget.seat.isSelected) {
        color = kSelectedSeatColour;
      } else if (widget.seat.isAvailable) {
        color = kAvailableSeatColour;
      } else if (widget.seat.isBooked) {
        color = kBookedSeatColour;
      } else if (widget.seat.isReserved) {
        color = kReservedSeatColour;
      }
      return color;
    }

    return InkWell(
      onTap: (!widget.seat.isAvailable)
          ? null
          : () {
        setState(() {
          isSelected = !isSelected;
          widget.seat.isSelected = isSelected;
          widget.onChanged(isSelected);
          _getColor();
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            TolaBustSeat.bus_seat,
            color: _getColor(),
            size: 48,
          ),
          SizedBox(
            height: 5.0,
          ),
          Text(
            widget.seat.seatNumber.toString(),
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14.0,
                color: widget.seatNumberColor),
          ),
        ],
      ),
    );
  }
}
