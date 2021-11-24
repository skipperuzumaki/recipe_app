import 'package:recipe_app/models.dart';

List<Recipe> allBreakfasts = new List.empty(growable: true);
List<Recipe> allLunches = new List.empty(growable: true);
List<Recipe> allDinners = new List.empty(growable: true);


void populateLists(){
  allDinners.add(
      Recipe(
        name: 'Protein Pizza',
        ingredients: [
          Ingredient(item: 'Bread Flour', quantity: 425, unit: 'g'),
          Ingredient(item: 'White Rice Flour', quantity: 50, unit: 'g'),
          Ingredient(item: 'Soy Flour', quantity: 25, unit: 'g'),
          Ingredient(item: 'Water', quantity: 400, unit: 'g'),
          Ingredient(item: 'Instant Yeast', quantity: 1, unit: 'pkt'),
          Ingredient(item: 'Kosher Salt', quantity: 10, unit: 'g'),
          Ingredient(item: 'Olive Oil', quantity: 10, unit: 'g'),
        ],
        preparation: [
          'Add the flours, water, instant yeast, salt, and olive oil to the bowl of a stand mixer fitted with a dough hook. Mix the ingredients until a homogeneous dough forms, about 1-2 minutes. Continue kneading the dough for 10-15 minutes or until it passes the ‘window-pane’ test. **If kneading by hand, mix the dough until homogeneous, then cover the bowl with plastic wrap and let rest for 15 minutes. Once rested, continue kneading until the dough passes the ‘window-pane’ test.',
          'Transfer the dough to a lightly oiled container about 3-4 times the size of the dough. Cover the container with a lid or plastic wrap and refrigerate for 24 hours or up to 5 days.',
          'Divide the dough into 5 equal pieces, 180 grams each. Form the dough into taught rounds for evening proofing. If necessary, dust your workstation with more white rice flour to prevent sticking. Cover the dough balls and let proof until doubled in size, about 2 hours.',
          'Preheat the oven to 500°F about 1 hour into the proofing process. Add baking steel or tile to the top rack. Alternatively, preheat a pizza oven to 600 °F.',
          'Once the dough is proofed, gently spread the dough into an oval shape about 11-12 inches long.',
          'Transfer the shaped pinsa into a pizza peel and then, add the toppings of your choice.',
          'Place the pinsa into the preheat oven and bake for 3-6 minutes or until crisp.',
          'Let the pinsa cool slightly before slicing.',
        ],
        imageURL: 'https://images.squarespace-cdn.com/content/v1/59d40133017db2fd8a60b3fe/1633456611944-24C5MYWI8CD5LEWROWMP/Screen+Shot+2021-10-05+at+12.56.00+PM.png?format=2500w',
      )
  );
  allBreakfasts.add(
      Recipe(
        name: 'Protein Pizza',
        ingredients: [
          Ingredient(item: 'Bread Flour', quantity: 425, unit: 'g'),
          Ingredient(item: 'White Rice Flour', quantity: 50, unit: 'g'),
          Ingredient(item: 'Soy Flour', quantity: 25, unit: 'g'),
          Ingredient(item: 'Water', quantity: 400, unit: 'g'),
          Ingredient(item: 'Instant Yeast', quantity: 1, unit: 'pkt'),
          Ingredient(item: 'Kosher Salt', quantity: 10, unit: 'g'),
          Ingredient(item: 'Olive Oil', quantity: 10, unit: 'g'),
        ],
        preparation: [
          'Add the flours, water, instant yeast, salt, and olive oil to the bowl of a stand mixer fitted with a dough hook. Mix the ingredients until a homogeneous dough forms, about 1-2 minutes. Continue kneading the dough for 10-15 minutes or until it passes the ‘window-pane’ test. **If kneading by hand, mix the dough until homogeneous, then cover the bowl with plastic wrap and let rest for 15 minutes. Once rested, continue kneading until the dough passes the ‘window-pane’ test.',
          'Transfer the dough to a lightly oiled container about 3-4 times the size of the dough. Cover the container with a lid or plastic wrap and refrigerate for 24 hours or up to 5 days.',
          'Divide the dough into 5 equal pieces, 180 grams each. Form the dough into taught rounds for evening proofing. If necessary, dust your workstation with more white rice flour to prevent sticking. Cover the dough balls and let proof until doubled in size, about 2 hours.',
          'Preheat the oven to 500°F about 1 hour into the proofing process. Add baking steel or tile to the top rack. Alternatively, preheat a pizza oven to 600 °F.',
          'Once the dough is proofed, gently spread the dough into an oval shape about 11-12 inches long.',
          'Transfer the shaped pinsa into a pizza peel and then, add the toppings of your choice.',
          'Place the pinsa into the preheat oven and bake for 3-6 minutes or until crisp.',
          'Let the pinsa cool slightly before slicing.',
        ],
        imageURL: 'https://images.squarespace-cdn.com/content/v1/59d40133017db2fd8a60b3fe/1633456611944-24C5MYWI8CD5LEWROWMP/Screen+Shot+2021-10-05+at+12.56.00+PM.png?format=2500w',
      )
  );
  allDinners.add(
      Recipe(
        name: 'Protein Pizza',
        ingredients: [
          Ingredient(item: 'Bread Flour', quantity: 425, unit: 'g'),
          Ingredient(item: 'White Rice Flour', quantity: 50, unit: 'g'),
          Ingredient(item: 'Soy Flour', quantity: 25, unit: 'g'),
          Ingredient(item: 'Water', quantity: 400, unit: 'g'),
          Ingredient(item: 'Instant Yeast', quantity: 1, unit: 'pkt'),
          Ingredient(item: 'Kosher Salt', quantity: 10, unit: 'g'),
          Ingredient(item: 'Olive Oil', quantity: 10, unit: 'g'),
        ],
        preparation: [
          'Add the flours, water, instant yeast, salt, and olive oil to the bowl of a stand mixer fitted with a dough hook. Mix the ingredients until a homogeneous dough forms, about 1-2 minutes. Continue kneading the dough for 10-15 minutes or until it passes the ‘window-pane’ test. **If kneading by hand, mix the dough until homogeneous, then cover the bowl with plastic wrap and let rest for 15 minutes. Once rested, continue kneading until the dough passes the ‘window-pane’ test.',
          'Transfer the dough to a lightly oiled container about 3-4 times the size of the dough. Cover the container with a lid or plastic wrap and refrigerate for 24 hours or up to 5 days.',
          'Divide the dough into 5 equal pieces, 180 grams each. Form the dough into taught rounds for evening proofing. If necessary, dust your workstation with more white rice flour to prevent sticking. Cover the dough balls and let proof until doubled in size, about 2 hours.',
          'Preheat the oven to 500°F about 1 hour into the proofing process. Add baking steel or tile to the top rack. Alternatively, preheat a pizza oven to 600 °F.',
          'Once the dough is proofed, gently spread the dough into an oval shape about 11-12 inches long.',
          'Transfer the shaped pinsa into a pizza peel and then, add the toppings of your choice.',
          'Place the pinsa into the preheat oven and bake for 3-6 minutes or until crisp.',
          'Let the pinsa cool slightly before slicing.',
        ],
        imageURL: 'https://images.squarespace-cdn.com/content/v1/59d40133017db2fd8a60b3fe/1633456611944-24C5MYWI8CD5LEWROWMP/Screen+Shot+2021-10-05+at+12.56.00+PM.png?format=2500w',
      )
  );
}