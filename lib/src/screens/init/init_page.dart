import 'package:flutter/material.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_bloc.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_event.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_state.dart';
import 'package:sociable/src/blocs/base/bloc_base.dart';
import 'package:sociable/src/blocs/base/bloc_event_state_builder.dart';
import 'package:sociable/src/screens/auth/sign_up.dart';
import 'package:sociable/src/screens/home/home_index.dart';

class InitPage extends StatefulWidget {
  @override
  _InitPageState createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {

  @override
  Widget build(BuildContext context) {
    AuthBloc authBloc = BlocProvider.of<AuthBloc>(context);

    return BlocEventStateBuilder<AuthEvent, AuthState>(
        bloc: authBloc,
        builder: (BuildContext context, AuthState state ){
          authBloc.emitEvent(AuthEventCheckAuthStatus());

          if(state.initializing && !state.verified){
            return Text('Initialization in progress...');
          } else if(state.verified && !state.initializing){
            _redirectToPage(context, MyHomePage());

          } else if(!state.verified && !state.initializing){
            _redirectToPage(context, SignUp());
          }

          return Text('Initialization in progress...');
        }

      );
  }



  void _redirectToPage(BuildContext context, Widget page){
    WidgetsBinding.instance.addPostFrameCallback((_){
      MaterialPageRoute newRoute = MaterialPageRoute(
          builder: (BuildContext context) => page
      );

      Navigator.of(context).pushAndRemoveUntil(newRoute, ModalRoute.withName('/'));
    });
  }
}
