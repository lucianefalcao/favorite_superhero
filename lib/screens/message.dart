import 'package:flutter/material.dart';
import 'package:favorite_superhero/models/scoped_superhero.dart';
import 'package:scoped_model/scoped_model.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScopedSuperhero scopedSuperhero = ScopedModel.of<ScopedSuperhero>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("My favorite superhero is..."),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          "My favorite superhero is ${scopedSuperhero.fav.name}",
          style: TextStyle(
            color: Colors.blue,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
