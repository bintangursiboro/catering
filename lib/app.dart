import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kamar_8c/page/example/example_notification.dart';
import 'package:kamar_8c/page/login_page/bloc/login_screen_bloc.dart';
import 'package:kamar_8c/page/login_page/login_screen.dart';
import 'package:kamar_8c/page/menu_page/menu_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Kamar 8C App',
      routes: {
        LoginScreen.PATH: (context) => LoginScreen(),
        MenuScreen.PATH: (context) => MenuScreen(),
      },
      home: MultiBlocProvider(
        providers: <BlocProvider>[
          BlocProvider<LoginScreenBloc>(
            builder: (BuildContext context) => LoginScreenBloc(),
          ),
        ],
        child: ExampleNotification(),
      ),
    );
  }
}
