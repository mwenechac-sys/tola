import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:states_rebuilder/states_rebuilder.dart';
import 'package:table_calendar/table_calendar.dart';

import 'constants.dart';

class DatePicker extends StatefulWidget {
  @override
  _DatePickerState createState() => _DatePickerState();
}

class DateFormatter {
  String formattedDate;
  DateTime dateTime;

  formatDate(date) {
    String setDate = DateFormat.yMMMd().format(date);
    formattedDate = setDate;
    dateTime = date;
  }
}

class _DatePickerState extends State<DatePicker> {
  CalendarController _controller;

  @override
  void initState() {
    _controller = CalendarController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var now = DateTime.now();
    String currentDate = DateFormat.yMMMd().format(now);

    return Injector(
      inject: [Inject<DateFormatter>(() => DateFormatter())],
      builder: (context) {
        final formatter =
            Injector.getAsReactive<DateFormatter>(context: context);
        return Scaffold(
          appBar: AppBar(
            leading: GestureDetector(
              child: Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            backgroundColor: Colors.white,
            title: Text('Select date'),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: TableCalendar(
                    startDay: DateTime.now(),
                    calendarStyle: CalendarStyle(
                      todayColor: Colors.purple[400],
                      selectedColor: Theme.of(context).primaryColor,
                    ),
                    calendarController: _controller,
                    headerStyle: HeaderStyle(formatButtonShowsNext: false),
                    onDaySelected: (date, events) {
                      formatter.setState((state) => state.formatDate(date));
                    }),
              ),
              Spacer(),
              Column(
                children: <Widget>[
//                  Container(
//                    alignment: Alignment.center,
//                    width: double.infinity,
//                    height: kBottomContainerHeight,
//                    decoration: BoxDecoration(color: Colors.purple[50]),
//                    child: Text(
//                      formatter.state.formattedDate != null
//                          ? formatter.state.formattedDate
//                          : currentDate,
//                      style: TextStyle(
//                          fontWeight: FontWeight.w600, fontSize: 16.0),
//                    ),
//                  ),
                  GestureDetector(
                    onTap: () {
                      print('formated date: ${formatter.state.formattedDate}');
                      Navigator.pop(
                          context,
                          formatter.state.dateTime != null
                              ? formatter.state.dateTime
                              : now);
                    },
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Center(
                        child: Text(
                          'Apply: ' +
                              '${formatter.state.formattedDate != null ? formatter.state.formattedDate : currentDate}',
                          style: kLargeButtonTextStyle,
                        ),
                      ),
                      color: kBottomContainerColour,
                      padding: EdgeInsets.only(bottom: 10.0),
                      width: double.infinity,
                      height: kBottomContainerHeight,
                    ),
                  ),
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
