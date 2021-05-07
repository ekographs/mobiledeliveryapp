import 'package:deliverysystem/src/pages/login_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//Customized widgets

import '../widget/order_card.dart';

class OrderPage extends StatefulWidget{
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
    title: Text(" Your Orders Cart"),
    centerTitle: true,
    backgroundColor: Colors.orange,
    elevation: 0.0,
    ),

      body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          scrollDirection: Axis.vertical,
          children: <Widget>[
            OrderCard(),
            OrderCard(),
            _BuildCartTotal()
          ],
        ),
    );

  }
  // Building a method for total cart price

Widget _BuildCartTotal(){
    return Container(
      height: 250.0,
      padding: EdgeInsets.only(
        left: 10.0,
        right: 10.0,
      ),
      child: Column(
        children: <Widget>[
          // ListTile(
          //   leading: Text("Cart Total", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
          //   trailing: Text(" 600rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),),
          // ),
          // ListTile(
          //   leading: Text("Cart Total", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
          //   trailing: Text(" 600rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),),
          // ),
          // ListTile(
          //   leading: Text("Cart Total", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blueGrey),),
          //   trailing: Text(" 600rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),),
          // ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Cart Total", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),),
              Text(" 600rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),)
            ],
          ),
          SizedBox(height: 11.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Discount", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),),
              Text(" 10rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),)
            ],
          ),
          SizedBox(height: 11.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("VAT", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.blue),),
              Text(" 50rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),)
            ],
          ),
          Divider(height: 41.0, color: Colors.black54,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text("Sub Total", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.deepOrange),),
              Text(" 640rs", style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.black),)
            ],
          ),
          SizedBox(height: 22.0,),
          GestureDetector(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) => LoginPage()));
            },
            child: Container(
              height: 52.0,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(40.0),
              ),
              child: Center(
                child: Text("Proceed to Checkout",
                  style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold, color: Colors.white ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          )
        ],
      ),
    );
}
}