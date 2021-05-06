import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          children: <Widget>[
            Container(
              height: 76.0,
              width: 46.0,
              decoration: BoxDecoration(
                border: Border.all(width: 3.0, color: Colors.black54),
                borderRadius: BorderRadius.circular(12.0),
              ),
              child: Column(
                children: <Widget>[
                  InkWell(
                    onTap:(){},
                      child:
                  Icon(Icons.keyboard_arrow_up, color: Colors.black54,),
                  ),
                  Text("0", style: TextStyle(fontSize: 18.0),),
                  InkWell(
                    onTap:(){},
                    child:
                    Icon(Icons.keyboard_arrow_down, color: Colors.black54,),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/fiver.jpg"),
                  fit: BoxFit.cover,
                ),
                borderRadius: BorderRadius.circular(40.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    offset: Offset(0.0, 6.0),
                  ),
                ]
              ),
            ),
          ],
        ),
      ),
    );
  }
}