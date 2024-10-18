import 'package:flutter/material.dart';
import 'package:meal/data.dart';
import 'package:meal/models/meal.dart';

class MealPage extends StatefulWidget {
  static const String route = "/meal";
  const MealPage({super.key});

  @override
  State<MealPage> createState() => _MealPageState();
}

class _MealPageState extends State<MealPage> {
  Widget buildSectionTitle(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(
        vertical: 10
      ),
      child: Text(
        text,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold
        ),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey[800],
        borderRadius: BorderRadius.circular(10),
        border: Border.all(color: Colors.black87),
      ),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(10),
      height: 250,
      child: child,
    );
  }

  @override
  Widget build(BuildContext context) {
    Meal meal = ModalRoute.of(context)!.settings.arguments as Meal;

    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        iconTheme: const IconThemeData(color: Colors.white),
        title: Text(
          meal.title,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[900],
          child: Column(
            children: [ 
              SizedBox(
                width: double.infinity,
                child: Image.network(meal.imageUrl, fit: BoxFit.cover,),
              ),
              buildSectionTitle('Ингредиенты'),
              buildContainer(ListView.builder(
                itemCount: meal.ingredients.length,
                itemBuilder: (context, index) => Card(
                  surfaceTintColor: Colors.white,
                  color: Colors.purple[800],
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5, 
                      horizontal: 10,
                      ),
                    child: Text(
                      meal.ingredients[index], 
                      style: const TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.center,
                      ),
                    ),
                  )
                )
              ),
              buildSectionTitle('Этапы приготовления'),
              buildContainer(ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: (context, index) => 
                  Column(
                    children: [
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${index + 1}'),
                        ),
                        title: Text(
                          meal.steps[index],
                          style: const TextStyle(
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Divider(
                        color: Colors.grey[900],
                      ),
                    ],
                  )
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple[800],
        onPressed: () {
          setState(() { 
            if(MockData.getFavourite.contains(meal)){
              MockData.removeFromFavouriteMeals(meal);
                } else {MockData.addToFavouriteMeals(meal);
              }
            }
          );
        },
        child: Icon(
          (MockData.getFavourite.contains(meal) ? 
          Icons.favorite : 
          Icons.favorite_border),
          color: Colors.white,
        ),
      ),
    );
  }
}
