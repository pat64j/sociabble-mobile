import 'package:sociable/src/blocs/auth_bloc/auth_event.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_state.dart';
import 'package:sociable/src/blocs/base/bloc_event_state.dart';
import 'package:sociable/src/models/user.dart';
import 'package:sociable/src/repository/auth_repo.dart';
import 'package:sociable/src/services/storage_service.dart';

class AuthBloc extends BlocEventStateBase<AuthEvent, AuthState>{

  AuthBloc(): super( initialState: AuthState.notAuthenticated());


  @override
  Stream<AuthState> eventHandler(AuthEvent event, AuthState currentState) async* {

    if(event is AuthEventCheckAuthStatus){
      yield AuthState.init();
      final StoreSecure storeSecure = StoreSecure();
      String isVerified = await storeSecure.readSecureData("is_verified");

      if(isVerified == "yes") yield AuthState.verified();

      if(isVerified != "yes") yield AuthState.notAuthenticated();

    }

    if(event is AuthEventAgreeTC){
      yield AuthState.termsAgreed();
    }
    if(event is AuthEventDisagreeTC){
      yield AuthState.termsDisagreed();
    }
    if(event is AuthEventSendVerifyCode){
      yield AuthState.codeSending(event.cCode+event.phone);
      User usr = User(countryCode: event.cCode, phone: event.phone, fullPhone: event.cCode + event.phone);
      AuthRepo rep = AuthRepo();
      bool codeIsSent = false;
      codeIsSent = await rep.sendVerificationCode(usr);
      if(codeIsSent){
        yield AuthState.codeSent();
      } else{
        yield AuthState.codeSendFailure(event.cCode+event.phone);
      }
    }
    
    if(event is AuthEventVerifyCode){
      yield AuthState.verifying(event.cCode+event.phone);

      User usr = User(countryCode: event.cCode, phone: event.phone, fullPhone: event.cCode + event.phone, code: event.vCode);

      AuthRepo repo = AuthRepo();
      
      bool verifySuccess = await repo.verifyCode(usr);
      
      if(verifySuccess){
        yield AuthState.verified();
      }
      if(!verifySuccess){
        yield AuthState.failure();
      }
      
    }


    if(event is AuthEventLogout){
      yield AuthState.notAuthenticated();
    }

  }

}