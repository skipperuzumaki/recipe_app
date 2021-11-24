import 'package:recepie_app/models.dart';

List<Recipe> allBreakfasts = new List.empty(growable: true);
List<Recipe> allLunches = new List.empty(growable: true);
List<Recipe> allDinners = new List.empty(growable: true);


void populateLists(){
  // TODO
  Ingredient t_i = new Ingredient(item: 'TEST_ING', quantity: 100, unit: 'grams');
  Ingredient t_j = new Ingredient(item: 'TEST_ING2', quantity: 2, unit: 'KG');
  Recipe test = new Recipe(name: "TEST", ingredients: [t_i, t_j], preparation: ['Prepline1', 'prepline2'], imageURL: "https://static.toiimg.com/thumb/56933159.cms?imgsize=686279&width=800&height=800");

  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allBreakfasts.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allLunches.add(test);
  allDinners.add(test);
  allDinners.add(test);
  allDinners.add(test);
  allDinners.add(test);
  allDinners.add(test);
  allDinners.add(test);
  allDinners.add(test);
  allDinners.add(test);
}