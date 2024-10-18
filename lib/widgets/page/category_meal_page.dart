import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/models/categories.dart';
import 'package:meal/widgets/elements/short_meal.dart';

class CategoryMealPage extends StatefulWidget {
  const CategoryMealPage({super.key});

  static const String route = "/categoyMeals";

  @override
  State<CategoryMealPage> createState() => _CategoryMealPageState();
}

class _CategoryMealPageState extends State<CategoryMealPage> {
  late Category category;


  @override
  Widget build(BuildContext context) {
    final routeArgs = 
    ModalRoute.of(context)?.settings.arguments as Map<String, dynamic>; 
    category = routeArgs["category"];

    final meals =
      MockData.getMeals
      .where((meal) => meal.categories
      .contains(category.id))
      .toList();

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: const IconThemeData(
          color: Colors.white),
        title: Text(
          style: const TextStyle(
            color: Colors.white,
          ),
          category.name
        ),
      ),
        body: ListView.builder(
        itemCount: meals.length,
        itemBuilder: (context, index) {
          return ShortMeal(meal: meals[index]
          );
        }
      )
    );
  }
}