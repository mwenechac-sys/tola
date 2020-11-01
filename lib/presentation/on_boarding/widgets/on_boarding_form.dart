import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tola/application/auth/auth_bloc.dart';
import 'package:tola/application/auth/sign_in_form/sign_in_form_bloc.dart';

import '../../../injection.dart';

class OnBoardingWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<SignInFormBloc>(),
      child: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/onboarding.jpg'),
                  fit: BoxFit.cover),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [
                    Colors.black.withOpacity(.8),
                    Colors.black.withOpacity(.1)
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                  tileMode: TileMode.repeated,
                  stops: [0.4, 0.9]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(64.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(),
                Material(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Text('Tola',
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              color: Colors.white.withOpacity(0.9))),
                      Text(
                        'See you soon!',
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            .apply(color: Colors.white70),
                      )
                    ],
                  ),
                ),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      width: double.infinity,
                      child: ButtonTheme(
                        height: 50.0,
                        child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              context.bloc<SignInFormBloc>().add(
                                  const SignInFormEvent
                                      .signInWithGooglePressed());
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  Container(
                                      height: 20.0,
                                      width: 20.0,
                                      child: Image.asset(
                                          'assets/images/google-icon.png')),
                                  const Text(
                                    'Google',
                                    style: TextStyle(
                                        color: Colors.black87,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.0),
                                  ),
                                  Container()
                                ],
                              ),
                            )),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: ButtonTheme(
                        height: 50.0,
                        child: OutlineButton(
                            color: Colors.white70,
                            onPressed: () {
                              context.bloc<AuthBloc>().add(const AuthEvent
                                  .signInWithEmailButtonPressed());
                            },
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            borderSide: const BorderSide(
                                color: Colors.white70, width: .2),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Icon(
                                    FontAwesomeIcons.solidEnvelope,
                                    color: Colors.white70,
                                    size: 18.0,
                                  ),
                                  const Text(
                                    'Sign In with Email',
                                    style: TextStyle(
                                        color: Colors.white70,
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16.0),
                                  ),
                                  Container()
                                ],
                              ),
                            )),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
