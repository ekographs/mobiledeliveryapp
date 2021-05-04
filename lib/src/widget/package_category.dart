import 'package:flutter/material.dart';
import 'package_card.dart';


//Data Importing from the categories
import '../data/category_data.dart';

// Models
import '../models/category_model.dart';

class PackageCategory extends StatelessWidget{

  final List<Category> _categories = categories;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _categories.length,
        itemBuilder: (BuildContext context, int index) {
          return PackageCard(
            categoryName: _categories[index].categoryName,
            imagePath: _categories[index].imagePath,
            numberOfItems: _categories[index].numberOfItems,
          );
        },
      ),
    );
  }
}