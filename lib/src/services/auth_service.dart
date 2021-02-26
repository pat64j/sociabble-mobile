import 'package:dio/dio.dart';
import 'package:sociable/src/injectors/injector_provider.dart';
import 'package:sociable/src/models/user.dart';
import 'package:sociable/src/services/http_client.dart';
import 'package:sociable/src/values/endpoints.dart' as Endpoints;

class AuthService{
  HttpClient client = inject<HttpClient>();

  Future<bool> sendCode(User user) async {
    Response sendCodeResponse;
    final String url = Endpoints.auth.sendCode;

    Map<String, dynamic> usrMap = user.toJson();
    try{
      sendCodeResponse = await client.post(url, body: usrMap);
      print(sendCodeResponse.data);

      if (sendCodeResponse.statusCode == 201){
        return true;
      }
    }catch(e){
      print(e.toString());
      print(sendCodeResponse.data['message']);
      return false;
    }

    return false;
  }


  Future<Response> verifyUser(User user) async {
    Response verifyCodeResponse = Response();
    final String url = Endpoints.auth.verify;

    Map<String, dynamic> usrMap = user.toJson();
    try{
      verifyCodeResponse = await client.post(url, body: usrMap);

      if(verifyCodeResponse.statusCode == 201){
        return verifyCodeResponse;
      }

    }catch(e){
      print(e.toString());
      print(verifyCodeResponse.data['message']);

      throw(e.toString());

    }


    return verifyCodeResponse;
  }
}