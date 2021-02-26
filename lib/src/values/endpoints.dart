import 'all_resources.dart';

class _Auth{
  final sendCode = R.texts.baseURL + '/users/send_verification';
  final verify = R.texts.baseURL + '/users/verify';
  final sendReset = R.texts.baseURL + '/reset';
}
class _User{
  final register = R.texts.baseURL + '/register';
}

final auth = _Auth();
final user = _User();