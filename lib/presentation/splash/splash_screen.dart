import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/auth/auth_bloc.dart';
import 'package:tola/presentation/routes/app_router.gr.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.map(
          initial: (_) => print('initial'),
          authenticated: (_) =>
              ExtendedNavigator.of(context).replace(Routes.bookingPage),
          unauthenticated: (_) {
            ExtendedNavigator.of(context).replace(Routes.onBoardingScreen);
          },
          signInWithEmail: (_) => (_) => print('signInWithEmail'),
          bookingScreenHome: (_) {},
        );
      },
      child: const Scaffold(
        body: Center(
          child: CircularProgressIndicator(),
        ),
      ),
    );
  }
}
