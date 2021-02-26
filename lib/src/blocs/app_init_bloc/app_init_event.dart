import 'package:sociable/src/blocs/base/bloc_event_state.dart';

class AppInitializationEvent extends BlocEvent{
  final AppInitializationEventType type;

  AppInitializationEvent({
    this.type: AppInitializationEventType.start,
  }): assert(type != null);

}


enum AppInitializationEventType {
  start,
  stop,
}