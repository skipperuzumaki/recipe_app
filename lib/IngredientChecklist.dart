import 'package:flutter/material.dart';
import 'package:recepie_app/Database.dart';
import 'package:recepie_app/models.dart';

class IngredientChecklist extends StatefulWidget {
  @override
  _IngredientChecklistState createState() => _IngredientChecklistState();
}

class _IngredientChecklistState extends State<IngredientChecklist> {
  List<Ingredient> ings = DatabaseService.getConsolidatedWeeklyIngredients();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Weekly Ingredient Checklist"),
        backgroundColor: Colors.deepOrangeAccent,
      ),
      body: ListView.builder(
        itemCount: ings.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
          Ingredient item = ings[index];
          return Padding(
            padding: EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(item.item + " " + item.quantity.toString() + " " + item.unit),
                InkWell(
                  onTap: (){
                    // TODO : Check Item
                  },
                  child: DatabaseService.getIngredientStatus(item.item)? Icon(Icons.check_box) : Icon(Icons.check_box_outline_blank),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
