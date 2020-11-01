import 'package:flutter/material.dart';
import 'package:tola/domain/trips/trip.dart';
import 'package:tola/presentation/booking/trip_selection/widgets/route_card_widget.dart';

class TripDetailsPage extends StatefulWidget {
  final Trip trip;

  const TripDetailsPage({this.trip});

  @override
  _TripDetailsPageState createState() => _TripDetailsPageState();
}

class _TripDetailsPageState extends State<TripDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: const Text(
          'Select route',
          style: TextStyle(color: Colors.black87),
        ),
        brightness: Brightness.light,
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Expanded(
              child: ListView.builder(
                  primary: false,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: widget.trip.routes.size,
                  itemBuilder: (context, index) {
                    final route = widget.trip.routes[index];
                    return RouteCardWidget(
                      route: route,
                    );
                  }),
            ),
            // SubmitButton(
            //   title: 'CONTINUE',
            //   function: () => Navigator.push(context,
            //       MaterialPageRoute(builder: (context) => PassengerDetails())),
            // )
          ],
        ),
      ),
    );
  }
}
