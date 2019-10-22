import 'package:flutter/material.dart';
import './sobre.dart';


class Home extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        child: Container(
          child: Icon(Icons.add),
        )
      ),
      appBar: AppBar(
        actions: <Widget>[

          Container(
            margin: EdgeInsets.only(right: 17),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, '/sobre');
              },
              child: Icon(Icons.announcement),
            ),
          )
        ],

        title: Text('MyUi', style: Theme.of(context).textTheme.headline),
        centerTitle: true,
      ),

      body: Container(
        padding: EdgeInsets.only(top: 15.0),
        child: ListView(
          children: <Widget>[
            Tela(nome: 'Responsividade', rota: '/responsividade',),
            Tela(nome: 'Frutas', rota: '/frutas'),
            Tela(nome: 'Animações',),
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
      height: 65,
      padding: EdgeInsets.only(left: 4, right: 4),
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
