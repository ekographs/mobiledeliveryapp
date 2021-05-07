import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends  State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          children: <Widget> [
            Text("Sign In", style: TextStyle(fontSize: 40.0, fontWeight: FontWeight.bold,),),
          ],
        ),
      ),
    );
  }
}