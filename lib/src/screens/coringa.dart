import 'package:flutter/material.dart';


class Coringa extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: Theme.of(context).appBarTheme.iconTheme,
        title: Text('Coringa', style: Theme.of(context).textTheme.headline,),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add)
      ),
    );
  }
}