import 'package:sociable/src/blocs/app_init_bloc/app_init_event.dart';
import 'package:sociable/src/blocs/app_init_bloc/app_init_state.dart';
import 'package:sociable/src/blocs/base/bloc_event_state.dart';
import 'package:sociable/src/services/storage_service.dart';

class AppInitializationBloc extends BlocEventStateBase<AppInitializationEvent, AppInitializationState>{

  bool isVerified = false;

  AppInitializationBloc()
      :super( initialState: AppInitializationState.notInitialized());

  @override
  Stream<AppInitializationState> eventHandler(AppInitializationEvent event, AppInitializationState currentState) async* {

    if (!currentState.isInitialized){
      yield AppInitializationState.notInitialized();
    }

    if(event.type == AppInitializationEventType.start){

      yield AppInitializationState.progressing();
      final StoreSecure storeSecure = StoreSecure();
      // await storeSecure.deleteAllSecureData();
      String isVerifiedVal = await storeSecure.readSecureData("is_verified");
      bool isVerified = await storeSecure.dataExists("is_verified");

      if(isVerified && isVerifiedVal == "yes") {
        this.isVerified = true;
        yield AppInitializationState.initialized();
      } else{
        this.isVerified = false;
        yield AppInitializationState.initialized();
      }

    }

    if(event.type == AppInitializationEventType.stop){
      yield AppInitializationState.initialized();
    }
  }




}