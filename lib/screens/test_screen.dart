import 'package:flutter/material.dart';
import 'package:tola/models/seat_model.dart';
import 'package:tola/services/db.dart';

class TestScreen extends StatefulWidget {
  @override
  _TestScreenState createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  List<Seat> _seats = [];

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
    print(_seats);
    return Scaffold(
      appBar: AppBar(
        title: Text('Title'),
      ),
    );
  }
}
