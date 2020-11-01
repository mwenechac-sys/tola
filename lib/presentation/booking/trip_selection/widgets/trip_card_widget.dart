import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tola/domain/trips/trip.dart';
import 'package:tola/presentation/routes/app_router.gr.dart';

import '../../../../constants.dart';

class TripCardWidget extends StatelessWidget {
  final Trip trip;

  const TripCardWidget(this.trip);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => ExtendedNavigator.of(context).push(Routes.tripDetailsPage,
          arguments: TripDetailsPageArguments(trip: trip)),
      child: Card(
        color: kTolaDarkGrey,
        elevation: 3.0,
        margin: const EdgeInsets.all(12.0),
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Text('HIGER', style: kCardTextStyleNormal),
                  Flexible(
                    child: Text(
                      'Vendor'.toString().toUpperCase(),
                      style: kCardTextStyleNormal,
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: kTolaLightGrey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          trip.departureTown.toUpperCase(),
                          style: kCardTextStyleNormal,
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '${DateFormat.jm().format(trip.departureTime)}',
                          style: kCardTextStyleBold,
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '${DateFormat('dd/MM/yyyy').format(trip.departureTime)}',
                          style: kCardTextStyleBold,
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Container(
                          decoration: const BoxDecoration(
                              border: Border(
                                  bottom: BorderSide(color: kTolaDarkGrey))),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              const Icon(
                                Icons.location_on,
                                size: 18.0,
                                color: Colors.amber,
                              ),
                              const SizedBox(
                                width: 48.0,
                              ),
                              Icon(
                                FontAwesomeIcons.bus,
                                color: Colors.grey[500],
                              ),
                              const SizedBox(
                                width: 48.0,
                              ),
                              const Icon(
                                Icons.location_on,
                                size: 18.0,
                                color: Colors.amber,
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          trip.destinationTown.toUpperCase(),
                          style: kCardTextStyleNormal,
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '${DateFormat.jm().format(trip.arrivalTime)}',
                          style: kCardTextStyleBold,
                        ),
                        const SizedBox(
                          height: 2.0,
                        ),
                        Text(
                          '${DateFormat('dd/MM/yyyy').format(trip.arrivalTime)}',
                          style: kCardTextStyleBold,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              alignment: Alignment.bottomRight,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RichText(
                  text: TextSpan(children: <TextSpan>[
                    const TextSpan(
                      text: 'PRICE: ',
                      style: kCardTextStyleNormal,
                    ),
                    TextSpan(
                      text: 'K ${trip.tripFare.toString()}',
                      style: kCardTextStyleBold,
                    )
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
