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
    ),

    Fruta(
      'Abacate',
      'assets/abacate.jpg',
      'O abacate é o fruto comestível do abacateiro, uma árvore da família da Lauraceae nativa do México ou da América do Sul, hoje extensamente cultivada em regiões tropicais e subtropicais, inclusive nas Ilhas Canárias, na Ilha da Madeira e na Sicília.'
    ),

    Fruta(
      'Melancia',
      'assets/melancia.jpg',
      'A planta é rasteira e anual com folhas triangulares e trilobuladas e flores pequenas e amareladas, gerando um fruto arredondado ou alongado, de polpa vermelha, suculenta e doce, com alto teor de água (cerca de 92%) e diâmetro variável entre 25 e 140 cm. A casca é verde e lustrosa, apresentando estrias escuras.'
    ),

    Fruta(
      'Banana',
      'assets/banana.png',
      'Banana, pacoba ou pacova é uma pseudobaga da bananeira, uma planta herbácea vivaz acaule da família Musaceae. São cultivadas em 130 países. Originárias do sudeste da Ásia são atualmente cultivadas em praticamente todas as regiões tropicais do planeta.'
    ),

    Fruta(
      'Laranja',
      'assets/laranja.png',
      'A laranja é o fruto da laranjeira, uma árvore da família Rutaceae. É um fruto híbrido que teria surgido na Antiguidade a partir do cruzamento da cimboa com a tangerina.'
    ),

    Fruta(
      'Tangerina',
      'assets/tangerina.webp',
      'A tangerina, também mexerica, laranja-mimosa, mandarina, fuxiqueira, poncã, manjerica, laranja-cravo, mimosa, bergamota, clementina, é uma fruta cítrica de cor alaranjada e sabor adocicado. Parece ser uma antiga espécie selvagem, nativa da Ásia.'
    ),

    Fruta(
      'Uva',
      'assets/uva.webp',
      'A uva é o fruto da videira (Vitis sp.), uma planta da família das Vitaceae. É utilizada frequentemente para produzir sumo, doce (geleia), vinho e passas, podendo também ser consumida ao natural. As uvas crescem em cachos de 15 a 300 frutos, e podem ser vermelhas, pretas, azul-escuras, amarelas, verdes, laranjas e rosas.'
    ),
  ];


  Container _frutaContainer(String nome, String path, String sobre) {
    return Container(
      margin: EdgeInsets.only(top: 10, bottom: 10),
      child: Column(
        children: <Widget>[
          Container(
            margin: EdgeInsets.only(top: 5, bottom: 10),
            child: Text(nome, style: TextStyle(fontSize: 15, color: Colors.black87),)
          ),

          Container(
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
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
        padding: EdgeInsets.only(top: 20, bottom: 20),
        children:
          frutas.map((fruta) {
            return _frutaContainer(fruta.nome, fruta.imagem, fruta.sobre);
          }).toList(),
      )
    );

  }
}
