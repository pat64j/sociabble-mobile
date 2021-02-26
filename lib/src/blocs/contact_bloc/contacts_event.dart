import 'package:sociable/src/blocs/base/bloc_event_state.dart';

abstract class ContactsEvent extends BlocEvent{
  ContactsEvent();
}

class ContactsEventRequestPermission extends ContactsEvent{}

class ContactsEventLoadAll extends ContactsEvent{}