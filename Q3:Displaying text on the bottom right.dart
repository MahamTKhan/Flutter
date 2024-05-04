//MAHAM TARIQ KHAN
//SE-21004
import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage()));

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        // title: Text(),
      ),
      body: Stack(
        children: [
          Container(
            color: Colors.blue,
          ),
          Container(
            padding: EdgeInsets.all(8.0),
            alignment: Alignment.bottomRight,
            child: Text(
              'Bottom Right',
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
