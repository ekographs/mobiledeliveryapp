import 'package:deliverysystem/src/pages/login_page.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget{
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends  State<RegisterPage>{

  bool _toggleVisibility = true;
  bool _toggleConfirmPVisibility = true;

  Widget _buildEmailTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Email",
        hintStyle: TextStyle(
            color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
    );
  }

  Widget _buildUsernameTextField() {
    return TextFormField(
      decoration: InputDecoration(
        hintText: "Username",
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

  Widget _buildConfirmPasswordTextField(){
    return TextFormField(
      decoration: InputDecoration(
        hintText: " Confirm Password",
        hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18.0),
        suffixIcon: IconButton(
          onPressed: (){
            setState(() {
              _toggleConfirmPVisibility = !_toggleConfirmPVisibility;
            });
          },
          icon:  _toggleConfirmPVisibility? Icon(Icons.visibility_off_outlined) : Icon(Icons.visibility),
        ),
      ),
      obscureText:  _toggleConfirmPVisibility,
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
            Text("Hi There, kindly ", style: TextStyle(color: Colors.black87, fontSize: 18),),
            Text("Register", style: TextStyle(color: Colors.black87, fontSize: 45),),
            SizedBox(height: 30.0,),
            SizedBox(height: 10.0,),
            Card(
              elevation: 7.0,
              child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: <Widget> [
                    _buildEmailTextField(),
                    SizedBox(height: 10.0,),
                    _buildUsernameTextField(),
                    SizedBox(height: 10.0,),
                    _buildPasswordTextField(),
                    SizedBox(height: 10.0,),
                    _buildConfirmPasswordTextField(),

                  ],
                ),
              ),
            ),
            SizedBox(height: 50.0,),
            Container(
              height: 50.0,
              margin: EdgeInsets.symmetric(horizontal: 80),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrange[900]
              ),
              child: Center(
                child: Text("Register", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30.0), ),
              ),
            ),
            Divider(height: 20.0,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text("Already have an account?", style: TextStyle(color: Color(0xFF585757), fontSize: 18,),),
                SizedBox(width: 10.0,),
                GestureDetector(
                    onTap: (){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
                    },
                    child: Text("Login here", style: TextStyle(color: Colors.lightBlue, fontSize: 18,)
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

