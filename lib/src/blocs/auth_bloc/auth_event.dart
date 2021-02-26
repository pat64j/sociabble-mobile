import 'package:sociable/src/blocs/base/bloc_event_state.dart';

abstract class AuthEvent extends BlocEvent {
  final String cCode;
  final String phone;
  final String vCode;

  AuthEvent({this.cCode: "", this.phone:"", this.vCode:""});
}

class AuthEventLogin extends AuthEvent {
  AuthEventLogin({String cCode, String phone}) : super(cCode: cCode, phone: phone);
}

class AuthEventLogout extends AuthEvent {}


//
// New OTP Events
//
class AuthEventCheckAuthStatus extends AuthEvent{}

class AuthEventAgreeTC extends AuthEvent {}

class AuthEventDisagreeTC extends AuthEvent {}

class AuthEventSendVerifyCode extends AuthEvent {
  AuthEventSendVerifyCode({String cCode, String phone }) : super(cCode: cCode, phone: phone);
}

class AuthEventVerifyCode extends AuthEvent{
  AuthEventVerifyCode({String cCode, String phone, String vCode }) : super(cCode: cCode, phone: phone, vCode: vCode);
}
