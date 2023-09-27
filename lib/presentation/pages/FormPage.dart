import 'package:flutter/material.dart';
import 'package:meals_app/models/meal.dart';
import 'package:meals_app/presentation/pages/categoriesPage.dart';

@override
class FormPage extends StatelessWidget {
  FormPage({super.key, required this.pressFavoriteMeal});
  final void Function(Meal meal)pressFavoriteMeal;
  GlobalKey<FormState>state=GlobalKey();
TextEditingController name =TextEditingController();
TextEditingController password =TextEditingController();
TextEditingController email = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign in Page',style: TextStyle(color: Colors.white),),
        centerTitle: true,
        backgroundColor: Colors.brown.shade800,
      ),
     body: Form(
       key: state,
       child: Column(
  children: [
    SizedBox(width: 16,height: 16,),
    TextFormField(
      validator: (value){
        if(value!.isEmpty){
          return 'this field can not be empty';
        }
        return null;
      },
controller: name,
      decoration: InputDecoration(
        hintText: '  Please Enter your name ',

      ),
    ),
    SizedBox(width: 16,height: 16,),
    TextFormField(
      validator: ( value){
        if(value!.isEmpty && !value.contains('@') && !value.endsWith('.com')&& value.length<5){
          return ' invalid Email';

       }
        return null;
      },
      controller: email,
      decoration: InputDecoration(
        hintText: '   Ente Email',
      ),
    ),
       SizedBox(width: 16,height: 16,),
       TextFormField(
         validator: (value){
           if(value!.isEmpty && value.length<6){
             return '    invalid Password length';

           }
           return null;
         },
         controller: password,
         decoration: InputDecoration(
           hintText: '    Enter  your Password',
         ),
       ),
SizedBox(width: 16,height: 16,),
MaterialButton(
    onPressed: (){
  if(state.currentState!.validate()){
    Navigator.pushNamed(context, '/tabs');
    //Navigator.push(context, MaterialPageRoute(builder: (context)=> CategoriesPage(pressFavoriteMeal: pressFavoriteMeal)));
  }

  state.currentState!.validate();

},
  textColor: Colors.white,
  color: Colors.redAccent,

  child: Text('Sign in'),
),
  ],
       ),
     ),
    );
  }
}
