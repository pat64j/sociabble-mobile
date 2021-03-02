import 'package:flutter/material.dart';
import 'package:sociable/src/blocs/app_init_bloc/app_init_bloc.dart';
import 'package:sociable/src/blocs/app_init_bloc/app_init_event.dart';
import 'package:sociable/src/blocs/app_init_bloc/app_init_state.dart';
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
  AppInitializationBloc initBloc;

  @override
  void initState() {
    super.initState();

    initBloc = AppInitializationBloc();
    initBloc.emitEvent(AppInitializationEvent());
  }

  @override
  void dispose() {
    initBloc?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return BlocEventStateBuilder<AppInitializationEvent, AppInitializationState>(
        bloc: initBloc,
        builder: (BuildContext context, AppInitializationState state ){
          print("IN BUILDER");
          print(initBloc.isVerified);

          if (state.isInitialized){
            print("INSIDE......!!!");

            if(initBloc.isVerified){
              print("WOWWOOOOOOOOOOOOOOO......!!!");
              WidgetsBinding.instance.addPostFrameCallback((_){
                Navigator.pushReplacementNamed(context, '/home');
              });
            }
            if(!initBloc.isVerified){
              print("XOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXOXO");
              WidgetsBinding.instance.addPostFrameCallback((_){
                Navigator.pushReplacementNamed(context, '/sign_up');
              });

            }
          }

          return Scaffold(
            body: Container(
              child: Center(
                child: CircularProgressIndicator(),
              ),
            ),
          );
        }

      );
  }



  // void _redirectToPage(BuildContext context, Widget page){
  //   WidgetsBinding.instance.addPostFrameCallback((_){
  //     MaterialPageRoute newRoute = MaterialPageRoute(
  //         builder: (BuildContext context) => page
  //     );
  //
  //     Navigator.of(context).pushReplacement(page);
  //   });
  // }
}
