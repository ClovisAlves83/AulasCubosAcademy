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
                Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Colors.white,
                  height: 100,
                  width: 300,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Colors.white,
                  height: 100,
                  width: 300,
                ),
                Container(
                  margin: EdgeInsets.only(top: 30),
                  color: Colors.white,
                  height: 100,
                  width: 300,
                ),
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
              Container(
                color: Colors.green,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.yellow,
                height: 50,
                width: 50,
              ),
              Container(
                color: Colors.red,
                height: 50,
                width: 50,
              ),
            ],
          ),
        ),
      ],
    ));
  }
}
