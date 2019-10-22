import 'package:flutter/material.dart';



class Fruta{
  String nome;
  String imagem;
  String sobre;
  Fruta(this.nome, this.imagem, this.sobre);
}

class Frutas extends StatelessWidget{
  // static final List<String> frutas = ['Morango', 'Abacaxi', 'Abacate', 'Melancia', 'Banana', 'Laranja', 'Tangerina', 'Uva'];
  List<Fruta> frutas = [
    Fruta(
      'Morango',
      'assets/morango.jpg',
      'Morango é considerado, na linguagem vulgar, como o fruto vermelho do morangueiro, da família das rosáceas. No entanto, em termos científicos não se pode considerar um fruto já que é constituído pelo receptáculo da flor original, em volta do qual se dispõem os frutos.'
    ),

    Fruta(
      'Abacaxi',
      'assets/abacaxi.jpg',
      'O abacaxi, conhecido em Portugal como ananás, é uma infrutescência tropical produzida pela planta de mesmo nome, caracterizada como uma planta monocotiledônea da família das bromeliáceas da subfamília Bromelioideae. É um símbolo das regiões tropicais e subtropicais.'
    )
  ];


  Container _frutaContainer(String nome, String path, String sobre) {
    return Container(
      margin: EdgeInsets.only(top: 20, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(5),
            child: Text(nome, style: TextStyle(fontSize: 15, color: Colors.black87),)
          ),

          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.pink,
            ),
            child: Image.asset(path)
          ),
          
          Container(
            margin: EdgeInsets.only(top: 10),
            width: 300,
            child: Column(
              children: <Widget>[
                Text(sobre, style: TextStyle(fontSize: 15, color: Colors.black54), maxLines: 20,)
              ],
            )

          ),
          
        ],
      ),
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Frutas'),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      body: ListView(
        children:
          frutas.map((fruta) {
            return _frutaContainer(fruta.nome, fruta.imagem, fruta.sobre);
          }).toList(),
      
      )
    );

  }
}
