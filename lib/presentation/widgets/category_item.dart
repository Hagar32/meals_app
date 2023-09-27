
import 'package:flutter/material.dart';
import 'package:meals_app/data/data%20source/meal_data.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/presentation/pages/meal_info.dart';
import 'package:meals_app/presentation/pages/meals_pages.dart';

import '../../models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category, required this.pressFavoriteMeal});
  final Category category;
  final void Function(Meal meal)pressFavoriteMeal;
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.all(12),

        child:  GestureDetector(
          onTap: () {
 final List<Meal> filteredItem= catMeals.where((meal) => meal.categories.contains(category.id)).toList();
            Navigator.push(context, MaterialPageRoute(builder: (context) =>
            MealsPages(title: category.name,
            meals:filteredItem, pressFavoriteMeal: pressFavoriteMeal,
            )));
          },
            child: Container(

            decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(20),
            color: category.color,
            ),
            padding: EdgeInsets.all(18.0),
            child:Text(category.name,style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold
            )

            ),
            ),
          
    ),
    );
  }
}
