import 'package:favorite_superhero/models/superhero.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class ScopedSuperhero extends Model {
  List<Superhero> superheroes = [
    Superhero(name: "Thor"),
    Superhero(name: "Batman"),
    Superhero(name: "Black Widow"),
    Superhero(name: "Wonder Woman"),
    Superhero(name: "Captain America"),
    Superhero(name: "Iron Man"),
    Superhero(name: "Spider Man"),
    Superhero(name: "Hulk"),
    Superhero(name: "Captain Marvel"),
    Superhero(name: "The Flash"),
    Superhero(name: "Superman"),
  ];

  Superhero _fav = Superhero(name: "");
  Superhero get fav => _fav;

  void setFavorite(Superhero value) {
    _fav = value;
    notifyListeners();
  }

  static ScopedSuperhero of(BuildContext context) =>
      ScopedModel.of<ScopedSuperhero>(context);
}
