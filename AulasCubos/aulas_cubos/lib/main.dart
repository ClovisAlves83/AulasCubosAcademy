import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

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
  int _counter = 0;
  int _selectedIndex = 0;
  void _incrementCounter(int index) {
    setState(() {
      switch (index) {
        case 0:
          _counter = 0;
          break;
        case 1:
          _counter++;
          break;
        case 2:
          _counter--;
          break;
      }
    });
  }

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
              '$_counter',
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
        currentIndex: _selectedIndex,
        //selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
        backgroundColor: Colors.red,
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: _incrementCounter,
      //   tooltip: 'Adicionar',
      //   child: Icon(Icons.add),
      // ), // This trailing comma makes auto-formatting nicer // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  void _onItemTapped(int index) {
    _incrementCounter(index);
    // setState(() {
    //   _selectedIndex = index;
    // });
  }
}
