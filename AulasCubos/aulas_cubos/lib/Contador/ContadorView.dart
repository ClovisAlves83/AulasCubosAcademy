import 'package:flutter/material.dart';
import 'ContadorController.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(title: 'Meu Contador'),
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
  int contador = 0;

  // void incrementCounter() {
  //   setState(() {
  //     ContadorController().getCounter();
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
          centerTitle: true,
          title: new Text(widget.title, textAlign: TextAlign.center)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Contador :'),
            Text(
              // ContadorController().getCounter(),
              '$contador',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.clear),
            label: 'Zerar',
            backgroundColor: Colors.black,
          ),
          // BottomNavigationBarItem(
          //   icon: Icon(Icons.business),
          //   label: 'Business',
          //   backgroundColor: Colors.red,
          // ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add),
            label: 'Adicionar',
            backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.remove),
              label: 'Remover',
              backgroundColor: Colors.black),
        ],
        //currentIndex: _selectedIndex,
        //selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        backgroundColor: Colors.red,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      contador = ContadorController().incrementCounter(index, contador);
    });
  }
}
