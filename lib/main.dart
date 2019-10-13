import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart'
    show debugDefaultTargetPlatformOverride;
import 'package:myui/src/screens/theme.dart';
import './src/screens/home.dart';
import './src/screens/coringa.dart';
import './src/screens/sobre.dart';



void main() {
  // Debugar no Linux
  debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;
  runApp(MyApp());

}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myappTheme(),
      debugShowCheckedModeBanner: false,
      title: 'MyUi',

      initialRoute: '/',
      routes: {
        '/': (context) => Home(),
        '/coringa': (context) => Coringa(),
        '/sobre': (context) => Sobre()
      }
    );
  }
}




