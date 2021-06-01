import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                boxShadow:[
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 6.0,
                    offset: Offset(0.0, 6.0),
                  ),
                ],
              ),
            ),
            SizedBox(width: 20.0,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Kfc Fiver Chicken", style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),),
                SizedBox(height: 6.0,),
                Text("\u20A8 300", style: TextStyle(color: Colors.deepOrange, fontSize: 16.0),),
                SizedBox(height: 6.0,),
                Container(
                  height: 24.0,
                  width: 120.0,
                  // color: Colors.cyan,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text("Zinger Meal", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),),
                            SizedBox(width: 6.0,),
                            Text("x", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text("Zinger Meal", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),),
                            SizedBox(width: 6.0,),
                            Text("x", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Row(
                          children: <Widget>[
                            Text("Zinger Meal", style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold),),
                            SizedBox(width: 6.0,),
                            InkWell(
                              onTap: (){},
                                child: Text("x",
                                  style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                  ),
                                ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Spacer(),
            GestureDetector(
              onTap: (){},
                child: Icon(Icons.cancel, color: Colors.brown,),
            ),

          ],
        ),
      ),
    );
  }
}