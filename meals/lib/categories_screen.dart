import 'package:flutter/material.dart';
import './dummy_data.dart';
import './category_item.dart';
class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Meal Planner',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontSize: 25,
        ),
        ),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(20),
        children: DUMMY_CATEGORIES.map((catData)=> CategoryItem(
          catData.title,
          catData.color,
        )).toList(),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
      ),
    );
  }
}
