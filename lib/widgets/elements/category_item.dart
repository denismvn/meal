// ignore_for_file: sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:meal/models/categories.dart';
import 'package:meal/widgets/page/category_meal_page.dart';

class CategoryItem extends StatelessWidget{
  final Category category;

  const CategoryItem({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        selectCategory(context);
      },
      splashColor: category.color,
      borderRadius: BorderRadius.circular(15),
      child: Container(
        padding: const EdgeInsets.all(15),
        child: Text(
          category.name,
          style: const TextStyle(
            color: Colors.white, 
            fontWeight: FontWeight.bold),
          ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [category.color.withOpacity(0.7), 
            category.color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
  
  void selectCategory(BuildContext context) {
    Navigator.of(context).pushNamed(
      CategoryMealPage.route, 
      arguments: {"category" : category});
  }
}