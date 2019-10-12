import 'package:flutter/material.dart';

class Coringa extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        title: Text('Coringa'),
        centerTitle: true,
      ),

      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.cyan[400],
        child: Icon(Icons.add)
      ),
    );
  }
}