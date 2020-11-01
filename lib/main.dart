import 'package:auto_route/auto_route.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:tola/constants.dart';
import 'package:tola/injection.dart';
import 'package:tola/presentation/routes/app_router.gr.dart';

import 'application/auth/auth_bloc.dart';
import 'application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'application/trips/booking_form/booking_form_bloc.dart';
import 'application/trips/booking_form/passenger_count_bloc/passenger_count_bloc.dart';
import 'application/trips/passenger_details/passenger_details_bloc.dart';
import 'application/trips/trip_watcher/trip_watcher_bloc.dart';
import 'bloc_observer.dart';

Future<void> main() async {
  Bloc.observer = SimpleBlocObserver();
  WidgetsFlutterBinding.ensureInitialized();
  configureInjection(Environment.prod);
  await Firebase.initializeApp();
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    systemNavigationBarColor: Colors.black87, // navigation bar color
    statusBarColor: Colors.grey[50], // status bar color
    statusBarIconBrightness: Brightness.light, // status bar icon color
    systemNavigationBarIconBrightness:
        Brightness.light, // color of navigation controls
  ));
  runApp(Tola());
}

class Tola extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (context) => getIt<SignInFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TripWatcherBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<BookingFormBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PassengerCountBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<PassengerDetailsBloc>(),
        ),
        BlocProvider(
          create: (context) => getIt<TripWatcherBloc>(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        builder: ExtendedNavigator.builder<AppRouter>(
          router: AppRouter(),
          // pass anything navigation related to ExtendedNav instead of MaterialApp
        ),
        title: 'Tola',
        theme: ThemeData(
          appBarTheme: AppBarTheme(
              brightness: Brightness.light,
              color: Colors.grey[50],
              iconTheme: const IconThemeData(color: Colors.black87),
              textTheme: TextTheme(
                  headline6: Theme.of(context)
                      .textTheme
                      .headline6
                      .copyWith(color: Colors.black87))),
//        scaffoldBackgroundColor: ,
          primaryColor: Colors.deepPurple[400],
//        fontFamily: 'InterUI',
          brightness: Brightness.light,
        ),
      ),
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key key, this.title}) : super(key: key);

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
                  color: Colors.deepPurple[400],
                  onPressed: () {},
                  child: const Text(
                    'Book a ride',
                    style: TextStyle(fontSize: 18.0, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
