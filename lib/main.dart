import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tola/constants.dart';
import 'package:tola/screens/booking_screen.dart';

void main() => runApp(Tola());

class Tola extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tola',
      theme: ThemeData(
//        scaffoldBackgroundColor: ,
        primaryColor: Colors.deepPurple[400],
        primaryColorDark: Colors.amber[600],
        primaryColorLight: Colors.amber[200],
//        fontFamily: 'InterUI',
        brightness: Brightness.light,

        textTheme: TextTheme(
          title: TextStyle(
            fontSize: 20.0,
            color: kPrimaryTextColor,
          ),
          body1: TextStyle(
            fontSize: 16.0,
            color: kPrimaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          body2: TextStyle(
            fontSize: 14,
            color: kPrimaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          subhead: TextStyle(
            fontSize: 16.0,
            color: kPrimaryTextColor,
            fontWeight: FontWeight.w400,
          ),
          subtitle: TextStyle(
            fontSize: 14.0,
            color: kPrimaryTextColor,
            fontWeight: FontWeight.w500,
          ),
          button: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.w500,
            color: kPrimaryTextColor,
          ),
        ),
      ),
      home: HomeScreen(title: 'Tola'),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kScaffoldBgColor,
      appBar: AppBar(
        elevation: 4.0,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ButtonTheme(
              minWidth: double.infinity,
              height: 56.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32.0),
                child: RaisedButton(
                    clipBehavior: Clip.antiAlias,
                    child: Text(
                      'Book a ride',
                      style: TextStyle(fontSize: 18.0, color: Colors.white),
                    ),
                    color: Colors.deepPurple[400],
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => BookingScreen()));
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
