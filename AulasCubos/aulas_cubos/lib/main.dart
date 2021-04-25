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
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(children: [
            Column(
              children: [
                Container(
                    color: Colors.pink,
                    height: 200,
                    width: 185,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0)),
                Container(
                    color: Colors.orange,
                    height: 200,
                    width: 185,
                    margin: EdgeInsets.fromLTRB(20, 0, 0, 0))
              ],
            ),
            Column(
              children: [
                Container(
                    color: Colors.blueAccent,
                    height: 100,
                    width: 185,
                    margin: EdgeInsets.fromLTRB(0, 0, 20, 0)),
                Row(children: [
                  Container(color: Colors.green, height: 300, width: 92),
                  Container(
                      color: Colors.grey,
                      height: 300,
                      width: 92,
                      margin: EdgeInsets.fromLTRB(0, 0, 20, 0))
                ]),
              ],
            ),
          ]),
          Row(
            children: [
              Container(
                  color: Colors.red,
                  height: 100,
                  width: 300,
                  margin: EdgeInsets.fromLTRB(20, 0, 0, 0)),
              Container(
                  color: Colors.blue,
                  height: 100,
                  width: 70,
                  margin: EdgeInsets.fromLTRB(0, 0, 20, 0))
            ],
          ),
          Container(
            color: Colors.yellow,
            height: 100,
            width: 400,
            margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}
