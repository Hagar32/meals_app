import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';

class MealInfo extends StatelessWidget {
  const MealInfo({super.key, required this.meal, required this.pressFavoriteMeal,});
final Meal meal;
final void Function(Meal meal)pressFavoriteMeal;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.brown.shade800,
        title: Text(meal.title ,maxLines: 1, overflow: TextOverflow.ellipsis,style: TextStyle(color: Colors.white
        ),),

        actions: [
          IconButton(onPressed: (){
            pressFavoriteMeal(meal);
          }, icon: Icon(Icons.favorite,color: Colors.white,)),
        ],
      ),
      backgroundColor: Colors.brown.shade900,
      body: ListView(
          children: [
          Image.network(meal.Url),
Center(child: Column(
  children:[
    SizedBox(height: 16,width: 16,),
  Text('Ingredients',style: TextStyle(color: Colors.deepOrange.shade300,fontWeight: FontWeight.bold,fontSize: 25),),
    SizedBox(height: 16,),
    Text('4 chicken Breasts'
        '\n 1 onion '
        '\n 2 cloves of Galic'
        '\n 1 piece of Ginger '
        '\n 4 Tablespoons Almonds '
        '1 Teaspoon Cayenne pepper'
        ' 500ml cocount Milk',textAlign:
    TextAlign.center,style: TextStyle(fontSize: 20,color: Colors.white),),
    SizedBox(height: 18,),
    Text(' Steps',style: TextStyle(color: Colors.deepOrange.shade300,fontWeight: FontWeight.bold, fontSize: 25),),
    SizedBox(height: 16,),
    Text('slice and fry the chicken breast'
        '\n \n process onion,garic and ginger into pasta and saute everything '
        '\n \n  Add spices and stir fry', textAlign: TextAlign.center
,style: TextStyle(fontSize: 20,color: Colors.white),),
  ]
),
),
]
    ),
    );
  }
}
