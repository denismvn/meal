import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/widgets/elements/category_item.dart';

class CategoryPage extends StatelessWidget{
  const CategoryPage({super.key}
  );
  

  @override
  Widget build(BuildContext context) {
 return Scaffold(
  backgroundColor: Colors.grey[900],
    // appBar: AppBar(
    //   backgroundColor: Colors.grey[850],
    //   // backgroundColor: Colors.pink[400],
    //   title: const Text(
    //     "Категории",  
    //     style:  TextStyle(
    //     color: Colors.white
    //     ),
    //   ),
    // ),
    body: GridView(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 3/2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        ),
      children: MockData.getCategories
        .map((category) => 
          CategoryItem(
          category: category,
          )
        ).toList(),
      ),
    );
  }
}