import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(home: MyHomePage()));

class MyHomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(),
      ),
      body: Center(
        child: Text(
          'Hello, world!',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
      ),
    );
  }
}
