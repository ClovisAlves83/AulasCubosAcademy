import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Column(
      children: [
        Expanded(
          child: Container(
            margin: EdgeInsets.all(50),
            child: Column(
              children: [
                InserirContainer(
                    cor: Colors.white, largura: 300, altura: 100, top: 30),
                InserirContainer(
                    cor: Colors.white, largura: 300, altura: 100, top: 30),
                InserirContainer(
                    cor: Colors.white, largura: 300, altura: 100, top: 30),
              ],
            ),
          ),
        ),
        Container(
          color: Colors.blue,
          height: 100,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InserirContainer(
                  cor: Colors.green, largura: 50, altura: 50, top: 0),
              InserirContainer(
                  cor: Colors.yellow, largura: 50, altura: 50, top: 0),
              InserirContainer(
                  cor: Colors.red, largura: 50, altura: 50, top: 0),
              // Container(
              //   color: Colors.green,
              //   height: 50,
              //   width: 50,
              // ),
              // Container(
              //   color: Colors.yellow,
              //   height: 50,
              //   width: 50,
              // ),
              // Container(
              //   color: Colors.red,
              //   height: 50,
              //   width: 50,
              // ),
            ],
          ),
        ),
      ],
    ));
  }
}

class InserirContainer extends StatelessWidget {
  final Color cor;
  final double largura;
  final double altura;
  final double top;

  InserirContainer({Key key, this.cor, this.largura, this.altura, this.top})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: top),
      color: cor,
      height: altura,
      width: largura,
    );
  }
}
