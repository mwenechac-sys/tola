import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/auth/auth_bloc.dart';
import 'package:tola/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:tola/presentation/sign_in/widgets/sign_in_form.dart';

import '../../constants.dart';
import '../../injection.dart';

class SignInScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        brightness: Brightness.light,
        leading: GestureDetector(
          onTap: () {
            context
                .bloc<AuthBloc>()
                .add(const AuthEvent.cancelSignInWithEmailButtonPressed());
          },
          child: const Icon(
            Icons.close,
            color: Colors.black,
          ),
        ),
        backgroundColor: kScaffoldBgColor,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: SignInForm(),
      ),
    );
  }
}
