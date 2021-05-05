import 'package:flutter/material.dart';

class OrderCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: <Widget>[
          Container(
            height: 76.0,
            width: 46.0,
            child: Column(
              children: <Widget>[
                InkWell(
                  onTap:(){},
                    child:
                Icon(Icons.keyboard_arrow_up),
                ),
                Text("0"),
                InkWell(
                  onTap:(){},
                  child:
                  Icon(Icons.keyboard_arrow_down),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}