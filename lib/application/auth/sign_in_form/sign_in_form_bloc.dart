import 'package:dartz/dartz.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:vivelo/domain/auth/auth_failure.dart';
import 'package:vivelo/domain/auth/interface_auth_facade.dart';
import 'package:vivelo/domain/user/email_address.dart';
import 'package:vivelo/domain/user/user_password.dart';

part 'sign_in_form_event.dart';
part 'sign_in_form_state.dart';
part 'sign_in_form_bloc.freezed.dart';

class SignInFormBloc extends Bloc<SignInFormEvent, SignInFormState> {
  // Interface
  final InterfaceAuthFacade _authFacade;
  SignInFormBloc(this._authFacade) : super(SignInFormState._initial());
  // Listener of the state
  //@override
  Stream<SignInFormState> mapEventToState(
    SignInFormEvent event,
  ) async* {
    yield* event.map(
      // Datos de entrada - No reacciona hasta que se presione
      emailChanged: _handleEmailChanged,
      // Datos de entrada - No reacciona hasta que se presione
      passwordChanged: _handlePasswordChanged,
      // Manejar en la logica de registro -> En registro!?
      registerWithEmailAndPasswordPressed: _handleRegisterWithEmailAndPassword,
      // Todas estas permanecen aqui, son parte del inicio de session
      signInWithEmailAndPasswordPressed: _handleSignInWithEmailAndPassword,
      // Registro con identidades generadas
      signInWithGooglePressed: _handleSignInWithGoogle,
    );
  }

  // Maxima astraccion para conectarme con repositorios o servicios
  //Flux
  Stream<SignInFormState> _handleSignInWithEmailAndPassword(e) async* {
    yield* _performActionWithAuthFacadeOnlySignIn(
        _authFacade.signInWithEmailAndPassword);
  }

  Stream<SignInFormState> _handleEmailChanged(EmailChanged e) async* {
    yield state.copyWith(
        emailAddress: EmailAddress(e.emailString),
        authFailureOrSuccessOption: none());
  }

  Stream<SignInFormState> _handlePasswordChanged(PasswordChanged e) async* {
    yield state.copyWith(
        password: Password(e.passwordString),
        authFailureOrSuccessOption: none());
  }

// Este metodo debe ser movido para register_form_bloc
  Stream<SignInFormState> _handleRegisterWithEmailAndPassword(
      RegisterWithEmailAndPasswordPressed e) async* {
    // Declaracion de variables.
    // Validacion de valores
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    // Validacion por contrato astracto
    if (isPasswordValid && isEmailValid) {
      // Invocar
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      // Utilizando el contrato
      failureOrSuccess = await _authFacade.registerWithEmailAndPassword(
          emailAddress: state.emailAddress, password: state.password);
      // Actualizar el estado
    }
    // Ver que paso aqui - revisar bloc de fuente
    failureOrSuccess = left(AuthFailure.serverError());
    // Investiga y leer el codigo con detenimiento
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}

Stream<SignInFormState> _handleSignInWithGoogle(
    SignInWithGooglePressed e) async* {
  yield state.copyWith(isSubmitting: true, authFailureOrSuccessOption: none());
  final failureOrSuccess = await _authFacade.signInWithGoogle();
  yield state.copyWith(
      isSubmitting: false, authFailureOrSuccessOption: Some(failureOrSuccess));

  // METODO GLOBAL DE HIGH ORDER FUNCTIONS
  // No voy a utilizar las funcion de alto nivel, por que mi proceso de validacion
  // Es radicalmente diferente al proceso creado para fomutur, queda como experiencia
  Stream<SignInFormState> _performActionWithAuthFacadeOnlySignIn(
    Future<Either<AuthFailure, Unit>> Function({
      required EmailAddress emailAddress,
      required Password password,
    }) forwardCall,
  ) async* {
    // VALIDACION DE EMAIL Y CONTRASENA
    //Option<Either<AuthFailure, Unit>>
    // failureOrSuccess;
    Either<AuthFailure, Unit> failureOrSuccess;
    final isEmailValid = state.emailAddress.isValid();
    final isPasswordValid = state.password.isValid();
    // Insertar
    if (isEmailValid && isPasswordValid) {
      // Update state based on result
      yield state.copyWith(
          isSubmitting: true, authFailureOrSuccessOption: none());
      // Yield
    }
    failureOrSuccess = await forwardCall(
        emailAddress: state.emailAddress, password: state.password);
    // RETORNAR ACTUALIZACION AL ESTADO DE LOS DOS VALIDATE OBJECT
    // QUE POR LOS MOMENTOS DEFINEN AL USUARIO
    yield state.copyWith(
        isSubmitting: false,
        showErrorMessages: true,
        authFailureOrSuccessOption: optionOf(failureOrSuccess));
  }
}
