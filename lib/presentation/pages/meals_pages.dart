import 'package:flutter/material.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/presentation/widgets/meal_item.dart';

class MealsPages extends StatelessWidget {
  MealsPages({super.key, required this.title, required this.meals,  required this.pressFavoriteMeal,
  });
final String title;
final List<Meal> meals;
  final void Function(Meal meal)pressFavoriteMeal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.brown.shade900,
      appBar: AppBar(

        backgroundColor: Colors.brown.shade800,
        title:Text( title,style: TextStyle(color: Colors.white,fontSize: 25),),
      ),
      body: ListView(
        children: meals.map((meal) => MealItem(meal: meal ,title: meal.title, Url: meal.Url, duration: meal.duration, complexity:meal. complexity, affordability: meal.affordability
          ,pressFavoriteMeal: pressFavoriteMeal ),
      )
        .toList(),
      ),
    );
  }
}
