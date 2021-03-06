import 'package:flutter/material.dart';
import '../pages/register_page.dart';

class LoginPage extends StatefulWidget{
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends  State<LoginPage>{

  bool _toggleVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username or Email",
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );
  }
  Widget _buildPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Password",
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toggleVisibility = !_toggleVisibility;
            });
          },
          icon:  _toggleVisibility? Icon(Icons.visibility_off_outlined) : Icon(Icons.visibility),
        ),
      ),
      obscureText:  _toggleVisibility,
    );
  }


  @override
  Widget build(BuildContext context){
    return Scaffold(
      resizeToAvoidBottomInset: false,
     body: Padding(
       padding: EdgeInsets.symmetric(horizontal: 10.0),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: <Widget> [
           Text("Hi There, Welcome Back", style: TextStyle(color: Colors.black87, fontSize: 18),),
           Text("Login", style: TextStyle(color: Colors.black87, fontSize: 45),),
           SizedBox(height: 100.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.end,
             children: <Widget>[
               Text("forgot password?", style: TextStyle(color: Colors.blue, fontSize: 18, fontWeight: FontWeight.bold), ),
             ],
           ),
           SizedBox(height: 10.0,),
           Card(
             elevation: 7.0,
             child: Padding(
               padding: EdgeInsets.all(20.0),
               child: Column(
                 children: <Widget> [
                   _buildEmailTextField(),
                   SizedBox(height: 20.0,),
                   _buildPasswordTextField(),

                 ],
               ),
             ),
           ),
           SizedBox(height: 30.0,),
           Container(
             height: 50.0,
             margin: EdgeInsets.symmetric(horizontal: 80),
             decoration: BoxDecoration(
                 borderRadius: BorderRadius.circular(15),
                 color: Colors.deepOrange[900]
             ),
             child: Center(
               child: Text("Login", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0), ),
             ),
           ),
           Divider(height: 20.0,),
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Text("Don't have an account yet?", style: TextStyle(color: Color(0xFF585757), fontSize: 18,),),
               SizedBox(width: 10.0,),
               GestureDetector(
                 onTap: (){
                   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => RegisterPage()));
                 },
                   child: Text("Sign up here", style: TextStyle(color: Colors.lightBlue, fontSize: 18,)
                     ,)
               ),
             ],
           ),
         ],
       ),
     ),
    );

  }
}

