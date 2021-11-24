import 'dart:core';

class Ingredient{
  final String item;
  int quantity;
  final int quantityUnified = 0;
  final String unit;
  Ingredient({
    required this.item,
    required this.quantity,
    required this.unit
  });
  Ingredient.json(Map jsn):
      this.item = jsn['item'],
      this.quantity = jsn['quantity'],
      this.unit = jsn['unit'];

  Map toJson() => {
    'item': item,
    'quantity': quantity,
    'unit': unit
  };
}

class Recipe {
  final String name;
  final List<Ingredient> ingredients;
  final List<String> preparation;
  final String imageURL;

  const Recipe({
    required this.name,
    required this.ingredients,
    required this.preparation,
    required this.imageURL,
  });
  Recipe.json(Map jsn):
      this.name = jsn['name'],
      this.ingredients = List<Ingredient>.generate(jsn['ing'].length, (index) => Ingredient.json(jsn['ing'][index])),
      this.preparation = List<String>.generate(jsn['prep'].length, (index) => jsn['prep'][index]),
      this.imageURL = jsn['img'];

  Map toJson() => {
    'name': name,
    'ing': ingredients,
    'prep': preparation,
    'img': imageURL
  };
}