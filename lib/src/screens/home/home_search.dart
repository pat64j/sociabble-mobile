import 'package:flutter/material.dart';
import 'package:sociable/src/blocs/base/bloc_base.dart';
import 'package:sociable/src/blocs/base/bloc_event_state_builder.dart';
import 'package:sociable/src/blocs/contact_bloc/contacts_bloc.dart';
import 'package:sociable/src/blocs/contact_bloc/contacts_event.dart';
import 'package:sociable/src/blocs/contact_bloc/contacts_state.dart';
import 'package:sociable/src/values/all_resources.dart';

class SearchContact extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<ContactsBloc>(
      blocBuilder: () => ContactsBloc(),
      child: SafeArea(
        child: Container(
          child: MyChildWidget(),
        ),
      ),
    );
  }
}

class MyChildWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ContactsBloc contactsBloc = BlocProvider.of<ContactsBloc>(context);
    return Container(
      child: BlocEventStateBuilder<ContactsEvent, ContactsState>(
        bloc: contactsBloc,
        builder: (BuildContext context, ContactsState state) {
          print("ENTER BUILDER");
          if(!state.permissionGranted && !state.permissionGranting && !state.permissionGrantingFailure){
            print("SEEK PERMISSION");
            contactsBloc.emitEvent(ContactsEventRequestPermission());
          }

          if (state.loading || state.permissionGranting) {
            print("SEEK PERMISSION");
            return Container(
              child: Center(
                child: Column(
                  children: [CircularProgressIndicator(), Text(R.texts.loadingContacts)],
                ),
              ),
            );
          }

          if (state.permissionGrantingFailure) {
            print("SEEK PERMISSION FAILED");
            return Container(
              child: Center(
                child: Text(R.texts.requiresContactPermission),
              ),
            );
          }

          if (state.loadingFailure) {
            print("CONTACT LOADING FAILURE");
            return Container(
              child: Center(
                child: Text(R.texts.contactsLoadError),
              ),
            );
          }

          List<Widget> _contactPageWidgets = [];

          _contactPageWidgets.add(
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  R.imgs.logo,
                  width: 60,
                ),
                Icon(
                  Icons.shopping_cart,
                  size: 60,
                )
              ],
            ),
          );

          contactsBloc.contacts.length > 0 ? _contactPageWidgets.add(
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                itemBuilder: (context, index) {
                  return ListTile(title: Text(contactsBloc.contacts.elementAt(index).displayName ?? ""));
                },
                itemCount: contactsBloc.contacts.length,
              ),
            ),
          ): _contactPageWidgets.add(
              Container(
                child: Center(
                  child: CircularProgressIndicator(value:20,),
                ),
              )
          );

          return Column(
            children: _contactPageWidgets,
          );
        },
      ),
    );
  }
}
