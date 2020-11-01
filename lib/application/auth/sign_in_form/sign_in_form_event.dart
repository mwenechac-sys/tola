part of 'sign_in_form_bloc.dart';

@freezed
abstract class SignInFormEvent with _$SignInFormEvent {
  // Notice that these events take in "raw" unvalidated Strings
  const factory SignInFormEvent.emailChanged(String emailStr) = EmailChanged;

  const factory SignInFormEvent.passwordChanged(String passwordStr) =
      PasswordChanged;

  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;

  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;

  const factory SignInFormEvent.continueWithEmailButtonPressed() =
      ContinueWithEmailButtonPressed;

  const factory SignInFormEvent.initDynamicLinks(
      String emailStr, String linkStr) = InitDynamicLinks;

  const factory SignInFormEvent.dynamicLinkPressed(String emailStr) =
      DynamicLinkPressed;
}
