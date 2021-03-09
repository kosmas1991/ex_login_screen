import 'package:flutter/material.dart';
import '../src/screens/login_screen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      title: 'My app',
      home: LoginScreen(),
    );
  }

}