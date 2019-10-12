import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import './src/screens/home.dart';



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

      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
      }
    );
  }
}