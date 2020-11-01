import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:tola/presentation/core/widgets/submit_button.dart';

import '../../../constants.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class DateFormatter {
  String formattedDate;
  DateTime dateTime;

  void formatDate(DateTime date) {
    final String setDate = DateFormat.yMMMd().format(date);
    formattedDate = setDate;
    dateTime = date;
  }
}

class _DatePickerState extends State<DatePicker> {
  CalendarController _controller;

  String formattedDate;
  DateTime dateTime;

  @override
  void initState() {
    _controller = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        brightness: Brightness.light,
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Select date',
          style: TextStyle(color: kPrimaryTextColor),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              TableCalendar(
                  locale: 'en_US',
                  startDay: DateTime.now(),
                  calendarStyle: CalendarStyle(
                    todayColor: Colors.purple[400],
                    selectedColor: Theme.of(context).primaryColor,
                  ),
                  calendarController: _controller,
                  headerStyle: const HeaderStyle(formatButtonShowsNext: false),
                  onDaySelected: (date, events) {
                    DateTime newDate =
                        DateTime.parse(DateFormat('yyyy-MM-dd').format(date));

                    dateTime = newDate;
                  }),
              const SizedBox(
                height: 20.0,
              ),
              SubmitButton(
                  title: 'PROCEED',
                  function: () =>
                      Navigator.pop(context, dateTime ?? DateTime.now()))
            ],
          ),
        ),
      ),
    );
  }
}
