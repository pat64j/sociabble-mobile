import 'package:flutter/foundation.dart';
import 'package:sociable/src/blocs/base/bloc_event_state.dart';

class AuthState extends BlocState {
  final bool initializing;
  final bool termsAgreed;
  final bool phoneValid;
  final bool codeSent;
  final bool codeSending;
  final bool codeSendFailed;
  final bool verified;
  final bool verifyFailed;
  final bool isAuthenticated;
  final bool isAuthenticating;
  final bool hasFailed;

  final String name;

  AuthState({
    this.initializing: false,
    this.isAuthenticated: false,
    this.isAuthenticating: false,
    this.termsAgreed: false,
    this.phoneValid: false,
    this.hasFailed: false,
    this.codeSending: false,
    this.codeSent: false,
    this.codeSendFailed: false,
    @required this.verified,
    this.verifyFailed: false,
    this.name: '',
  });

  factory AuthState.init(){
    return AuthState(verified: false, initializing: true);
  }

  factory AuthState.termsAgreed(){
    return AuthState(verified: false, termsAgreed: true);
  }
  factory AuthState.termsDisagreed(){
    return AuthState(verified: false, termsAgreed: false);
  }

  factory AuthState.codeSent() {
    return AuthState(verified: false, codeSent: true);
  }

  factory AuthState.codeSending(String number) {
    return AuthState(verified: false, name: number, codeSending: true, codeSent: false);
  }

  factory AuthState.codeSendFailure(String number) {
    return AuthState(verified: false, name: number, codeSendFailed: true);
  }



  factory AuthState.verified() {
    return AuthState(verified: true);
  }

  factory AuthState.verifying(String number) {
    return AuthState(
      verified: false,
      name: number,
      isAuthenticating: true,
    );
  }

  factory AuthState.verificationFailure() {
    return AuthState(
      verified: false,
      hasFailed: true,
      verifyFailed: true,
    );
  }

  factory AuthState.notAuthenticated() {
    return AuthState(verified: false, initializing: false);
  }

  factory AuthState.authenticated(String name) {
    return AuthState(verified: true, name: name);
  }

  factory AuthState.authenticating() {
    return AuthState(verified: false, isAuthenticating: true);
  }

  factory AuthState.failure() {
    return AuthState(verified: false, hasFailed: true);
  }
}
