import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends  State<LoginPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
        gradient: LinearGradient(
        begin: Alignment.topCenter,
        colors: [
        Colors.orange[900],
        Colors.orange[800],
        Colors.orange[400]
        ]
      ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
            padding: EdgeInsets.all(20),
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Login", style: TextStyle(color: Colors.white, fontSize: 45),),
              SizedBox(height: 10,),
              Text("Hi There, Welcome Back", style: TextStyle(color: Colors.white, fontSize: 15),),

          ],
            )
            ),
            SizedBox(height: 30,),
            Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(70), topRight: Radius.circular(70)),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 62.0,),
                      Container(
                        padding: EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [BoxShadow(
                            color: Color.fromRGBO(225, 95, 27, .3),
                            blurRadius: 30,
                            offset: Offset(0,10)
                          )]
                        ),
                        child: Column(
                          children: <Widget> [
                            Container(
                              decoration: BoxDecoration(
                                border: Border(bottom: BorderSide(color: Colors.blueGrey[200]))
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  hintText: "Username or Email",
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ]
                  ),
                ),
            ),
            ),
          ],
      ),
      ),
    );
  }
}