import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyHomePage()));

class MyHomePage extends StatelessWidget {
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // title: Text(),
      ),
      body: Center(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 200,
          height: 200,
          padding: EdgeInsets.all(8.0),
          child: Text(
            'Hello,My name is maham and i am a software engineering student. I study at NED university of Engineering and technology',
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 24, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
