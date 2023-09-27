import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/presentation/pages/categoriesPage.dart';
import 'package:meals_app/presentation/pages/meals_pages.dart';
class TabsPage extends StatefulWidget {

  const TabsPage({super.key});

  @override
  State<TabsPage> createState() => _TabsPageState();

}

class _TabsPageState extends State<TabsPage> {
  int _selectedPageIndex=0;
  final List<Meal> _favoriteMeal=[];
  _showInfoMessage(String message){
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(

          backgroundColor: Colors.white,
      content: Text(message,style: TextStyle(color: Colors.black),),));
  }
  void _favoriteStatus(Meal meal){
    final isExisting = _favoriteMeal.contains(meal);
   if(isExisting){
      setState(() {
        _favoriteMeal.remove(meal);
      });
_showInfoMessage(' Meal is no longer a favorite ');

    }
    else{
      setState(() {
        _favoriteMeal.add(meal);

      });
_showInfoMessage('Marked as favorite!');
    }


  }


  void _selectPage(int index){
    setState(() {

      _selectedPageIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
     Widget activePage =  CategoriesPage(pressFavoriteMeal: _favoriteStatus,);
   //  var activePageTitle = ' Categories';
     if(_selectedPageIndex==1){
       activePage = MealsPages(title: 'Favorities', meals: _favoriteMeal,
         pressFavoriteMeal: _favoriteStatus
         ) ;
      // activePageTitle = 'Favorities';
     }
    return Scaffold(

      backgroundColor: Colors.brown.shade900,
      appBar: AppBar(
        //title:  Text(activePageTitle,style: TextStyle(color: Colors.white),),

        backgroundColor: Colors.brown.shade800,
      ),
      body: activePage,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
currentIndex: _selectedPageIndex,
unselectedItemColor: Colors.white,
        fixedColor: Colors.white,




        backgroundColor: Colors.brown.shade800,
        items: [

        BottomNavigationBarItem(icon:Icon (Icons.set_meal,color: Colors.white,),label: 'Categories',

    ),
      BottomNavigationBarItem(icon:Icon (Icons.favorite,color: Colors.white,),label: 'Favorite',),

        ],
      ),
    );
  }
}
