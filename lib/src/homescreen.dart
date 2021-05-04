import 'dart:html';

import 'package:deliverysystem/src/widget/package_card.dart';
import 'package:deliverysystem/src/widget/package_category.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'widget/home_top_info.dart';
import 'widget/package_category.dart';
import 'widget/search_field.dart';
import 'widget/processed_ordered.dart';

//Database Temp
import 'data/parcel_data.dart';
import 'models/parcel_model.dart';

class HomeScreen extends StatefulWidget{
  @override
  _HomeScreenState createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen>{

  List<Parcel> _parcels = parcels;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.only(top: 70, left: 20, right: 20),
        children: <Widget>[
          HomeTopInfo(),
          PackageCategory(),
          SizedBox(height: 25.0,),
          SearchField(),
          SizedBox(height: 25.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                  "Recent Orders Delivered",
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              GestureDetector(
                onTap: (){},
                child: Text(
                    "Display all",
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.blueAccent
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0,),
          Column(
            children: _parcels.map(_buildPackageItems).toList(),
          ),
        ],
      ),
    );

  }

  Widget _buildPackageItems(Parcel parcel){
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: ProcessedOrders(
        id: parcel.id,
        name: parcel.name,
        imagePath: parcel.imagePath,
        category: parcel.category,
        discount: parcel.discount,
        price: parcel.price,
        ratings: parcel.ratings,
      ),
    );
  }
}