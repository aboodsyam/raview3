import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: GridView(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        scrollDirection: Axis.vertical,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          //mainAxisExtent: 170,
          childAspectRatio: 100 / 170
        ),
        children: [
          Container(color: Colors.blue.shade300),
          Container(color: Colors.pink.shade300),
          Container(color: Colors.orange.shade300),
          Container(color: Colors.yellow.shade300),
        ],
      ),
    );
  }
}
