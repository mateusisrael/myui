import 'package:flutter/material.dart';


class Responsivo extends StatelessWidget{
  
  Widget _containerAzul(var contesto, Color cor) {
    return Container(
      width: MediaQuery.of(contesto).size.width,
      height: 300,
      color: cor,
    );
  }

  @override
  Widget build(BuildContext context) {
    var screen_size = MediaQuery.of(context).size;
    print(screen_size.width);

    return Scaffold(
      appBar: AppBar(
        title: Text('MediaQuery', style: Theme.of(context).textTheme.headline),
        elevation: 0.0,
      ),

      body: Center(
        child: screen_size.width > 380 ?
        _containerAzul(context, Colors.blue) :
        _containerAzul(context, Colors.red),
      ),
    );


  }
}
