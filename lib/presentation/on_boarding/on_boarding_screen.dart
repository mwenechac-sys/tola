import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/auth/auth_bloc.dart';
import 'package:tola/presentation/on_boarding/widgets/on_boarding_form.dart';
import 'package:tola/presentation/sign_in/sign_in_screen.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  _OnBoardingScreenState createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {},
      child: BlocBuilder<AuthBloc, AuthState>(
          builder: (BuildContext context, state) {
        if (state is SignInWithEmail) {
          return SignInScreen();
        } else if (state is BookingScreenHome) {
          return OnBoardingWidget();
        }
        return Scaffold(
          body: OnBoardingWidget(),
        );
      }),
    );
  }
}
