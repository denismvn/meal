import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/widgets/elements/short_meal.dart';

class FavouriteMeals extends StatefulWidget {
  const FavouriteMeals({super.key});

  @override
  State<FavouriteMeals> createState() => _FavouriteMealsState();
}

class _FavouriteMealsState extends State<FavouriteMeals> {
  @override
  Widget build(BuildContext context) {
    if (MockData.getFavourite.isEmpty){
      return Container(
        color: Colors.grey[900],
        child: const Center(
        child: Text(
          "Нет избранных блюд",
          style: TextStyle(
            color: Colors.white,
          ),
          ),
        ),
      );
    }
    else {return Container(
      color: Colors.grey[900],
      child: ListView.builder(
        itemCount: MockData.getFavourite.length,
        itemBuilder: (context, index) => 
          ShortMeal(meal: MockData.getFavourite[index],
          )
        ),
    )
    ;}
  }
}