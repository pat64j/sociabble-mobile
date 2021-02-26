import 'package:flutter/material.dart';
import 'package:sociable/src/blocs/auth_bloc/auth_bloc.dart';
import 'package:sociable/src/blocs/base/bloc_base.dart';
import 'package:sociable/src/screens/auth/sign_up.dart';
import 'package:sociable/src/screens/init/init_page.dart';

import 'values/sociable_theme.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      blocBuilder: ()=> AuthBloc(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: sociableTheme,
        initialRoute: '/',
        routes: {
          '/': (context) => SignUp(),
        },
      ),
    );
  }
}
