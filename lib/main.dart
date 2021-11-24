import 'package:flutter/material.dart';
import 'package:recepie_app/Home.dart';
import 'package:recepie_app/Lists.dart';

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
