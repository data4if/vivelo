part of 'sign_in_form_bloc.dart';

@freezed
class SignInFormEvent with _$SignInFormEvent {
  // Login Events
  const factory SignInFormEvent.emailChanged(String emailString) = EmailChanged;
  const factory SignInFormEvent.passwordChanged(String passwordString) =
      PasswordChanged;
  // Pertenece al bloc de registro
  const factory SignInFormEvent.registerWithEmailAndPasswordPressed() =
      RegisterWithEmailAndPasswordPressed;
  // Se deben generar los diferentes eventos de registro, dividir en tres.
  const factory SignInFormEvent.signInWithEmailAndPasswordPressed() =
      SignInWithEmailAndPasswordPressed;
  const factory SignInFormEvent.signInWithGooglePressed() =
      SignInWithGooglePressed;
  const factory SignInFormEvent.signInWhitFacebookPressed() =
      SignInWithFacebookPressed;
  const factory SignInFormEvent.signInWhitAppleIdPressed() =
      signInWhitAppleIdPressed;
}
