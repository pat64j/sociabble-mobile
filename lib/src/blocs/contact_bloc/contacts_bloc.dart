import 'package:contacts_service/contacts_service.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sociable/src/blocs/base/bloc_event_state.dart';
import 'package:sociable/src/blocs/contact_bloc/contacts_event.dart';
import 'package:sociable/src/blocs/contact_bloc/contacts_state.dart';

class ContactsBloc extends BlocEventStateBase<ContactsEvent, ContactsState>{

  List<Contact> contacts;

  ContactsBloc({this.contacts}):super(initialState: ContactsState());


  @override
  Stream<ContactsState> eventHandler(ContactsEvent event, ContactsState currentState) async* {
    if(event is ContactsEventRequestPermission){
      yield ContactsState.permissionGranting();
      bool granted = await Permission.contacts.request().isGranted;

      if(granted){
        yield ContactsState.permissionGranted();
        yield ContactsState.loading();

        try{
          var contactsObjs= (await ContactsService.getContacts(withThumbnails: false)).toList();

          this.contacts = contactsObjs;

          // if(this.contacts != null){
          //   for(final contact in contacts){
          //     ContactsService.getAvatar(contact).then((avatar) {
          //       if(avatar == null) return;
          //       contact.avatar = avatar;
          //     });
          //   }
          //
          //   // yield ContactsState.allLoaded();
          // }

          if(contacts.length >0) yield ContactsState.allLoaded();

        }catch(e){
          print(e.toString());
          yield ContactsState.loadingFailure();
        }
      }

      if(!granted){
        yield ContactsState.permissionGrantingFailure();
      }


    }

  }}