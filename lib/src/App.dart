import 'package:flutter/material.dart';
import 'homescreen.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Delivery System App",
      theme: ThemeData(
        primaryColor: Colors.blueAccent
      ),
      home: HomeScreen(),
    );
  }

}