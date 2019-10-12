import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;

void main() {
  // Debugar no Linux
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyUi',
      home: Scaffold(
        appBar: AppBar(
          title: Text('MyUi'),
        ),

        body: Container(
          child: Center(
            child: Text('Hello')
          ),
        ),
      ),
    );
  }
}