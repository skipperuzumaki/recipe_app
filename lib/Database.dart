import 'dart:convert';

import 'package:recipe_app/Lists.dart';
import 'package:recipe_app/models.dart';
import 'package:shared_preferences/shared_preferences.dart';

List<T> getNRandomElement<T>(List<T> list, int n) => (list.toList()..shuffle()).take(n).toList();

class DatabaseService{
  static SharedPreferences? prefs;
  static List<Ingredient> getConsolidatedWeeklyIngredients(){
    List<Recipe> recipes = getConsolidatedWeeklyRecipes();
    Map<String, Ingredient> ings = new Map<String, Ingredient>();
    recipes.forEach((element) {
      element.ingredients.forEach((ing) {
        if (ings.containsKey(ing.item)){
          ings[ing.item]!.quantity += ing.quantity;
        }
        else{
          ings[ing.item] = ing;
        }
      });
    });
    return ings.values.toList();
  }
  static Recipe getIndividualRecipe(String day, String meal){
    return Recipe.json(json.decode(prefs!.getString(meal + '_' + day)!));
  }
  static List<Recipe> getConsolidatedWeeklyRecipes(){
    var days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    List<Recipe> weekly = new List<Recipe>.empty(growable: true);
    for (int i = 0; i < 7; i++){
      weekly.add(getIndividualRecipe(days[i], 'Breakfast'));
      weekly.add(getIndividualRecipe(days[i], 'Lunch'));
      weekly.add(getIndividualRecipe(days[i], 'Dinner'));
    }
    return weekly;
  }
  static bool getIngredientStatus(String ing){
    return prefs!.getBool(ing + '_ing')!;
  }
  static void toggleIngredientStatus(String ing){
    prefs!.setBool(ing + '_ing', !(prefs!.getBool(ing + '_ing')!));
  }
  static void generateWeeklyRecipes(){
    List<Recipe> breakfasts = getNRandomElement(allBreakfasts, 7);
    List<Recipe> lunches = getNRandomElement(allLunches, 7);
    List<Recipe> dinners = getNRandomElement(allDinners, 7);
    var days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday'];
    for (int i = 0; i < 7; i++){
      prefs!.setString("Breakfast_" + days[i], json.encode(breakfasts[i]));
      prefs!.setString("Lunch_" + days[i], json.encode(lunches[i]));
      prefs!.setString("Dinner_" + days[i], json.encode(dinners[i]));
    }
  }
}