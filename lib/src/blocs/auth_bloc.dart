import 'package:rxdart/rxdart.dart';

class AuthFormBloc{
  BehaviorSubject<String> _countryCode = BehaviorSubject<String>();
  BehaviorSubject<String> _phone = BehaviorSubject<String>();
  BehaviorSubject<String> _code = BehaviorSubject<String>();

  Function(String) get countryCodeDelta => _countryCode.sink.add;
  Function(String) get phoneDelta => _phone.sink.add;
  Function(String) get codeDelta => _code.sink.add;

  Stream<String> get countryCode => _countryCode.stream;
  Stream<String> get phone => _phone.stream;
  Stream<String> get code => _code.stream;



  void dispose(){
    _countryCode?.close();
    _phone?.close();
    _code?.close();
  }



}