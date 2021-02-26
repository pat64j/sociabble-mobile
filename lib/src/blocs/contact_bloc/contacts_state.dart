import 'package:sociable/src/blocs/base/bloc_event_state.dart';

class ContactsState extends BlocState {
  final bool loaded;
  final bool loading;
  final bool loadingFailure;
  final bool permissionGranted;
  final bool permissionGranting;
  final bool permissionGrantingFailure;

  ContactsState({
    this.loaded: false,
    this.loading: false,
    this.loadingFailure: false,
    this.permissionGranting: false,
    this.permissionGranted: false,
    this.permissionGrantingFailure: false,
  });

  factory ContactsState.permissionGranting() {
    return ContactsState(loaded: false, loading: true, permissionGranting: true, permissionGranted: false);
  }

  factory ContactsState.permissionGrantingFailure() {
    return ContactsState(
      loaded: false,
      loading: false,
      permissionGranting: false,
      permissionGranted: false,
      permissionGrantingFailure: true,
    );
  }

  factory ContactsState.permissionGranted() {
    return ContactsState(loaded: false, loading: true, permissionGranting: false, permissionGranted: true);
  }

  factory ContactsState.allLoaded() {
    return ContactsState(loaded: true);
  }

  factory ContactsState.loadingFailure() {
    return ContactsState(loaded: false, loadingFailure: true);
  }

  factory ContactsState.loading() {
    return ContactsState(loaded: false, loading: true);
  }
}
