import 'package:flutter/material.dart';
import 'package:recipe_app/Home.dart';
import 'package:recipe_app/Lists.dart';

void main() {
  populateLists();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Directionality(
            textDirection: TextDirection.ltr,
            child: HomeApp()
        )
    );
  }
}
