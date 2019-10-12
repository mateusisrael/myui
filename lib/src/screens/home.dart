import 'package:flutter/material.dart';


class Home extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan[400],
        title: Text('MyUi', style: TextStyle(),),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.only(top: 15.0),
        child: ListView(
          children: <Widget>[
            Tela(nome: 'Coringa', rota: '/coringa',),
            Tela(nome: 'Guardar dados'),
            Tela(nome: 'Animações',),
            Tela(),
            Tela(),

          ]
        ),
      )
    );
  }
}


class Tela extends StatelessWidget{
  String nome;
  String rota;
  Icon sobre;

  Tela({this.nome, this.rota});

  String _setName() {
    return nome != null ? nome : 'Nome da tela';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 4, right: 4, bottom: 2),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, rota);
        },

        child: Card(
          elevation: 1.0,
          child: (
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                children: <Widget>[
                  Text(_setName(), style: TextStyle(color: Colors.black54),)
                ],
              )
            )
          )
        )
      )     

    );
  }
}