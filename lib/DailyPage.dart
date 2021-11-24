import 'package:flutter/material.dart';
import 'package:recipe_app/Database.dart';
import 'package:recipe_app/RecipeCard.dart';
import 'package:recipe_app/models.dart';

class DailyMeals extends StatelessWidget {
  String day;
  Recipe breakfast;
  Recipe lunch;
  Recipe dinner;
  @override
  DailyMeals({required this.day}):
    breakfast = DatabaseService.getIndividualRecipe(day, 'Breakfast'),
    lunch = DatabaseService.getIndividualRecipe(day, 'Lunch'),
    dinner = DatabaseService.getIndividualRecipe(day, 'Dinner');
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Daily Meals " + day),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: Text(
                    "Breakfast",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                RecipeCard(recipe: breakfast),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: Text(
                    "Lunch",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                RecipeCard(recipe: lunch),
                Padding(
                  padding: EdgeInsets.only(
                    top: 10,
                    left: 10,
                  ),
                  child: Text(
                    "Dinner",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 24.0,
                        fontWeight: FontWeight.w700),
                  ),
                ),
                RecipeCard(recipe: dinner),
              ],
            ),
          )
      ),
    );
  }
}
