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
    return ListView(
      scrollDirection: Axis.vertical,
      children: <Widget>[
        OrderCard(),
      ],
    );

  }
}