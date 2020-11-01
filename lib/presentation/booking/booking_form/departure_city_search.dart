import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/presentation/core/static_data/towns.dart';

class DepartureCitySearch extends StatefulWidget {
  @override
  _DepartureCitySearchState createState() => _DepartureCitySearchState();
}

class _DepartureCitySearchState extends State<DepartureCitySearch> {
  final _debouncer = Debouncer(milliseconds: 500);
  List list = [];
  List filteredTowns = [];

  @override
  void initState() {
    super.initState();
    setState(() {
      list = towns;
      filteredTowns = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
          title: TextField(
            onChanged: (string) {
              _debouncer.run(() {
                setState(() {
                  filteredTowns = list
                      .where((u) =>
                  u.town.toLowerCase().contains(string.toLowerCase()) ==
                      true)
                      .toList();
                });
              });
            },
            autofocus: true,
            decoration: const InputDecoration(
              hintText: 'Search location',
              hintStyle: TextStyle(fontSize: 18.0),
              border: InputBorder.none,
            ),
          ),
        ),
        body: Column(
          children: <Widget>[
            const SizedBox(
              height: 8.0,
            ),
            Expanded(
              child: ListView.builder(
                itemCount: filteredTowns.length,
                itemBuilder: (BuildContext context, int index) {
                  return InkWell(
                    onTap: () {
                      Navigator.pop(
                          context, filteredTowns[index].town.toString());
                    },
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 8.0, horizontal: 16.0),
                      child: Container(
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: .2,
                              color: Colors.grey[600],
                            ),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Row(
                            children: <Widget>[
                              const Icon(
                                Icons.location_on,
                                color: Colors.deepPurpleAccent,
                              ),
                              const SizedBox(
                                width: 8.0,
                              ),
                              Text(
                                filteredTowns[index].town.toString(),
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText2,
                              ),
                              const Spacer(),
                              Text(
                                filteredTowns[index].province.toString(),
                                style: Theme
                                    .of(context)
                                    .textTheme
                                    .bodyText2,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Debouncer {
  final int milliseconds;
  VoidCallback action;
  Timer _timer;

  Debouncer({this.milliseconds});

  void run(VoidCallback action) {
    if (null != _timer) {
      _timer.cancel();
    }
    _timer = Timer(Duration(milliseconds: milliseconds), action);
  }
}
