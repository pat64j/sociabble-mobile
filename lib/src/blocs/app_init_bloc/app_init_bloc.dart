import 'package:sociable/src/blocs/app_init_bloc/app_init_event.dart';
import 'package:sociable/src/blocs/app_init_bloc/app_init_state.dart';
import 'package:sociable/src/blocs/base/bloc_event_state.dart';

class AppInitializationBloc extends BlocEventStateBase<AppInitializationEvent, AppInitializationState>{

  AppInitializationBloc()
      :super( initialState: AppInitializationState.initialized() );

  @override
  Stream<AppInitializationState> eventHandler(AppInitializationEvent event, AppInitializationState currentState) async* {
    if(!currentState.isInitialized){
      yield AppInitializationState.notInitialized();
    }

    if(event.type == AppInitializationEventType.start){
      for(int progress = 0; progress < 101; progress +=10){
        await Future.delayed(const Duration(seconds: 10));
        yield AppInitializationState.progressing(progress);
      }
    }

    if(event.type == AppInitializationEventType.stop){
      yield AppInitializationState.initialized();
    }
  }




}