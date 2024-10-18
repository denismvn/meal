import 'package:flutter/material.dart';
import 'package:meal/models/meal.dart';
import 'package:meal/widgets/page/meal_page.dart';


class ShortMeal extends StatelessWidget {
  final Meal meal;
  late final BuildContext context;
  
  ShortMeal({
    super.key,
    required this.meal}
  );

  @override
  Widget build(BuildContext context) {
    this.context = context;
    return InkWell(
      onTap: switchToMeal,
      borderRadius: BorderRadius.circular(10),
      child: Builder(
        builder: (context) {
          return Card(
            color: const Color.fromARGB(166, 55, 23, 94),
            shape: RoundedRectangleBorder(
              borderRadius:  BorderRadius.circular(15)
            ),
            margin: const EdgeInsets.all(10),
            elevation: 5,
            child: Column(
              children: [
                Stack(
                  children: [
                    ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)
                        ),
                        child: Image.network(
                          meal.imageUrl,
                          width: double.infinity,
                          height: 250,
                          fit: BoxFit.cover,),
                      ),
                    Positioned(
                      bottom: 10,
                      right: 0,
                      child: Container(
                        width: MediaQuery.of(context).size.width*2/3,
                        color: Colors.black54,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10, 
                          vertical: 5
                        ),
                        child: Text(
                          meal.title,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      )
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const Icon(
                            Icons.schedule,
                            color: Colors.white,
                            ),
                          const VerticalDivider(
                            width: 5,
                            color: Colors.transparent,
                          ),
                          Text(
                            "${meal.duration} мин",
                            style: const TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.work_outline_rounded,
                            color: Colors.white,
                            ),
                          const VerticalDivider(
                            width: 5,
                            color: Colors.transparent,
                          ),
                          Text(
                            meal.getComplexity,
                            style: const TextStyle(
                              color: Colors.white
                            )
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.attach_money_rounded,
                            color: Colors.white,
                            ),
                          const VerticalDivider(
                            width: 5,
                            color: Colors.transparent,
                          ),
                          Text(meal.getAffordability,
                            style: const TextStyle(
                              color: Colors.white
                            )
                          ),
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        }
      ),
    );
  }

  void switchToMeal() {
    Navigator.of(context).pushNamed(MealPage.route, arguments: meal);
  }
}
