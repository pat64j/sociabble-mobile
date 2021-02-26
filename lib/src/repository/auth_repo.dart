import 'package:dio/dio.dart';
import 'package:sociable/src/injectors/injector_provider.dart';
import 'package:sociable/src/models/auth.dart';
import 'package:sociable/src/models/user.dart';
import 'package:sociable/src/services/auth_service.dart';
import 'package:sociable/src/services/storage_service.dart';

class AuthRepo{
  final AuthService service = inject<AuthService>();

  Future<bool> sendVerificationCode(User user) async{
    bool res = false;

    try{
      res = await this.service.sendCode(user);
    }catch(e){
      print(e.toString());
      return res;
    }

    return res;
  }


  Future<bool> verifyCode(User user) async{
    Response res;
    AuthModel tokens;
    bool success = false;

    try{
      res = await this.service.verifyUser(user);
      final StoreSecure storeSecure = StoreSecure();
      tokens = AuthModel.fromJSON(res.data);
      bool accessTokenStored = await storeSecure.writeSecureData("access_token", tokens.accessToken);
      bool refreshTokenStored = await storeSecure.writeSecureData("refresh_token", tokens.refreshToken);
      bool isVerified = await storeSecure.writeSecureData("is_verified", "yes");

      accessTokenStored && refreshTokenStored && isVerified ? success = true : success = false;

    }catch(e){
      print(e.toString());
      success = false;
    }

    return success;
  }


}