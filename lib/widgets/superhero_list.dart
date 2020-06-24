import 'package:favorite_superhero/screens/message.dart';
import 'package:flutter/material.dart';
import 'package:favorite_superhero/models/scoped_superhero.dart';
import 'package:scoped_model/scoped_model.dart';

class SuperheroList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<ScopedSuperhero>(
      builder: (context, child, model) => ListView.builder(
        physics: BouncingScrollPhysics(),
        shrinkWrap: true,
        itemCount: model.superheroes.length,
        itemBuilder: (BuildContext context, int index) {
          return RadioListTile(
            title: Text("${model.superheroes[index].name}"),
            value: model.superheroes[index],
            groupValue: model.fav,
            onChanged: (value) {
              model.setFavorite(value);
              Navigator.push(context, MaterialPageRoute(builder: (context) => Message()));
            },
          );
        },
      ),
    );
  }
}