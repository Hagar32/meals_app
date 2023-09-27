import 'package:meals_app/models/meal.dart';
import 'package:flutter/material.dart';
import 'package:meals_app/presentation/pages/meal_info.dart';
class MealItem extends StatelessWidget {
  final String  title;
  final String  Url;
  final int duration;
  final Complexity  complexity;
  final Affordability affordability;
  const MealItem( {super.key, required this.meal, required this.title, required this.Url, required this.duration, required this.complexity, required this.affordability, required this.pressFavoriteMeal});
final Meal meal;
  final void Function(Meal meal)pressFavoriteMeal;
String get complexityText{
  switch(complexity){
    case Complexity.simple: return ' Simple'; break;
    case Complexity.challenging: return ' Challenging'; break;
    case Complexity.hard: return ' Hard'; break;
    default : return 'Unkown'; break;
  }

}
  String get affordabilityText {
    switch (affordability) {
      case Affordability.affordable:
        return ' affordable';
        break;
      case Affordability.pricey:
        return ' pricey';
        break;
      case Affordability.luxurious:
        return ' luxurious';
        break;
      default :
        return 'Unkown';
        break;
    }
  }


  @override
  Widget build(BuildContext context) {
    return Card(
margin: EdgeInsets.all(8),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
        clipBehavior: Clip.hardEdge,
        child:
        Column(
           children: [
             GestureDetector( onTap: (){
               Navigator.push(context,MaterialPageRoute(builder: (context)=>MealInfo(meal: meal,pressFavoriteMeal:pressFavoriteMeal)));
             },
               child: Stack(
        children:[
        Image.network(meal.Url),
    Positioned(
     bottom: 0,
    left: 0,
    right: 0,
    child: Container(
    padding: EdgeInsets.symmetric(vertical: 6,horizontal: 40),
    color: Colors.black54,
    child: Column(

    children: [
    Text(meal.title,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
      Padding(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: [
                Icon(Icons.schedule,color: Colors.white,),
                SizedBox(width: 6,),
                Text('$duration min',style: TextStyle(color: Colors.white),),
              ],
            )  ,
            Row(
              children: [
                Icon(Icons.work,color: Colors.white,),
                SizedBox(width: 1,),
                Text('$complexityText ',style: TextStyle(color: Colors.white),),
              ],
            ) ,
            Row(
              children: [
                Icon(Icons.attach_money,color: Colors.white,),

                Text('$affordabilityText ',style: TextStyle(color: Colors.white),),
              ],
            ) ,
          ],
        ),
      )
],

    ),
    ),
    ),
    ]
    ),
             ),

       ]
       ),

    );
  }
}

