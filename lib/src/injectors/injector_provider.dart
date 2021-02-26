
import 'package:get_it/get_it.dart';
import 'package:sociable/src/repository/auth_repo.dart';
import 'package:sociable/src/services/auth_service.dart';
import 'package:sociable/src/services/http_client.dart';

final GetIt inject = GetIt.I;

Future<void> setupInjection() async{
  //Components
  inject.registerSingleton(HttpClient());

  //RPC Services
  inject.registerFactory(() => AuthService());

  //Repository
  inject.registerFactory(() => AuthRepo());
}