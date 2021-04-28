import 'package:aulas_cubos/Contador/ContadorController.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = ContadorController();

  // void _incrementCounter() {
  //   setState(() {
  //     _counter++;
  //   });
  //}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Número :', style: TextStyle(fontSize: 25.0)),
            Text(
              controller.getRandom(),
              style: Theme.of(context).textTheme.headline4,
            ),
            Text('Resultado :', style: TextStyle(fontSize: 25.0)),
            Text(
              controller.getParImpar(),
              style: Theme.of(context).textTheme.headline4,
            ),
            ElevatedButton(
                child: const Text('Reset',
                    style: TextStyle(fontSize: 40.0, color: Colors.white)),
                // color: Colors.green,
                // splashColor: Colors.red,
                onPressed: () {
                  setState(() {
                    controller.pegarNumero();
                  });
                  // faz alguma coisa
                }),
          ],
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Gerar',
      //   child: Icon(Icons.refresh),
      // ),
    );
  }
}
