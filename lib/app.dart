import 'package:flutter/material.dart';
import 'package:kamar_8c/page/login_page/login_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      title: 'Kamar 8C App',
      routes: {
        LoginScreen.PATH: (context) => LoginScreen(),
      },
      home: LoginScreen(),
    );
  }
}
