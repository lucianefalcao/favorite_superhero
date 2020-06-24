import 'package:favorite_superhero/models/scoped_superhero.dart';
import 'package:favorite_superhero/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<ScopedSuperhero>(
      model: ScopedSuperhero(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Favorite Superhero',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Home(),
      ),
    );
  }
}
