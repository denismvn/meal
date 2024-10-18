import 'package:flutter/material.dart';
import 'package:meal/widgets/page/category_meal_page.dart';
import 'package:meal/widgets/page/filter_page.dart';
import 'package:meal/widgets/page/meal_page.dart';
import 'package:meal/widgets/page/tab_page.dart';

void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: "/",
      routes: {
        "/" : (context) => const TabPage(),
        CategoryMealPage.route: (context) => const CategoryMealPage(),
        FilterPage.route: (context) => const FilterPage(),
        MealPage.route: (context) => const MealPage(),
        
      },
    );
  }
}