
import 'package:flutter/material.dart';
import 'package:meals_app/data/data%20source/category_data.dart';
import 'package:meals_app/models/category.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/presentation/pages/meal_info.dart';
import 'package:meals_app/presentation/pages/meals_pages.dart';
import 'package:meals_app/presentation/widgets/category_item.dart';
@override
class CategoriesPage extends StatelessWidget {
 const CategoriesPage({super.key, required this.pressFavoriteMeal, });
 final void Function(Meal meal)pressFavoriteMeal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.brown.shade900,
appBar: AppBar(
  leading: Icon(Icons.menu,color: Colors.white,),
  title: Text('Categories',style: TextStyle(color: Colors.white),),
  backgroundColor: Colors.brown.shade800,
),
      body:
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2
      , mainAxisSpacing: 20, crossAxisSpacing: 20),
          itemBuilder: (Context,i)=>
          CategoryItem(category: mealCategories[i], pressFavoriteMeal: pressFavoriteMeal,),
        itemCount: mealCategories.length,
          ),


    );
  }
}
//GestureDetector( onTap: ()=>Navigator.push(context,MaterialPageRoute(builder: (context)=>MealsPages(title:'',
//meals:[]))),
//child: