import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/trips/booking_form/booking_form_bloc.dart';
import 'package:tola/presentation/core/static_data/towns.dart';

import '../../../constants.dart';
import '../../../injection.dart';
import 'departure_city_search.dart';

class DestinationCitySearch extends StatefulWidget {
  @override
  _DestinationCitySearchState createState() => _DestinationCitySearchState();
}

class _DestinationCitySearchState extends State<DestinationCitySearch> {
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
        body: BlocProvider(
          create: (context) => getIt<BookingFormBloc>(),
          child: Column(
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
                        context.bloc<BookingFormBloc>().add(
                            BookingFormEvent.destinationTownFieldChanged(
                                filteredTowns[index].town.toString()));
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
                                  style: Theme.of(context).textTheme.bodyText2,
                                ),
                                const Spacer(),
                                Text(
                                  filteredTowns[index].province.toString(),
                                  style: Theme.of(context).textTheme.bodyText2,
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
      ),
    );
  }
}
