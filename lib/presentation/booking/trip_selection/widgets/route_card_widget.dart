import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';
import 'package:tola/domain/trips/route.dart';
import 'package:tola/presentation/routes/app_router.gr.dart';

import '../../../../constants.dart';

class RouteCardWidget extends StatefulWidget {
  final InnerRoute route;
  final ValueChanged<bool> isSelected;

  final Key key;

  const RouteCardWidget({this.route, this.isSelected, this.key});

  @override
  _RouteCardWidgetState createState() => _RouteCardWidgetState();
}

class _RouteCardWidgetState extends State<RouteCardWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () =>
          ExtendedNavigator.of(context).push(Routes.passengerDetailsPage),
      child: Card(
        color: kTolaDarkGrey,
        elevation: 3.0,
        child: Stack(
          children: [
            Column(
              children: <Widget>[
                Container(
                  alignment: Alignment.bottomRight,
                  child: const Padding(
                    padding: EdgeInsets.all(12.0),
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
                              widget.route.departureTown.toUpperCase(),
                              style: kCardTextStyleNormal,
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              '${DateFormat.jm().format(widget.route.arrivalTime)}',
                              style: kCardTextStyleBold,
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              '${DateFormat('dd/MM/yyyy').format(widget.route.departureTime)}',
                              style: kCardTextStyleBold,
                            ),
                          ],
                        ),
                        Column(
                          children: <Widget>[
                            Container(
                              decoration: const BoxDecoration(
                                  border: Border(
                                      bottom:
                                          BorderSide(color: kTolaDarkGrey))),
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
                              widget.route.destinationTown.toUpperCase(),
                              style: kCardTextStyleNormal,
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              '${DateFormat.jm().format(widget.route.arrivalTime)}',
                              style: kCardTextStyleBold,
                            ),
                            const SizedBox(
                              height: 2.0,
                            ),
                            Text(
                              '${DateFormat('dd/MM/yyyy').format(widget.route.arrivalTime)}',
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
                          text: 'K ${widget.route.routeFare.toString()}',
                          style: kCardTextStyleBold,
                        )
                      ]),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
