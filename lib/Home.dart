import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:recipe_app/DailyPage.dart';
import 'package:recipe_app/Database.dart';
import 'package:recipe_app/IngredientChecklist.dart';
import 'package:shared_preferences/shared_preferences.dart';


class HomeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String day = DateFormat('EEEE').format(DateTime.now());
    Future.delayed(Duration.zero, () async {
      DatabaseService.prefs = await SharedPreferences.getInstance();
      var lastCheck = DatabaseService.prefs!.getInt('lastCheck');
      if (lastCheck == null || day == 'Sunday'){
        var timestamp = DateTime.now().millisecondsSinceEpoch;
        bool pursue = lastCheck == null ? true: (timestamp - lastCheck) > 100000000;
        if (pursue){
          DatabaseService.generateWeeklyRecipes();
          var ings = DatabaseService.getConsolidatedWeeklyIngredients();
          ings.forEach((element) {
            DatabaseService.prefs!.setBool(element.item + '_ing', false);
          });
        }
      }
    });
    return Scaffold(
      appBar: AppBar(
        title: Text("Cooking App"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 100,),
              Icon(Icons.local_fire_department_sharp, color: Colors.deepOrangeAccent, size: 300,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => new IngredientChecklist(),
                  ),
                );
              }, child: Text("Ingredients Checklist"), style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.deepOrangeAccent, minimumSize: Size(400, 50)),),
              SizedBox(height: 20,),
              TextButton(onPressed: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => new DailyMeals(day: day,),
                  ),
                );
              }, child: Text("Todays Recipies"), style: TextButton.styleFrom(primary: Colors.white, backgroundColor: Colors.deepOrangeAccent, minimumSize: Size(400, 50)),),
            ],
          ),
        ),
      ),
    );
  }
}