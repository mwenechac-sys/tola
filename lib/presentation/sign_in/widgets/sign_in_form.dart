import 'package:firebase_dynamic_links/firebase_dynamic_links.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tola/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:tola/presentation/core/widgets/submit_button.dart';

import '../../../injection.dart';

class SignInForm extends StatefulWidget {
  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  String email = '';

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignInFormBloc, SignInFormState>(
      listener: (context, state) {
        state.authFailureOrSuccessOption.fold(
            () => {},
            (either) => either.fold((failure) {
                  FlushbarHelper.createError(
                          message: failure.map(
                              cancelledByUser: (_) => 'Cancelled',
                              serverError: (_) => 'Server error',
                              emailAlreadyInUse: (_) => 'Email already in use',
                              invalidEmailAndPasswordCombination: (_) =>
                                  'Invalid email and password combination'))
                      .show(context);
                }, (r) => null));
      },
      builder: (context, state) {
        return Form(
          autovalidate: state.showErrorMessages,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What\'s your email address?',
                    style: Theme.of(context).textTheme.headline6),
                const SizedBox(
                  height: 20.0,
                ),
                TextFormField(
                  autofocus: true,
                  decoration: const InputDecoration(
                      filled: true, hintText: 'Email address'),
                  onChanged: (value) {
                    context
                        .bloc<SignInFormBloc>()
                        .add(SignInFormEvent.emailChanged(value));
                    email = value;
                  },
                  validator: (_) => context
                      .bloc<SignInFormBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                          (f) => f.maybeMap(
                              invalidEmail: (_) => 'Invalid email',
                              orElse: () => null),
                          (_) => null),
                ),
                const SizedBox(
                  height: 12.0,
                ),
                SubmitButton(
                    title: 'continue',
                    function: () => context.bloc<SignInFormBloc>().add(
                          const SignInFormEvent
                              .continueWithEmailButtonPressed(),
                        ))
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final _bloc = getIt<SignInFormBloc>();
    _bloc.add(SignInFormEvent.dynamicLinkPressed(email));
  }
}

// class SubmitButton extends StatelessWidget {
//   const SubmitButton({
//     Key key,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return ButtonTheme(
//       minWidth: double.infinity,
//       height: 50.0,
//       child: FlatButton(
//         clipBehavior: Clip.antiAlias,
//         color: kBottomContainerColour,
//         onPressed: () {
//           context.bloc<SignInFormBloc>().add(
//                 const SignInFormEvent
//                     .continueWithEmailButtonPressed(),
//               );
//         },
//         child: const Text(
//           'Continue',
//           style: TextStyle(fontSize: 18.0, color: Colors.black87),
//         ),
//       ),
//     );
//   }
// }
